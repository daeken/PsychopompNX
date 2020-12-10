//
//  Cpu.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/3/20.
//

import Foundation
import Hypervisor

enum CpuError: Error {
    case cpuCreationFailed
    case cpuInvalidDataAbort
}

enum ExceptionCode: UInt64 {
    case ServiceCall = 0b010101
    case InsnAbort = 0b100000
    case DataAbort = 0b100100
    case PcAlignmentFault = 0b100010
}

class Cpu {
    let tm: TaskManager
    let number: Int
    var quitting = false

    init(_ number: Int, _ tm: TaskManager) {
        self.number = number
        self.tm = tm
        let thread = Thread(target: self, selector: #selector(loop), object: nil)
        thread.start()
    }

    @objc func loop() throws {
        func get_reg(_ reg: hv_reg_t) throws -> uint64 {
            var val: uint64 = 0
            try hv_guard(hv_vcpu_get_reg(cpu, reg, &val))
            return val
        }

        func set_reg(_ reg: hv_reg_t, _ val: uint64) throws {
            try hv_guard(hv_vcpu_set_reg(cpu, reg, val))
        }

        func get_sys_reg(_ reg: hv_sys_reg_t) throws -> uint64 {
            var val: uint64 = 0
            try hv_guard(hv_vcpu_get_sys_reg(cpu, reg, &val))
            return val
        }

        func set_sys_reg(_ reg: hv_sys_reg_t, _ val: uint64) throws {
            try hv_guard(hv_vcpu_set_sys_reg(cpu, reg, val))
        }

        var cpu = hv_vcpu_t(0)
        var eip: UnsafeMutablePointer<hv_vcpu_exit_t>? = nil
        try hv_guard(hv_vcpu_create(&cpu, &eip, nil)) {
            throw CpuError.cpuCreationFailed
        }

        let exitInfo = eip!

        try hv_guard(hv_vcpu_set_trap_debug_exceptions(cpu, true))
        try hv_guard(hv_vcpu_set_trap_debug_reg_accesses(cpu, true))

        var tcr: UInt64 = 0
        tcr |= 0b001 << 32 // 36-bit IPA space
        tcr |= 0b10 << 30  // Granule size for TTBR1_EL1: 4k
        tcr |= 0b11 << 28  // Inner sharable
        tcr |= 0b01 << 26  // Cachable
        tcr |= 0b01 << 24  // Cachable
        tcr |= 0b011001 << 16  // Memory region 2^(64-24)
        tcr |= 0b00 << 14  // Granule size for TTBR0_EL1: 4k
        tcr |= 0b11 << 12  // Inner sharable
        tcr |= 0b01 << 10  // Cachable
        tcr |= 0b01 << 8   // Cachable
        tcr |= 0b011001    // Memory region 2^(64-24)

        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TCR_EL1, tcr))

        let mair: UInt64 = 0x000000FF
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_MAIR_EL1, mair))

        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TTBR0_EL1, Vmm.instance!.pageTableBase.address))
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TTBR1_EL1, Vmm.instance!.pageTableBase.address))

        var sctlr: UInt64 = 0
        try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_SCTLR_EL1, &sctlr))
        sctlr |= 1
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_SCTLR_EL1, sctlr))

        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_VBAR_EL1, Vmm.instance!.vbar))

        // Enable FP
        let cpacr: UInt64 = 3 << 20
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_CPACR_EL1, cpacr))

        func saveState(_ thread: NxThread) throws {
            for i in 0..<31 {
                try hv_guard(hv_vcpu_get_reg(cpu, hv_reg_t(HV_REG_X0.rawValue + uint32(i)), &thread.X[i]))
            }
            for i in 0..<32 {
                try hv_guard(hv_vcpu_get_simd_fp_reg(cpu, hv_simd_fp_reg_t(HV_SIMD_FP_REG_Q0.rawValue + uint32(i)), &thread.V[i]))
            }
            try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_PC, &thread.PC))
            try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_FPCR, &thread.FPCR))
            try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_FPSR, &thread.FPSR))
            try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_CPSR, &thread.CPSR))
            try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_SP_EL0, &thread.SP))
            try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_TPIDR_EL0, &thread.TPIDR))
            try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_TPIDRRO_EL0, &thread.TPIDRRO))
        }

        func restoreState(_ thread: NxThread) throws {
            for i in 0..<31 {
                try hv_guard(hv_vcpu_set_reg(cpu, hv_reg_t(HV_REG_X0.rawValue + uint32(i)), thread.X[i]))
            }
            for i in 0..<32 {
                try hv_guard(hv_vcpu_set_simd_fp_reg(cpu, hv_simd_fp_reg_t(HV_SIMD_FP_REG_Q0.rawValue + uint32(i)), thread.V[i]))
            }
            try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_PC, thread.PC))
            try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_FPCR, thread.FPCR))
            try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_FPSR, thread.FPSR))
            try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_CPSR, thread.CPSR))
            try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_SP_EL0, thread.SP))
            try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TPIDR_EL0, thread.TPIDR))
            try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TPIDRRO_EL0, thread.TPIDRRO))
        }

        var curThread: NxThread? = nil

        print("Waiting for thread")
        while !quitting {
            let nextThread = tm.nextThread(number)
            if nextThread == nil {
                Thread.sleep(forTimeInterval: 0.01)
                continue
            }

            if curThread != nil && curThread !== nextThread {
                try saveState(curThread!)
            }
            if curThread !== nextThread {
                try restoreState(nextThread!)
            }
            curThread = nextThread

            /*DispatchQueue.global(qos: .userInitiated).async {
                print("Async thingy")
                Thread.sleep(forTimeInterval: 2)
                print("Async thingy slept")
                try! hv_guard(hv_vcpus_exit(&cpu, 1))
                print("Forced exit")
            }*/

            try hv_guard(hv_vcpu_run(cpu))
            let elr = try get_sys_reg(HV_SYS_REG_ELR_EL1)
            print_hex("Exited from", elr)
            print_hex("Exited at", try get_reg(HV_REG_PC))
            print_hex("LR", try get_reg(HV_REG_LR))

            switch exitInfo.pointee.reason {
            case HV_EXIT_REASON_EXCEPTION:
                let esr = try get_sys_reg(HV_SYS_REG_ESR_EL1)
                let far = try get_sys_reg(HV_SYS_REG_FAR_EL1)
                let ec = esr >> 26
                let ece = ExceptionCode(rawValue: ec)
                switch ece {
                case .DataAbort:
                    let isv = ((esr >> 24) & 1) == 1
                    if isv {
                        let bits = 8 << ((esr >> 22) & 3)
                        let write = ((esr >> 6) & 1) == 1
                        print_hex("Data abort", write ? "writing to" : "reading from", far, "(bits: ", bits, ")")
                    } else {
                        print_hex("Data abort accessing", far)
                    }
                    try! bailout()
                case .InsnAbort:
                    print_hex("Instruction abort accessing", far)
                    try! bailout()
                case .ServiceCall:
                    let svc = esr & 0xFFFF
                    //print_hex("Service call:", svc)
                    try saveState(curThread!)
                    curThread!.CPSR = try get_sys_reg(HV_SYS_REG_SPSR_EL1)
                    try Emulator.instance!.kernel.svc(curThread!, Int(svc))
                    curThread!.PC = elr
                    try restoreState(curThread!)
                default:
                    print_bin("Unknown exception code:", ec)
                    if ece != nil {
                        print(ece!)
                    }
                    print_hex("ESR:", esr)
                    try! bailout()
                }
            default:
                print("Other exit reason")
            }
        }
    }
}
