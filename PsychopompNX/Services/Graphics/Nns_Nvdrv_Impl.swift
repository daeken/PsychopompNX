//
//  Nns_Nvdrv_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation

class NnsNvdrv_INvDrvServices_Impl: NnsNvdrv_INvDrvServices {
    var transferMemory: KObject? = nil
    
    override func open(_ path: Buffer<UInt8>) throws -> (fd: UInt32, error_code: UInt32) { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Open") }
    override func ioctl(_ fd: UInt32, _ rq_id: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl") }
    override func _close(_ fd: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Close") }
    
    override func initialize(_ transfer_memory_size: UInt32, _ current_process: KObject, _ transfer_memory: KObject) throws -> UInt32 {
        print("NV initialized")
        transferMemory = transfer_memory
        return 0
    }
    
    override func queryEvent(_ fd: UInt32, _ event_id: UInt32) throws -> (UInt32, KObject) { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#QueryEvent") }
    override func mapSharedMem(_ fd: UInt32, _ nvmap_handle: UInt32, _ _2: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#MapSharedMem") }
    override func getStatus() throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#GetStatus") }
    override func forceSetClientPID(_ pid: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#ForceSetClientPID") }
    
    override func setClientPID(_ _0: UInt64, _ _1: Pid) throws -> UInt32 { 0 }
    
    override func dumpGraphicsMemoryInfo() throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#DumpGraphicsMemoryInfo") }
    override func unknown10(_ _0: UInt32, _ _1: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Unknown10") }
    override func ioctl2(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl2") }
    override func ioctl3(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl3") }
    
    override func unknown13(_ _0: Any?) throws { }
}
