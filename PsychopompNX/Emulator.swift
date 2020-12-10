//
//  Emulator.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/5/20.
//

import Foundation

class Emulator {
    static var instance: Emulator? = nil

    let vmm: Vmm
    let tm: TaskManager
    let kernel: Kernel
    let stackBase: uint64 = 0xc000000
    let stackSize: uint64 = 0x4000000

    let tlsSpace: uint64 = 0xb000000

    init() throws {
        vmm = try Vmm()
        tm = TaskManager()
        kernel = Kernel()
        Emulator.instance = self

        let root = "/Users/daeken/switch/smo/exefs/"
        let fns = ["rtld", "main", "subsdk0", "sdk"]
        var nxos = [NxoReader]()
        var residency: UInt64 = 0

        func align() {
            while (residency & 0xFFF) != 0 {
                residency += 1
            }
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

        while (residency & 0xFFFFFF) != 0 {
            residency += 1
        }
        let (paddr, pmem) = try vmm.mapChunk(Int(residency >> 24))

        residency = 0
        for (i, nxo) in nxos.enumerated() {
            var vaddr = UInt64(0x71_0000_0000 + i * 0x1_0000_0000)

            func mapper(_ section: (Data, UInt64), _ accessFlags: AccessFlags, _ add: Int) throws {
                let base = (pmem + Int(residency)).bindMemory(to: UInt8.self, capacity: section.0.count)
                section.0.copyBytes(to: base, count: section.0.count)
                for _ in stride(from: 0, to: section.0.count + add, by: 0x1000) {
                    try vmm.mapVirtualPage(physAddr: paddr + residency, virtAddr: vaddr, accessFlags: accessFlags)
                    residency += 0x1000
                    vaddr += 0x1000
                }
            }

            try mapper(nxo.text, [.el0Execute, .el0Read, .el1Read], 0)
            try mapper(nxo.rodata, [.el0Read, .el1Read], 0)
            try mapper(nxo.data, [.el0Read, .el0Write, .el1Read, .el1Write], Int(nxo.bssSize))
        }

        let thread = NxThread()

        let (spaddr, _) = try Vmm.instance!.mapChunk()
        for off in stride(from: 0, to: Int(stackSize), by: 0x1000) {
            try Vmm.instance!.mapVirtualPage(physAddr: spaddr + UInt64(off), virtAddr: stackBase + UInt64(off), accessFlags: [.el0Read, .el0Write])
        }

        let (tlsaddr, _) = try Vmm.instance!.mapChunk()
        for off in stride(from: 0, to: Int(0x1000000), by: 0x1000) {
            try Vmm.instance!.mapVirtualPage(physAddr: tlsaddr + UInt64(off), virtAddr: tlsSpace + UInt64(off), accessFlags: [.el0Read, .el0Write])
        }

        thread.PC = 0x71_0000_0000
        thread.SP = stackBase + 0x100000
        thread.CPSR = uint64((1 << 6) | (1 << 7) | (1 << 8))
        tm.insertThread(thread)
    }
}
