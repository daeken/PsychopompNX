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
        
        //print(try vmm.mapChunk())
    }
}
