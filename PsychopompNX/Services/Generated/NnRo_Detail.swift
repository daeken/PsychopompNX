class NnRoDetail_IRoInterface: IpcService {
	func unknown0(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: UInt64, _ _5: Pid) throws -> UInt64 { throw IpcError.unimplemented }
	func unknown1(_ _0: UInt64, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: Pid) throws { throw IpcError.unimplemented }
	func unknown3(_ _0: UInt64, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64, im.getData(40) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			try unknown1(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ro::detail::IRoInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnRoDetail_IDebugMonitorInterface: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ro::detail::IDebugMonitorInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
