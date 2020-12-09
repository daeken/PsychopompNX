//
//  Emulator.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/5/20.
//

import Foundation

class Emulator {
    let vmm : Vmm
    let tm : TaskManager
    
    init() throws {
        vmm = try Vmm()
        tm = TaskManager()
        
        let root = "/Users/daeken/switch/smo/exefs/"
        let fns = ["rtld", "main", "subsdk0", "sdk"]
        var nxos = [NxoReader]()
        var residency : UInt64 = 0
        
        func align() {
            while (residency & 0xFFF) != 0 { residency += 1 }
        }
        
        for fn in fns {
            let data = try Data(contentsOf: URL(fileURLWithPath: root + fn))
            let nxo = try NxoReader(data)
            nxos.append(nxo)
            residency += nxo.text.1
            align()
            residency += nxo.rodata.1
            align()
            residency += nxo.data.1
            align()
            residency += nxo.bssSize
            align()
        }
        
        while (residency & 0xFFFFFF) != 0 { residency += 1 }
        let (paddr, pmem) = try vmm.mapChunk(Int(residency >> 24))
        
        residency = 0
        for (i, nxo) in nxos.enumerated() {
            let vaddr = UInt64(0x71_0000_0000 + i * 0x1_0000_0000)
            func mapper(_ section: (Data, UInt64), _ accessFlags: AccessFlags) throws {
                let base = (pmem + Int(residency)).bindMemory(to: UInt8.self, capacity: section.0.count)
                section.0.copyBytes(to: base, count: section.0.count)
                for off in stride(from: 0, to: section.0.count, by: 0x1000) {
                    try vmm.mapVirtualPage(physAddr: paddr + residency + UInt64(off), virtAddr: vaddr + UInt64(off), accessFlags: accessFlags)
                    residency += 0x1000
                }
            }
            try mapper(nxo.text, [.el0Execute, .el0Read, .el1Read])
            try mapper(nxo.rodata, [.el0Read, .el1Read])
            try mapper(nxo.data, [.el0Read, .el0Write, .el1Read, .el1Write])
        }
        
        let thread = NxThread()
        
        let (spaddr, _) = try Vmm.instance!.mapChunk()
        var sp : uint64 = 0xf000000
        for off in stride(from: 0, to: 0x100000, by: 0x1000) {
            try Vmm.instance!.mapVirtualPage(physAddr: spaddr + UInt64(off), virtAddr: sp)
            sp += 0x1000
        }
        
        thread.PC = 0x71_0000_0000
        thread.SP = sp
        thread.CPSR = uint64((1 << 6) | (1 << 7) | (1 << 8))
        tm.insertThread(thread)
    }
}
