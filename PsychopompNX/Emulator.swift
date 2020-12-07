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
        
        let thread = NxThread()
        
        let (paddr, pmem) = try Vmm.instance!.mapChunk()
        try Vmm.instance!.mapVirtualPage(physAddr: paddr, virtAddr: 0xdead0000)
        let insns = pmem.bindMemory(to: UInt32.self, capacity: 10)
        insns[0] = 0xaa010002 // orr x2, x0, x1
        insns[1] = 0xf9000002 // str x2, [x0]
        insns[2] = 0xd4200000 // brk 0
        
        let sp : uint64 = 0xf000000
        try Vmm.instance!.mapVirtualPage(physAddr: paddr + 0x1000, virtAddr: sp)
        
        thread.PC = 0xdead0000
        thread.SP = sp + 0x1000 - 16
        thread.CPSR = uint64((1 << 6) | (1 << 7) | (1 << 8)) //0x3c4
        thread.X[0] = 0xdead0010
        thread.X[1] = 0x15_00000000
        tm.insertThread(thread)
        
        //print(try vmm.mapChunk())
    }
}
