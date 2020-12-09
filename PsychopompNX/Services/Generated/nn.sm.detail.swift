//
//  nn.sm.detail.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

protocol NnSmDetail_IUserInterface: AccessibleIpcService {
    func initialize(_ _0 : uint64, _ _ : uint64)
}

extension NnSmDetail_IUserInterface {
    static func _construct() -> AccessibleIpcService { NnSmDetail_IUserInterface_Impl() }
    
    func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) {
        initialize(0, 0)
    }
}

class NnSmDetail_IUserInterface_Impl: KObject, NnSmDetail_IUserInterface {
    func initialize(_ foo : uint64, _ _: uint64) {
    }
}
