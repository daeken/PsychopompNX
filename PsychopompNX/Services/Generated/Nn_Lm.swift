class NnLm_ILogService: IpcService {
	func initialize(_ _0: UInt64, _ _1: Pid) throws -> NnLm_ILogger { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogService#Initialize") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::lm::ILogService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnLm_ILogService_Impl: NnLm_ILogService {
	override func initialize(_ _0: UInt64, _ _1: Pid) throws -> NnLm_ILogger { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogService#Initialize") }
}
*/

class NnLm_ILogGetter: IpcService {
	func startLogging(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogGetter#StartLogging") }
	func stopLogging(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogGetter#StopLogging") }
	func getLog(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogGetter#GetLog") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try startLogging(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try stopLogging(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getLog(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::lm::ILogGetter: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnLm_ILogGetter_Impl: NnLm_ILogGetter {
	override func startLogging(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogGetter#StartLogging") }
	override func stopLogging(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogGetter#StopLogging") }
	override func getLog(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogGetter#GetLog") }
}
*/

class NnLm_ILogger: IpcService {
	func initialize(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogger#Initialize") }
	func setDestination(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogger#SetDestination") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try setDestination(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::lm::ILogger: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnLm_ILogger_Impl: NnLm_ILogger {
	override func initialize(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogger#Initialize") }
	override func setDestination(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::lm::nn::lm::ILogger#SetDestination") }
}
*/
