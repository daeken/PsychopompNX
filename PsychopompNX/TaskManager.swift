//
//  TaskManager.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/5/20.
//

import Foundation

class NxThread {
    var X = [uint64](repeating: 0, count: 31)
    var V = [SIMD16<UInt8>](repeating: SIMD16<UInt8>(), count: 32)
    var SP : uint64 = 0
    var PC : uint64 = 0
    var FPCR : uint64 = 0
    var FPSR : uint64 = 0
    var CPSR : uint64 = 0
    var TPIDR : uint64 = 0 // TLS Base
    
    var affinityMask : uint64 = 0
    var priority = 0
}

class TaskManager {
    var cpus : [Cpu]
    var queues : [[NxThread]]
    var indices = [Int](repeating: 0, count: 4)
    var suspended = [NxThread]()
    var waiting = [NxThread]()
    var running = [NxThread]()
    
    init() {
        cpus = []
        queues = [[NxThread](), [NxThread](), [NxThread](), [NxThread]()]
        cpus = [Cpu(0, self), Cpu(1, self), Cpu(2, self), Cpu(3, self)]
    }
    
    func nextThread(_ cpu: Int) -> NxThread? {
        nil
    }
}
