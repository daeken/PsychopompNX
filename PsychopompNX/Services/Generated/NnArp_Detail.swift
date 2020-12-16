class NnArpDetail_IReader: IpcService {
	func getApplicationLaunchProperty(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationLaunchProperty") }
	func getApplicationLaunchPropertyWithApplicationId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationLaunchPropertyWithApplicationId") }
	func getApplicationControlProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationControlProperty") }
	func getApplicationControlPropertyWithApplicationId(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationControlPropertyWithApplicationId") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getApplicationLaunchProperty(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getApplicationLaunchPropertyWithApplicationId(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try getApplicationControlProperty(nil, im.getBuffer(0x16, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try getApplicationControlPropertyWithApplicationId(nil, im.getBuffer(0x16, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::arp::detail::IReader: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnArpDetail_IReader_Impl: NnArpDetail_IReader {
	override func getApplicationLaunchProperty(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationLaunchProperty") }
	override func getApplicationLaunchPropertyWithApplicationId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationLaunchPropertyWithApplicationId") }
	override func getApplicationControlProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationControlProperty") }
	override func getApplicationControlPropertyWithApplicationId(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IReader#GetApplicationControlPropertyWithApplicationId") }
}
*/

class NnArpDetail_IWriter: IpcService {
	func acquireRegistrar() throws -> NnArpDetail_IRegistrar { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IWriter#AcquireRegistrar") }
	func deleteProperties(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IWriter#DeleteProperties") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try acquireRegistrar()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try deleteProperties(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::arp::detail::IWriter: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnArpDetail_IWriter_Impl: NnArpDetail_IWriter {
	override func acquireRegistrar() throws -> NnArpDetail_IRegistrar { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IWriter#AcquireRegistrar") }
	override func deleteProperties(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IWriter#DeleteProperties") }
}
*/

class NnArpDetail_IRegistrar: IpcService {
	func issue(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IRegistrar#Issue") }
	func setApplicationLaunchProperty(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IRegistrar#SetApplicationLaunchProperty") }
	func setApplicationControlProperty(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IRegistrar#SetApplicationControlProperty") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try issue(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try setApplicationLaunchProperty(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try setApplicationControlProperty(im.getBuffer(0x15, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::arp::detail::IRegistrar: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnArpDetail_IRegistrar_Impl: NnArpDetail_IRegistrar {
	override func issue(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IRegistrar#Issue") }
	override func setApplicationLaunchProperty(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IRegistrar#SetApplicationLaunchProperty") }
	override func setApplicationControlProperty(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::arp::detail::nn::arp::detail::IRegistrar#SetApplicationControlProperty") }
}
*/
