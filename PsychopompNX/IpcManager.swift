//
//  IpcManager.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

protocol IpcService: KObject {
    func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage)
}

protocol AccessibleIpcService: IpcService {
    static func _construct() -> AccessibleIpcService
}

class IncomingMessage {
}

class OutgoingMessage {
}

class IpcManager {
    let serviceMappings = ipcServiceMappings
    
    init() {
    }
}
