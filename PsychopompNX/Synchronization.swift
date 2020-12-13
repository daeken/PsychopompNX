//
//  Synchronization.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

extension Kernel {
    func WaitSynchronization(_ thread: NxThread) throws {
        print("WaitSynchronization")
        thread.X[0] = 0
        thread.X[1] = 0
    }
    
    func SignalProcessWideKey(_ thread: NxThread) throws {
        print("SignalProcessWideKey")
        thread.X[0] = 0
    }
}
