//
//  nn.sm.detail.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

class NnSmDetail_IUserInterface: IpcService, AccessibleIpcService {
    func initialize(_ _0 : uint64, _ _ : uint64) { try! bailout() }

    static func _construct() -> AccessibleIpcService { NnSmDetail_IUserInterface_Impl() }
    
    override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) {
        initialize(0, 0)
    }
}

class NnSmDetail_IUserInterface_Impl: NnSmDetail_IUserInterface {
    override func initialize(_ foo : uint64, _ _: uint64) {
    }
}
