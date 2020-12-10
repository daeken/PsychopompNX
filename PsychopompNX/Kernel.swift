//
//  Kernel.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/8/20.
//

import Foundation

enum KernelError: Error {
    case unknownNamedPort
    case unknownHandle
    case typeMismatch
}

enum SvcCodes: Int {
    case SetHeapSize = 0x01
    case SetMemoryPermission = 0x02
    case SetMemoryAttribute = 0x03
    case MapMemory = 0x04
    case UnmapMemory = 0x05
    case QueryMemory = 0x06
    case ExitProcess = 0x07
    case CreateThread = 0x08
    case StartThread = 0x09
    case ExitThread = 0x0A
    case SleepThread = 0x0B
    case GetThreadPriority = 0x0C
    case SetThreadPriority = 0x0D
    case GetThreadCoreMask = 0x0E
    case SetThreadCoreMask = 0x0F
    case GetCurrentProcessorNumber = 0x10
    case SignalEvent = 0x11
    case ClearEvent = 0x12
    case MapSharedMemory = 0x13
    case UnmapSharedMemory = 0x14
    case CreateTransferMemory = 0x15
    case CloseHandle = 0x16
    case ResetSignal = 0x17
    case WaitSynchronization = 0x18
    case CancelSynchronization = 0x19
    case ArbitrateLock = 0x1A
    case ArbitrateUnlock = 0x1B
    case WaitProcessWideKeyAtomic = 0x1C
    case SignalProcessWideKey = 0x1D
    case GetSystemTick = 0x1E
    case ConnectToNamedPort = 0x1F
    case SendSyncRequestLight = 0x20
    case SendSyncRequest = 0x21
    case SendSyncRequestWithUserBuffer = 0x22
    case SendAsyncRequestWithUserBuffer = 0x23
    case GetProcessId = 0x24
    case GetThreadId = 0x25
    case Break = 0x26
    case OutputDebugString = 0x27
    case ReturnFromException = 0x28
    case GetInfo = 0x29
    case FlushEntireDataCache = 0x2A
    case FlushDataCache = 0x2B
    case MapPhysicalMemory = 0x2C
    case UnmapPhysicalMemory = 0x2D
    case GetDebugFutureThreadInfo = 0x2E
    case GetLastThreadInfo = 0x2F
    case GetResourceLimitLimitValue = 0x30
    case GetResourceLimitCurrentValue = 0x31
    case SetThreadActivity = 0x32
    case GetThreadContext3 = 0x33
    case WaitForAddress = 0x34
    case SignalToAddress = 0x35
    case SynchronizePreemptionState = 0x36
    case GetResourceLimitPeakValue = 0x37
    case KernelDebug = 0x3C
    case ChangeKernelTraceState = 0x3D
    case CreateSession = 0x40
    case AcceptSession = 0x41
    case ReplyAndReceiveLight = 0x42
    case ReplyAndReceive = 0x43
    case ReplyAndReceiveWithUserBuffer = 0x44
    case CreateEvent = 0x45
    case MapPhysicalMemoryUnsafe = 0x48
    case UnmapPhysicalMemoryUnsafe = 0x49
    case SetUnsafeLimit = 0x4A
    case CreateCodeMemory = 0x4B
    case ControlCodeMemory = 0x4C
    case SleepSystem = 0x4D
    case ReadWriteRegister = 0x4E
    case SetProcessActivity = 0x4F
    case CreateSharedMemory = 0x50
    case MapTransferMemory = 0x51
    case UnmapTransferMemory = 0x52
    case CreateInterruptEvent = 0x53
    case QueryPhysicalAddress = 0x54
    case QueryIoMapping = 0x55
    case CreateDeviceAddressSpace = 0x56
    case AttachDeviceAddressSpace = 0x57
    case DetachDeviceAddressSpace = 0x58
    case MapDeviceAddressSpaceByForce = 0x59
    case MapDeviceAddressSpaceAligned = 0x5A
    case MapDeviceAddressSpace = 0x5B
    case UnmapDeviceAddressSpace = 0x5C
    case InvalidateProcessDataCache = 0x5D
    case StoreProcessDataCache = 0x5E
    case FlushProcessDataCache = 0x5F
    case DebugActiveProcess = 0x60
    case BreakDebugProcess = 0x61
    case TerminateDebugProcess = 0x62
    case GetDebugEvent = 0x63
    case ContinueDebugEvent = 0x64
    case GetProcessList = 0x65
    case GetThreadList = 0x66
    case GetDebugThreadContext = 0x67
    case SetDebugThreadContext = 0x68
    case QueryDebugProcessMemory = 0x69
    case ReadDebugProcessMemory = 0x6A
    case WriteDebugProcessMemory = 0x6B
    case SetHardwareBreakPoint = 0x6C
    case GetDebugThreadParam = 0x6D
    case GetSystemInfo = 0x6F
    case CreatePort = 0x70
    case ManageNamedPort = 0x71
    case ConnectToPort = 0x72
    case SetProcessMemoryPermission = 0x73
    case MapProcessMemory = 0x74
    case UnmapProcessMemory = 0x75
    case QueryProcessMemory = 0x76
    case MapProcessCodeMemory = 0x77
    case UnmapProcessCodeMemory = 0x78
    case CreateProcess = 0x79
    case StartProcess = 0x7A
    case TerminateProcess = 0x7B
    case GetProcessInfo = 0x7C
    case CreateResourceLimit = 0x7D
    case SetResourceLimitLimitValue = 0x7E
    case CallSecureMonitor = 0x7F
}

class Kernel {
    var handleIter : UInt32 = 0
    var handles = [UInt32 : KObject]()
    
    let heapBase: UInt64 = 0x8_0000_0000
    var heapSize: UInt64 = 0
    
    func add(_ object: KObject) -> UInt32 {
        let handle = handleIter
        handleIter += 1
        handles[handle] = object
        return handle
    }
    
    func getHandle<T>(_ handle: UInt32) -> T? {
        handles[handle] as? T
    }
    
    func close(_ handle: UInt32) {
        guard let obj = getHandle(handle) as KObject? else { return }
        obj.close()
        handles.removeValue(forKey: handle)
    }
    
    func svc(_ thread: NxThread, _ svc: Int) throws {
        let code = SvcCodes(rawValue: svc)
        print(code!)
        switch code {
        case .QueryMemory:
            let mi = Vmm.instance!.getVirtInfo(thread.X[2])
            let mip = thread.X[0]
            let tp = GuestPointer<UInt64>(mip)
            tp[0] = mi.base
            tp[1] = mi.size
            let tp2 = GuestPointer<UInt32>(mip + 0x10)
            tp2[2] = 0
            tp2[3] = 0
            tp2[4] = 0
            tp2[5] = 0
            if mi.mapped {
                tp2[0] = 3
                tp2[1] = 0
                tp2[2] |= mi.accessFlags.contains(.el0Read) ? 1 : 0
                tp2[2] |= mi.accessFlags.contains(.el0Write) ? 2 : 0
                tp2[2] |= mi.accessFlags.contains(.el0Execute) ? 4 : 0
            } else {
                tp2[0] = 0
                tp2[1] = 0
                tp2[2] = 0
            }
            thread.X[0] = 0
        
        case .OutputDebugString:
            let ptr = GuestPointer<UInt8>(thread.X[0])
            let size = Int(thread.X[1])
            thread.X[0] = 0
            print("Output debug string: ", String(bytes: (0..<size).map { ptr[$0] }, encoding: .utf8)!)
        
        case .GetThreadPriority:
            thread.X[0] = 0
            thread.X[1] = UInt64(thread.priority)
        
        case .GetThreadId:
            thread.X[0] = 0
            thread.X[1] = thread.id
        
        case .GetInfo:
            let pair = (Int(thread.X[1]), Int(thread.X[3]))
            let handle = thread.X[2]
            var value : uint64 = 0
            thread.X[0] = 0
            switch pair {
            case (2, 0):
                value = 0xbb0000000
            case (3, 0):
                value = 0x1000000000
            case (6, 0):
                value = 0x400000
            case (7, 0):
                value = 0x10000
            case (11, _), (12, 0):
                value = 0
            case (13, 0):
                value = 1 << 40
            case (14, 0):
                value = Emulator.instance!.stackBase
            case (15, 0):
                value = Emulator.instance!.stackSize
            case (16, 0):
                value = 0
            default:
                print_hex("Unhandled GetInfo:", pair, "Handle:", handle)
                thread.X[0] = 0xF001
                try! bailout()
            }
            thread.X[1] = value
        
        case .SignalProcessWideKey:
            print("SignalProcessWideKey")
            thread.X[0] = 0
        
        case .ConnectToNamedPort:
            let name = readNullTerminatedString(thread.X[1])
            print("ConnectToNamedPort: '" + name + "'")
            guard let op = ipcServiceMappings[name]?._construct() else { throw KernelError.unknownNamedPort }
            thread.X[0] = 0
            thread.X[1] = UInt64(op.handle)
            
        case .SendSyncRequest:
            let handle = UInt32(thread.X[0])
            guard let service = getHandle(handle) as IpcService? else {
                thread.X[0] = 0xf601
                return
            }
            let (ret, closeHandle) = try service.handleMessage(thread.TPIDRRO)
            if closeHandle { close(handle) }
            thread.X[0] = UInt64(ret)
        
        case .CloseHandle:
            (getHandle(UInt32(thread.X[0])) as KObject?)?.close()
            thread.X[0] = 0
        
        case .SetHeapSize:
            print_hex("SetHeapSize:", thread.X[1])
            if heapSize != 0 {
                print("Attempted to reallocate heap")
                try! bailout()
            }
            
            heapSize = thread.X[1]
            heapSize = 0x10000000
            let chunks = heapSize / Vmm.instance!.chunkSize
            print("Chunks:", chunks)
            let pages = heapSize / 0x1000
            let (paddr, _) = try Vmm.instance!.mapChunk(Int(chunks))
            for i in 0..<pages {
                try Vmm.instance!.mapVirtualPage(physAddr: paddr + (i * 0x1000), virtAddr: heapBase + (i * 0x1000), accessFlags: AccessFlags.rw)
            }
            print("All mapped")
            
            thread.X[0] = 0
            thread.X[1] = heapBase
        
        default:
            print_hex("Unhandled SVC:", code!)
            try! bailout()
        }
    }
}
