//
//  NnPctlDetail_Ipc_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

class NnPctlDetailIpc_IParentalControlServiceFactory_Impl: NnPctlDetailIpc_IParentalControlServiceFactory {
    override func createService(_ _0: UInt64, _ _1: Pid) throws -> NnPctlDetailIpc_IParentalControlService { NnPctlDetailIpc_IParentalControlService() }
    override func createServiceWithoutInitialize(_ _0: UInt64, _ _1: Pid) throws -> NnPctlDetailIpc_IParentalControlService { NnPctlDetailIpc_IParentalControlService() }
}
