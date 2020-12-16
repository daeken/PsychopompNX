//
//  Vmm.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/3/20.
//

import Foundation
import LibSpan
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
    static let normal: AccessFlags = [el0Read, el0Write, el0Execute, el1Read, el1Write]
    static let rw: AccessFlags = [el0Read, el0Write, el1Read, el1Write]
    static let invalid = AccessFlags(rawValue: -1)
}

class Vmm {
    static var instance: Vmm? = nil

    let vbar: uint64 = 0x100000
    let chunkSize: UInt64 = 0x1000000
    var physTop: UInt64 = 0x10000000
    var freeTables = [UInt64]()
    var physMappings = [Span<UInt8>?](repeating: nil, count: 4096)
    var pageTableBase = GuestPhysicalPointer<UInt64>(0)
    var pageTables = [(GuestPhysicalPointer<UInt64>, [(GuestPhysicalPointer<UInt64>, [(UInt64, AccessFlags)?])?])?](repeating: nil, count: 512)

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
        let byteCount = Int(chunkSize) * count
        let pmem = UnsafeMutableRawPointer.allocate(byteCount: byteCount, alignment: 0x4000)
        let ptr = pmem.bindMemory(to: UInt8.self, capacity: byteCount)
        let addr = physTop
        physTop += chunkSize * UInt64(count)
        try hv_guard(hv_vm_map(pmem, addr, Int(chunkSize) * count, hv_memory_flags_t(HV_MEMORY_EXEC | HV_MEMORY_WRITE | HV_MEMORY_READ))) {
            throw VmmError.vmMappingFailed
        }
        let span = Span<UInt8>.from(pointer: ptr, length: byteCount)
        for i in 0..<count {
            physMappings[Int(addr >> 24) + i] = span + Int(chunkSize * UInt64(i))
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
            let tableSize: UInt64 = 512 * 8
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
            pageTables[l1Index] = (pta, [(GuestPhysicalPointer<UInt64>, [(UInt64, AccessFlags)?])?](repeating: nil, count: 512))
            pageTableBase[l1Index] = pta.address | 0b11
        }
        let (l2p, l2a) = pageTables[l1Index]!

        if l2a[l2Index] == nil {
            let pta = GuestPhysicalPointer<UInt64>(try allocTable())
            pageTables[l1Index]!.1[l2Index] = (pta, [(UInt64, AccessFlags)?](repeating: nil, count: 512))
            l2p[l2Index] = pta.address | 0b11
        }
        let (l3p, l3a) = pageTables[l1Index]!.1[l2Index]!

        if l3a[l3Index] == nil {
            pageTables[l1Index]!.1[l2Index]!.1[l3Index] = (physAddr, accessFlags)
            if accessFlags.contains(AccessFlags.el1Execute) && accessFlags.contains(AccessFlags.el0Write) {
                throw VmmError.vmMutuallyExclusivePermissions
            }
            var pflags: uint64 = 0
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
    
    func mapVirtualPages(physAddr: uint64, virtAddr: uint64, pages: Int, accessFlags: AccessFlags) throws {
        if accessFlags.contains(AccessFlags.el1Execute) && accessFlags.contains(AccessFlags.el0Write) {
            throw VmmError.vmMutuallyExclusivePermissions
        }
        var pflags: uint64 = 0
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
        
        let virtTop = virtAddr + UInt64(pages * 0x1000)
        var curPhys = physAddr
        for l1Index in Int(virtAddr >> 30)...Int((virtTop - 1) >> 30) {
            if pageTables[l1Index] == nil {
                let pta = GuestPhysicalPointer<UInt64>(try allocTable())
                pageTables[l1Index] = (pta, [(GuestPhysicalPointer<UInt64>, [(UInt64, AccessFlags)?])?](repeating: nil, count: 512))
                pageTableBase[l1Index] = pta.address | 0b11
            }
            let (l2p, l2a) = pageTables[l1Index]!
            
            let l1Addr = UInt64(l1Index) << 30
            let l1Bottom = virtAddr <= l1Addr ? l1Addr : virtAddr
            let l1Max = l1Addr + UInt64(1 << 30)
            let l1Top = (l1Max <= virtTop ? l1Max : virtTop) - 1
            let l1Left = Int((l1Bottom - l1Addr) >> 21)
            let l1Right = Int((l1Top - l1Addr) >> 21)
            for l2Index in l1Left...l1Right {
                if l2a[l2Index] == nil {
                    let pta = GuestPhysicalPointer<UInt64>(try allocTable())
                    pageTables[l1Index]!.1[l2Index] = (pta, [(UInt64, AccessFlags)?](repeating: nil, count: 512))
                    l2p[l2Index] = pta.address | 0b11
                }
                let (l3p, _) = pageTables[l1Index]!.1[l2Index]!
                
                let l2Addr = l1Addr | (UInt64(l2Index) << 21)
                let l2Bottom = virtAddr <= l2Addr ? l2Addr : virtAddr
                let l2Max = l2Addr + UInt64(1 << 21)
                let l2Top = (l2Max <= virtTop ? l2Max : virtTop) - 1
                let l2Left = Int((l2Bottom - l2Addr) >> 12)
                let l2Right = Int((l2Top - l2Addr) >> 12)
                for l3Index in l2Left...l2Right {
                    pageTables[l1Index]!.1[l2Index]!.1[l3Index] = (curPhys, accessFlags)
                    l3p[l3Index] = (
                            curPhys |
                                    0b11 | // valid page
                                    (1 << 10) | // Access flag
                                    (0b11 << 8) | // Inner sharable
                                    pflags
                    )
                    curPhys += 0x1000
                }
            }
        }
    }

    func unmapVirtual(virtAddr: uint64, size: uint64) {
    }

    func translate(_ virtAddr: uint64) throws -> uint64 {
        let l1Index = Int((virtAddr >> 30) & 0b1111_1111_1)
        let l2Index = Int((virtAddr >> 21) & 0b1111_1111_1)
        let l3Index = Int((virtAddr >> 12) & 0b1111_1111_1)

        guard let (_, l2a) = pageTables[l1Index] else {
            print("Failed l1"); throw VmmError.unmappedVirtualMemory
        }
        guard let (_, l3a) = l2a[l2Index] else {
            print("Failed l2"); throw VmmError.unmappedVirtualMemory
        }
        guard let (phys, _) = l3a[l3Index] else {
            print("Failed l3"); throw VmmError.unmappedVirtualMemory
        }
        return phys | (virtAddr & 0xFFF)
    }
    
    func getVirtualSpan( _ address: uint64, _ size: uint64) throws -> Span<UInt8> {
        let pageOffset = address & 0xFFF
        let pageBase = address ^ pageOffset
        let boostSize = size + pageOffset
        
        var ppages = [UInt64]()
        var lastAddr: UInt64 = 0
        var firstAddr: UInt64? = nil
        
        for vpage in stride(from: pageBase, to: pageBase + boostSize, by: 0x1000) {
            let ppage = try translate(vpage)
            if firstAddr != nil && lastAddr + 0x1000 != ppage {
                try! bailout()
            }
            lastAddr = ppage
            if firstAddr == nil {
                firstAddr = ppage
            }
            ppages.append(ppage)
        }
        
        if ppages.count == 0 { try! bailout() }
        
        guard let ptr = physMappings[Int((firstAddr! >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        let poff = Int((firstAddr! & 0xFF_FFFF) + pageOffset)
        return ptr[poff..<(poff+Int(size))]
    }

    func readPhysByte(_ address: uint64) throws -> uint8 {
        guard let ptr = physMappings[Int((address >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        return ptr[Int(address & 0xFF_FFFF)]
    }

    func writePhysByte(_ address: uint64, _ value: uint8) throws {
        guard let ptr = physMappings[Int((address >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        ptr[Int(address & 0xFF_FFFF)] = value
    }

    func readPhysMem<T>(_ address: uint64) throws -> T {
        guard let ptr = physMappings[Int((address >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        return (ptr + Int(address & 0xFFFFFF)).to(type: T.self)[0]
    }

    func writePhysMem<T>(_ address: uint64, _ value: T) throws {
        guard let ptr = physMappings[Int((address >> 24) & 0xFFF)] else {
            throw VmmError.unmappedPhysicalMemory
        }
        (ptr + Int(address & 0xFFFFFF)).to(type: T.self)[0] = value
    }

    func readVirtMem<T>(_ address: uint64) throws -> T {
        try getVirtualSpan(address, uint64(MemoryLayout<T>.size)).to(type: T.self)[0]
    }

    func writeVirtMem<T>(_ address: uint64, _ value: T) throws {
        try getVirtualSpan(address, uint64(MemoryLayout<T>.size)).to(type: T.self)[0] = value
    }

    func getVirtMappings() -> [(base: uint64, size: uint64, accessFlags: AccessFlags)] {
        var mappings = [(base: uint64, size: uint64, accessFlags: AccessFlags)]()
        var cbase: uint64 = 0
        var ctop: uint64 = 1
        var cacc: AccessFlags = AccessFlags.invalid

        for (i, elem) in pageTables.enumerated() {
            if elem == nil {
                continue
            }
            let addr1 = UInt64(i) << 30
            for (i, elem) in elem!.1.enumerated() {
                if elem == nil {
                    continue
                }
                let addr2 = addr1 | (UInt64(i) << 21)
                for (i, elem) in elem!.1.enumerated() {
                    if elem == nil {
                        continue
                    }
                    let addr3 = addr2 | (UInt64(i) << 12)
                    let af = elem!.1
                    if ctop != addr3 || cacc != af {
                        if ctop != 1 {
                            mappings.append((cbase, ctop - cbase, cacc))
                        }
                        cbase = addr3
                        cacc = af
                    }
                    ctop = addr3 + 0x1000
                }
            }
        }

        if ctop != 1 {
            mappings.append((cbase, ctop - cbase, cacc))
        }

        return mappings
    }

    func getVirtInfo(_ address: uint64) -> (base: uint64, size: uint64, mapped: Bool, accessFlags: AccessFlags) {
        var lastBase: uint64 = 0
        for (base, size, acc) in getVirtMappings() {
            if base > address && lastBase <= address {
                return (lastBase, base - lastBase, false, acc)
            }
            if base <= address && base + size > address {
                return (base, size, true, acc)
            }
            lastBase = base
        }
        return (lastBase, (UInt64(1) << 39) - lastBase, false, AccessFlags.normal)
    }
}
