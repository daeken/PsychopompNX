class NnEthSf_IEthInterface: IpcService {
	func initialize(_ _0: Buffer<UInt8>) throws -> KObject { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#Initialize") }
	func cancel() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#Cancel") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#GetResult") }
	func getMediaList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#GetMediaList") }
	func setMediaType(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#SetMediaType") }
	func getMediaType() throws -> Any? { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#GetMediaType") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try cancel()
			om.initialize(0, 0, 0)
		
		case 2:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 3:
			try getMediaList(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try setMediaType(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getMediaType()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::eth::sf::IEthInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnEthSf_IEthInterface_Impl: NnEthSf_IEthInterface {
	override func initialize(_ _0: Buffer<UInt8>) throws -> KObject { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#Initialize") }
	override func cancel() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#Cancel") }
	override func getResult() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#GetResult") }
	override func getMediaList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#GetMediaList") }
	override func setMediaType(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#SetMediaType") }
	override func getMediaType() throws -> Any? { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterface#GetMediaType") }
}
*/

class NnEthSf_IEthInterfaceGroup: IpcService {
	func getReadableHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetReadableHandle") }
	func cancel() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#Cancel") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetResult") }
	func getInterfaceList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetInterfaceList") }
	func getInterfaceCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetInterfaceCount") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getReadableHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try cancel()
			om.initialize(0, 0, 0)
		
		case 2:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 3:
			try getInterfaceList(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getInterfaceCount()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::eth::sf::IEthInterfaceGroup: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnEthSf_IEthInterfaceGroup_Impl: NnEthSf_IEthInterfaceGroup {
	override func getReadableHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetReadableHandle") }
	override func cancel() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#Cancel") }
	override func getResult() throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetResult") }
	override func getInterfaceList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetInterfaceList") }
	override func getInterfaceCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::eth::sf::nn::eth::sf::IEthInterfaceGroup#GetInterfaceCount") }
}
*/
