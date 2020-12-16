class NnPdmDetail_INotifyService: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown0") }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown3") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown4") }
	func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown5") }
	func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown6") }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown7") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pdm::detail::INotifyService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPdmDetail_INotifyService_Impl: NnPdmDetail_INotifyService {
	override func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown0") }
	override func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown2") }
	override func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown3") }
	override func unknown4() throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown4") }
	override func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown5") }
	override func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown6") }
	override func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::INotifyService#Unknown7") }
}
*/

class NnPdmDetail_IQueryService: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown0") }
	func unknown1(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown2") }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown3") }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown4") }
	func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown5") }
	func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown6") }
	func unknown7(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown7") }
	func unknown8(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown8") }
	func unknown9() throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown9") }
	func unknown10(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown10") }
	func unknown11(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown11") }
	func unknown12(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown12") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7(im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try unknown9()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pdm::detail::IQueryService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPdmDetail_IQueryService_Impl: NnPdmDetail_IQueryService {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown0") }
	override func unknown1(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown1") }
	override func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown2") }
	override func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown3") }
	override func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown4") }
	override func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown5") }
	override func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown6") }
	override func unknown7(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown7") }
	override func unknown8(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown8") }
	override func unknown9() throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown9") }
	override func unknown10(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown10") }
	override func unknown11(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown11") }
	override func unknown12(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pdm::detail::nn::pdm::detail::IQueryService#Unknown12") }
}
*/
