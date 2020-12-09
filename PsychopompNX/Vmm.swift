//
//  Vmm.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/3/20.
//

import Foundation
import Hypervisor

enum VmmError: Error {
    case vmCreationFailed
    case vmDestructionFailed
    case vmMappingFailed
    case vmUnmappingFailed
    case unmappedVirtualMemory
    case unmappedPhysicalMemory
    case vmUnknownError
    case vmMutuallyExclusivePermissions
}

func hv_guard(_ ret: hv_return_t, _ onError: () throws -> Void) rethrows {
    if ret != HV_SUCCESS {
        try onError()
    }
}

func hv_guard(_ ret: hv_return_t) throws {
    if ret != HV_SUCCESS {
        throw VmmError.vmUnknownError
    }
}

struct AccessFlags: OptionSet {
    let rawValue: Int

    static let el0Read = AccessFlags(rawValue: 1)
    static let el0Write = AccessFlags(rawValue: 2)
    static let el0Execute = AccessFlags(rawValue: 4)
    static let el1Read = AccessFlags(rawValue: 8)
    static let el1Write = AccessFlags(rawValue: 16)
    static let el1Execute = AccessFlags(rawValue: 32)
    static let normal : AccessFlags = [el0Read, el0Write, el0Execute, el1Read, el1Write]
}

class Vmm {
    static var instance : Vmm? = nil
    
    let vbar : uint64 = 0x100000
    let chunkSize : UInt64 = 0x1000000
    var physTop : UInt64 = 0x10000000
    var freeTables = [UInt64]()
    var physMappings = [UnsafeMutableRawPointer?](repeating: nil, count: 4096)
    var virtMappings = [[[UInt64?]?]?](repeating: nil, count: 512)
    var pageTableBase = GuestPhysicalPointer<UInt64>(0)
    var pageTables = [(GuestPhysicalPointer<UInt64>, [(GuestPhysicalPointer<UInt64>, [UInt64?])?])?](repeating: nil, count: 512)
    
    init() throws {
        Vmm.instance = self
        
        try hv_guard(hv_vm_create(nil)) {
            throw VmmError.vmCreationFailed
        }
        
        pageTableBase = GuestPhysicalPointer<UInt64>(try allocTable())
        
        let (paddr, pmem) = try mapChunk()
        try mapVirtualPage(physAddr: paddr, virtAddr: vbar, accessFlags: [.el1Execute, .el1Read])
        let table = pmem.bindMemory(to: UInt32.self, capacity: 16 * 32)
        for i in 0..<16 {
            for j in 0..<32 {
                table[i * 32 + j] = UInt32(0xd4200000 | (i << 5))
            }
        }
    }
    
    deinit {
        try! hv_guard(hv_vm_destroy()) {
            throw VmmError.vmDestructionFailed
        }
    }
    
    func mapChunk(_ count: Int = 1) throws -> (uint64, UnsafeMutableRawPointer) {
        let pmem = UnsafeMutableRawPointer.allocate(byteCount: Int(chunkSize) * count, alignment: 0x4000)
        let addr = physTop
        physTop += chunkSize * UInt64(count)
        try hv_guard(hv_vm_map(pmem, addr, Int(chunkSize) * count, hv_memory_flags_t(HV_MEMORY_EXEC | HV_MEMORY_WRITE | HV_MEMORY_READ))) {
            throw VmmError.vmMappingFailed
        }
        for i in 0..<count {
            physMappings[Int(addr >> 24) + i] = pmem
        }
        return (addr, pmem)
    }
    
    func unmap(address: uint64, size: uint64) throws {
        try hv_guard(hv_vm_unmap(address, Int(size))) {
            throw VmmError.vmUnmappingFailed
        }
    }
    
    func allocTable() throws -> uint64 {
        if freeTables.isEmpty {
            let (addr, _) = try mapChunk()
            let tableSize : UInt64 = 512 * 8
            for i in 0..<(chunkSize / tableSize) {
                freeTables.append(addr + i * tableSize)
            }
        }
        return freeTables.removeFirst()
    }
    
    func freeTable(_ address: uint64) {
        freeTables.append(address)
    }
    
    func mapVirtualPage(physAddr: uint64, virtAddr: uint64, accessFlags: AccessFlags = .normal) throws {
        let l1Index = Int((virtAddr >> 30) & 0b1111_1111_1)
        let l2Index = Int((virtAddr >> 21) & 0b1111_1111_1)
        let l3Index = Int((virtAddr >> 12) & 0b1111_1111_1)
        
        if pageTables[l1Index] == nil {
            let pta = GuestPhysicalPointer<UInt64>(try allocTable())
            pageTables[l1Index] = (pta, [(GuestPhysicalPointer<UInt64>, [UInt64?])?](repeating: nil, count: 512))
            pageTableBase[l1Index] = pta.address | 0b11
        }
        let (l2p, l2a) = pageTables[l1Index]!
        
        if l2a[l2Index] == nil {
            let pta = GuestPhysicalPointer<UInt64>(try allocTable())
            pageTables[l1Index]!.1[l2Index] = (pta, [UInt64?](repeating: nil, count: 512))
            l2p[l2Index] = pta.address | 0b11
        }
        let (l3p, l3a) = pageTables[l1Index]!.1[l2Index]!
        
        if l3a[l3Index] == nil {
            pageTables[l1Index]!.1[l2Index]!.1[l3Index] = physAddr
            if accessFlags.contains(AccessFlags.el1Execute) && accessFlags.contains(AccessFlags.el0Write) {
                throw VmmError.vmMutuallyExclusivePermissions
            }
            var pflags : uint64 = 0
            if !accessFlags.contains(.el0Execute) {
                pflags |= 1 << 54
            }
            if !accessFlags.contains(.el1Execute) {
                pflags |= 1 << 53
            }
            let (el0r, el0w, el1w) = (accessFlags.contains(.el0Read), accessFlags.contains(.el0Write), accessFlags.contains(.el1Write))
            if el0r && el0w {
                pflags |= 0b01 << 6
            } else if el0r && el1w {
                throw VmmError.vmMutuallyExclusivePermissions
            } else if el0r {
                pflags |= 0b11 << 6
            }
            l3p[l3Index] = (
                physAddr |
                0b11 | // valid page
                (1 << 10) | // Access flag
                (0b11 << 8) | // Inner sharable
                pflags
            )
        }
    }
    
    func unmapVirtual(virtAddr: uint64, size: uint64) {
    }
    
    func translate(_ virtAddr: uint64) throws -> uint64 {
        let l1Index = Int((virtAddr >> 30) & 0b1111_1111_1)
        let l2Index = Int((virtAddr >> 21) & 0b1111_1111_1)
        let l3Index = Int((virtAddr >> 12) & 0b1111_1111_1)
        
        guard let (_, l2a) = pageTables[l1Index] else { print("Failed l1"); throw VmmError.unmappedVirtualMemory }
        guard let (_, l3a) = l2a[l2Index] else { print("Failed l2"); throw VmmError.unmappedVirtualMemory }
        guard let phys = l3a[l3Index] else { print("Failed l3"); throw VmmError.unmappedVirtualMemory }
        return phys | (virtAddr & 0xFFF)
    }
    
    func readPhysByte(_ address: uint64) throws -> uint8 {
        guard let ptr = physMappings[Int((address >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        return ptr.load(fromByteOffset: Int(address & 0xFF_FFFF), as: UInt8.self)
    }
    
    func writePhysByte(_ address: uint64, _ value: uint8) throws {
        guard let ptr = physMappings[Int((address >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        ptr.storeBytes(of: value, toByteOffset: Int(address & 0xFF_FFFF), as: UInt8.self)
    }
    
    func readPhysMem<T>(_ address: uint64) throws -> T {
        let data : [UInt8] = try (0..<MemoryLayout<T>.size).map { try readPhysByte(address + UInt64($0)) }
        return data.withUnsafeBytes { $0.load(as: T.self) }
    }
    
    func writePhysMem<T>(_ address: uint64, _ value: T) throws {
        try withUnsafeBytes(of: value) {
            try $0.enumerated().forEach { try writePhysByte(address + UInt64($0.offset), $0.element) }
        }
    }
    
    func readVirtMem<T>(_ address: uint64) throws -> T {
        let data = try (0..<MemoryLayout<T>.size).map { try readPhysByte(try translate(address + UInt64($0))) }
        return data.withUnsafeBytes { $0.load(as: T.self) }
    }
    
    func writeVirtMem<T>(_ address: uint64, _ value: T) throws {
        try withUnsafeBytes(of: value) {
            try $0.enumerated().forEach { try writePhysByte(try translate(address + UInt64($0.offset)), $0.element) }
        }
    }
}
