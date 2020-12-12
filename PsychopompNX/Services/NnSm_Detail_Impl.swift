//
//  NnSm_Detail.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

class NnSmDetail_IUserInterface_Impl: NnSmDetail_IUserInterface {
    override func initialize(_ _0: Pid, _ reserved: UInt64) throws { throw IpcError.unimplemented }
    override func getService(_ name: ServiceName) throws -> IpcService { throw IpcError.unimplemented }
    override func registerService(_ name: ServiceName, _ _1: UInt8, _ maxHandles: UInt32) throws -> IpcService { throw IpcError.unimplemented }
    override func unregisterService(_ name: ServiceName) throws { throw IpcError.unimplemented }
}
