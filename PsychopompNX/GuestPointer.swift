//
//  GuestPointer.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/4/20.
//

import Foundation

infix operator ~+: AdditionPrecedence
prefix operator *

class GuestPointer<T> {
    let address : UInt64
    
    init(_ address : UInt64) {
        self.address = address
    }
    
    subscript(index: Int) -> T {
        get {
            try! Vmm.instance!.readVirtMem(address + UInt64(index * MemoryLayout<T>.size))
        }
        set {
            try! Vmm.instance!.writeVirtMem(address + UInt64(index * MemoryLayout<T>.size), newValue)
        }
    }
    
    subscript(range: Range<Int>) -> [T] {
        get {
            range.map { self[$0] }
        }
    }
    
    func to<T2>() -> GuestPointer<T2> {
        GuestPointer<T2>(address)
    }
    
    static func +(left: GuestPointer<T>, right: Int) -> GuestPointer<T> {
        GuestPointer<T>(left.address + UInt64(right * MemoryLayout<T>.size))
    }
    
    static func +(left: GuestPointer<T>, right: UInt64) -> GuestPointer<T> {
        GuestPointer<T>(left.address + right * UInt64(MemoryLayout<T>.size))
    }
    
    static func ~+(left: GuestPointer<T>, right: Int) -> GuestPointer<T> {
        GuestPointer<T>(left.address + UInt64(right))
    }
    
    static func ~+(left: GuestPointer<T>, right: UInt64) -> GuestPointer<T> {
        GuestPointer<T>(left.address + right)
    }
    
    static prefix func *(left: GuestPointer<T>) throws -> T {
        try Vmm.instance!.readVirtMem(left.address)
    }
}

class GuestPhysicalPointer<T> {
    let address : UInt64
    
    init(_ address : UInt64) {
        self.address = address
    }
    
    subscript(index: Int) -> T {
        get {
            try! Vmm.instance!.readPhysMem(address + UInt64(index * MemoryLayout<T>.size))
        }
        set {
            try! Vmm.instance!.writePhysMem(address + UInt64(index * MemoryLayout<T>.size), newValue)
        }
    }
    
    subscript(range: Range<Int>) -> [T] {
        get {
            range.map { self[$0] }
        }
    }
    
    func to<T2>() -> GuestPhysicalPointer<T2> {
        GuestPhysicalPointer<T2>(address)
    }
    
    static func +(left: GuestPhysicalPointer<T>, right: Int) -> GuestPhysicalPointer<T> {
        GuestPhysicalPointer<T>(left.address + UInt64(right * MemoryLayout<T>.size))
    }
    
    static func +(left: GuestPhysicalPointer<T>, right: UInt64) -> GuestPhysicalPointer<T> {
        GuestPhysicalPointer<T>(left.address + right * UInt64(MemoryLayout<T>.size))
    }
    
    static func ~+(left: GuestPhysicalPointer<T>, right: Int) -> GuestPhysicalPointer<T> {
        GuestPhysicalPointer<T>(left.address + UInt64(right))
    }
    
    static func ~+(left: GuestPhysicalPointer<T>, right: UInt64) -> GuestPhysicalPointer<T> {
        GuestPhysicalPointer<T>(left.address + right)
    }
    
    static prefix func *(left: GuestPhysicalPointer<T>) throws -> T {
        try Vmm.instance!.readPhysMem(left.address)
    }
}
