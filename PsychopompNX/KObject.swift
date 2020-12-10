//
//  KObject.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

class KObject {
    lazy var handle = Emulator.instance!.kernel.add(self)
    var closed = false

    func close() {
        closed = true
    }
}
