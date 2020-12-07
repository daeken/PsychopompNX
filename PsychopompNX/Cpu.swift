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
}

class Cpu {
    let tm : TaskManager
    let number : Int
    var quitting = false
    
    init(_ number : Int, _ tm : TaskManager) {
        self.number = number
        self.tm = tm
        let thread = Thread(target: self, selector: #selector(loop), object: nil)
        thread.start()
    }
    
    @objc func loop() throws {
        var cpu = hv_vcpu_t(0)
        var eip : UnsafeMutablePointer<hv_vcpu_exit_t>? = nil
        try hv_guard(hv_vcpu_create(&cpu, &eip, nil)) {
            throw CpuError.cpuCreationFailed
        }
        
        let exitInfo = eip!
        
        try hv_guard(hv_vcpu_set_trap_debug_exceptions(cpu, true))
        try hv_guard(hv_vcpu_set_trap_debug_reg_accesses(cpu, true))

        var tcr : UInt64 = 0
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

        let mair : UInt64 = 0x000000FF
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_MAIR_EL1, mair))

        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TTBR0_EL1, Vmm.instance!.pageTableBase.address))
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TTBR1_EL1, Vmm.instance!.pageTableBase.address))

        var sctlr : UInt64 = 0
        try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_SCTLR_EL1, &sctlr))
        sctlr |= 1
        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_SCTLR_EL1, sctlr))

        try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_VBAR_EL1, Vmm.instance!.vbar))
        
        var curThread : NxThread? = nil
        
        print("Waiting for thread")
        while !quitting {
            let nextThread = tm.nextThread(number)
            if nextThread == nil {
                Thread.sleep(forTimeInterval: 0.01)
                continue
            }
            
            print("Got thread!")
            print(nextThread!)
            
            if curThread != nil && curThread !== nextThread {
                let ct = curThread!
                for i in 0..<31 {
                    try hv_guard(hv_vcpu_get_reg(cpu, hv_reg_t(HV_REG_X0.rawValue + uint32(i)), &ct.X[i]))
                }
                for i in 0..<32 {
                    try hv_guard(hv_vcpu_get_simd_fp_reg(cpu, hv_simd_fp_reg_t(HV_SIMD_FP_REG_Q0.rawValue + uint32(i)), &ct.V[i]))
                }
                try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_PC, &ct.PC))
                try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_FPCR, &ct.FPCR))
                try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_FPSR, &ct.FPSR))
                try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_CPSR, &ct.CPSR))
                try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_SP_EL1, &ct.SP))
                try hv_guard(hv_vcpu_get_sys_reg(cpu, HV_SYS_REG_TPIDR_EL1, &ct.TPIDR))
            }
            if curThread !== nextThread {
                let nt = nextThread!
                for i in 0..<31 {
                    try hv_guard(hv_vcpu_set_reg(cpu, hv_reg_t(HV_REG_X0.rawValue + uint32(i)), nt.X[i]))
                }
                for i in 0..<32 {
                    try hv_guard(hv_vcpu_set_simd_fp_reg(cpu, hv_simd_fp_reg_t(HV_SIMD_FP_REG_Q0.rawValue + uint32(i)), nt.V[i]))
                }
                try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_PC, nt.PC))
                try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_FPCR, nt.FPCR))
                try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_FPSR, nt.FPSR))
                try hv_guard(hv_vcpu_set_reg(cpu, HV_REG_CPSR, nt.CPSR))
                try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_SP_EL1, nt.SP))
                try hv_guard(hv_vcpu_set_sys_reg(cpu, HV_SYS_REG_TPIDR_EL1, nt.TPIDR))
            }
            curThread = nextThread
            
            DispatchQueue.global(qos: .userInitiated).async {
                print("Async thingy")
                Thread.sleep(forTimeInterval: 2)
                print("Async thingy slept")
                try! hv_guard(hv_vcpus_exit(&cpu, 1))
                print("Forced exit")
            }
            
            print("Running")
            try hv_guard(hv_vcpu_run(cpu))
            print("Exited")
            
            var temp : uint64 = 0
            try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_PC, &temp))
            print(temp)
            try hv_guard(hv_vcpu_get_reg(cpu, HV_REG_X2, &temp))
            print(temp)
            print(try! *GuestPointer<uint64>(0xdead0010))

            break
        }
    }
}
