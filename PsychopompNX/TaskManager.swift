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
    var glock = NSLock()
    var locks : [NSLock]
    var queues : [[NxThread]]
    var indices = [Int](repeating: 0, count: 4)
    var suspended = [NxThread]()
    var waiting = [NxThread]()
    var running = [NxThread]()
    
    init() {
        cpus = []
        locks = [NSLock(), NSLock(), NSLock(), NSLock()]
        queues = [[NxThread](), [NxThread](), [NxThread](), [NxThread]()]
        cpus = [Cpu(0, self), Cpu(1, self), Cpu(2, self), Cpu(3, self)]
    }
    
    func insertThread(_ thread: NxThread) {
        glock.lock()
        running.append(thread)
        let counts = queues.enumerated().map { ($0.offset, $0.element.count) }
        let lowest = counts.min { $0.1 < $1.1 }!.0
        locks[lowest].lock()
        queues[lowest].append(thread)
        locks[lowest].unlock()
        glock.unlock()
    }
    
    func nextThread(_ cpu: Int) -> NxThread? {
        locks[cpu].lock()
        let queue = queues[cpu]
        let qc = queue.count
        var nt : NxThread?
        if qc == 0 {
            nt = nil
        } else {
            let index = (indices[cpu] + 1) % qc
            indices[cpu] = index
            nt = queue[index]
        }
        locks[cpu].unlock()
        return nt
    }
}
