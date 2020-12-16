class NvGemcoredump_INvGemCoreDump: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nv::gemcoredump::nv::gemcoredump::INvGemCoreDump#Unknown0") }
	func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nv::gemcoredump::nv::gemcoredump::INvGemCoreDump#Unknown1") }
	func unknown2(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nv::gemcoredump::nv::gemcoredump::INvGemCoreDump#Unknown2") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(im.getBuffer(0x22, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nv::gemcoredump::INvGemCoreDump: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NvGemcoredump_INvGemCoreDump_Impl: NvGemcoredump_INvGemCoreDump {
	override func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nv::gemcoredump::nv::gemcoredump::INvGemCoreDump#Unknown0") }
	override func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nv::gemcoredump::nv::gemcoredump::INvGemCoreDump#Unknown1") }
	override func unknown2(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nv::gemcoredump::nv::gemcoredump::INvGemCoreDump#Unknown2") }
}
*/
