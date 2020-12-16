//
//  Nn_Lm_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

class NnLm_ILogService_Impl: NnLm_ILogService {
    override func initialize(_ _0: UInt64, _ _1: Pid) throws -> NnLm_ILogger { NnLm_ILogger_Impl() }
}

class NnLm_ILogger_Impl: NnLm_ILogger {
    override func initialize(_ _0: Buffer<UInt8>) throws { }
    override func setDestination(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogger#SetDestination") }
}
