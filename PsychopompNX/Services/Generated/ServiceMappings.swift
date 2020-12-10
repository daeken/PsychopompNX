//
//  ServiceMappings.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

let ipcServiceMappings: [String: AccessibleIpcService.Type] =
        [
            "sm:": NnSmDetail_IUserInterface_Impl.self
        ]
