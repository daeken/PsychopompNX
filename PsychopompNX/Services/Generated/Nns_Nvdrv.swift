class NnsNvdrv_INvDrvDebugFSServices: IpcService {
	func openLog(_ _0: KObject) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#OpenLog") }
	func closeLog(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#CloseLog") }
	func readLog(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#ReadLog") }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#Unknown3") }
	func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#Unknown4") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openLog(try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 1:
			try closeLog(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try readLog(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x5, 1)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nns::nvdrv::INvDrvDebugFSServices: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnsNvdrv_INvDrvDebugFSServices_Impl: NnsNvdrv_INvDrvDebugFSServices {
	override func openLog(_ _0: KObject) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#OpenLog") }
	override func closeLog(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#CloseLog") }
	override func readLog(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#ReadLog") }
	override func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#Unknown3") }
	override func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvDebugFSServices#Unknown4") }
}
*/

class NnsNvdrv_INvDrvServices: IpcService {
	func open(_ path: Buffer<UInt8>) throws -> (fd: UInt32, error_code: UInt32) { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Open") }
	func ioctl(_ fd: UInt32, _ rq_id: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl") }
	func _close(_ fd: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Close") }
	func initialize(_ transfer_memory_size: UInt32, _ current_process: KObject, _ transfer_memory: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Initialize") }
	func queryEvent(_ fd: UInt32, _ event_id: UInt32) throws -> (UInt32, KObject) { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#QueryEvent") }
	func mapSharedMem(_ fd: UInt32, _ nvmap_handle: UInt32, _ _2: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#MapSharedMem") }
	func getStatus() throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#GetStatus") }
	func forceSetClientPID(_ pid: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#ForceSetClientPID") }
	func setClientPID(_ _0: UInt64, _ _1: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#SetClientPID") }
	func dumpGraphicsMemoryInfo() throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#DumpGraphicsMemoryInfo") }
	func unknown10(_ _0: UInt32, _ _1: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Unknown10") }
	func ioctl2(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl2") }
	func ioctl3(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl3") }
	func unknown13(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Unknown13") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try open(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 1:
			let ret = try ioctl(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0x21, 0)! as Buffer<UInt8>, im.getBuffer(0x22, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try _close(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try initialize(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(1)) as KObject)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let (_0, _1) = try queryEvent(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 1, 4)
			om.setData(8, _0)
			om.copy(0, _1)
		
		case 5:
			let ret = try mapSharedMem(im.getData(8) as UInt32, im.getData(12) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try getStatus()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try forceSetClientPID(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 8:
			let ret = try setClientPID(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			try dumpGraphicsMemoryInfo()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 11:
			let ret = try ioctl2(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0x21, 0)! as Buffer<UInt8>, im.getBuffer(0x21, 1)! as Buffer<UInt8>, im.getBuffer(0x22, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 12:
			let ret = try ioctl3(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0x21, 0)! as Buffer<UInt8>, im.getBuffer(0x22, 0)! as Buffer<UInt8>, im.getBuffer(0x22, 1)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			try unknown13(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nns::nvdrv::INvDrvServices: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnsNvdrv_INvDrvServices_Impl: NnsNvdrv_INvDrvServices {
	override func open(_ path: Buffer<UInt8>) throws -> (fd: UInt32, error_code: UInt32) { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Open") }
	override func ioctl(_ fd: UInt32, _ rq_id: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl") }
	override func _close(_ fd: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Close") }
	override func initialize(_ transfer_memory_size: UInt32, _ current_process: KObject, _ transfer_memory: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Initialize") }
	override func queryEvent(_ fd: UInt32, _ event_id: UInt32) throws -> (UInt32, KObject) { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#QueryEvent") }
	override func mapSharedMem(_ fd: UInt32, _ nvmap_handle: UInt32, _ _2: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#MapSharedMem") }
	override func getStatus() throws -> Any? { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#GetStatus") }
	override func forceSetClientPID(_ pid: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#ForceSetClientPID") }
	override func setClientPID(_ _0: UInt64, _ _1: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#SetClientPID") }
	override func dumpGraphicsMemoryInfo() throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#DumpGraphicsMemoryInfo") }
	override func unknown10(_ _0: UInt32, _ _1: KObject) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Unknown10") }
	override func ioctl2(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl2") }
	override func ioctl3(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Ioctl3") }
	override func unknown13(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nns::nvdrv::nns::nvdrv::INvDrvServices#Unknown13") }
}
*/
