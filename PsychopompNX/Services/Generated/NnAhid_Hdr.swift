class NnAhidHdr_ISession: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown0") }
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown2") }
	func unknown3(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown4") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ahid::hdr::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAhidHdr_ISession_Impl: NnAhidHdr_ISession {
	override func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown0") }
	override func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown1") }
	override func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown2") }
	override func unknown3(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown3") }
	override func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::hdr::nn::ahid::hdr::ISession#Unknown4") }
}
*/
