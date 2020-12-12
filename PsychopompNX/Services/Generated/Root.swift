typealias Packed_Addrinfo = Any?
typealias ServiceName = [UInt8]

class JpegDecoder: IpcService {
	func unknown3001(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 3001:
			try unknown3001(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to JpegDecoder: \(im.commandId)")
			try! bailout()
		}
	}
}

class CecManagerSubinterface100: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented }
	func unknown1() throws -> Any? { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to CecManagerSubinterface100: \(im.commandId)")
			try! bailout()
		}
	}
}
