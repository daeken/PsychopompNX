//
//  Nns_Nvdrv_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation

enum NvError: Error {
    case unknownHandle
}

class NnsNvdrv_INvDrvServices_Impl: NnsNvdrv_INvDrvServices {
    var transferMemory: KObject? = nil
    var handles = [UInt32:NvDevice]()
    var handleIter: UInt32 = 0
    
    func open(_ device: NvDevice) -> UInt32 {
        handleIter += 1
        handles[handleIter] = device
        return handleIter
    }
    
    override func open(_ path: Buffer<UInt8>) throws -> (fd: UInt32, error_code: UInt32) {
        let fn = String(bytes: path, encoding: .ascii)!
        switch fn {
        case "/dev/nvhost-as-gpu":
            return (open(NvhostAsGpu()), 0)
        case "/dev/nvhost-ctrl-gpu":
            return (open(NvhostCtrlGpu()), 0)
        default:
            print("Unhandled path to nvdrv open: '\(fn)'")
            try! bailout()
            return (0, 0)
        }
    }
    
    override func ioctl(_ fd: UInt32, _ rq_id: UInt32, _ inBuf: Buffer<UInt8>, _ outBuf: Buffer<UInt8>) throws -> UInt32 {
        guard let device = handles[fd] else { throw NvError.unknownHandle }
        return device.ioctl(rq_id, inBuf, outBuf)
    }
    
    override func _close(_ fd: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Close") }
    
    override func initialize(_ transfer_memory_size: UInt32, _ current_process: KObject, _ transfer_memory: KObject) throws -> UInt32 {
        print("NV initialized")
        transferMemory = transfer_memory
        return 0
    }
    
    override func queryEvent(_ fd: UInt32, _ event_id: UInt32) throws -> (UInt32, KObject) {
        guard let device = handles[fd] else { throw NvError.unknownHandle }
        return (0, device.getEvent(event_id))
    }
    
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
