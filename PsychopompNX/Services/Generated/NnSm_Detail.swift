class NnSmDetail_IManagerInterface: IpcService {
	func registerProcess(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::sm::detail::nn::sm::detail::IManagerInterface#RegisterProcess") }
	func unregisterProcess(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::sm::detail::nn::sm::detail::IManagerInterface#UnregisterProcess") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try registerProcess(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unregisterProcess(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::sm::detail::IManagerInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSmDetail_IUserInterface: IpcService {
	func initialize(_ _0: Pid, _ reserved: UInt64) throws { throw IpcError.unimplemented(name: "nn::sm::detail::nn::sm::detail::IUserInterface#Initialize") }
	func getService(_ name: ServiceName) throws -> IpcService { throw IpcError.unimplemented(name: "nn::sm::detail::nn::sm::detail::IUserInterface#GetService") }
	func registerService(_ name: ServiceName, _ _1: UInt8, _ maxHandles: UInt32) throws -> IpcService { throw IpcError.unimplemented(name: "nn::sm::detail::nn::sm::detail::IUserInterface#RegisterService") }
	func unregisterService(_ name: ServiceName) throws { throw IpcError.unimplemented(name: "nn::sm::detail::nn::sm::detail::IUserInterface#UnregisterService") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.pid, im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getService(im.getBytes(8, 0x8))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try registerService(im.getBytes(8, 0x8), im.getData(16) as UInt8, im.getData(20) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			try unregisterService(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::sm::detail::IUserInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
