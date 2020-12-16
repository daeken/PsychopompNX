class NnAhid_IServerSession: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown0") }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown1") }
	func unknown2(_ _0: Any?) throws -> NnAhid_ICtrlSession { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown2") }
	func unknown3(_ _0: Any?) throws -> NnAhid_IReadSession { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown3") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try unknown3(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ahid::IServerSession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAhid_IServerSession_Impl: NnAhid_IServerSession {
	override func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown0") }
	override func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown1") }
	override func unknown2(_ _0: Any?) throws -> NnAhid_ICtrlSession { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown2") }
	override func unknown3(_ _0: Any?) throws -> NnAhid_IReadSession { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IServerSession#Unknown3") }
}
*/

class NnAhid_IWriteSession: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IWriteSession#Unknown0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ahid::IWriteSession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAhid_IWriteSession_Impl: NnAhid_IWriteSession {
	override func unknown0(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IWriteSession#Unknown0") }
}
*/

class NnAhid_ICtrlSession: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown0") }
	func unknown1(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown2") }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown3") }
	func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown4") }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown5") }
	func unknown6(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown6") }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown7") }
	func unknown8(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown8") }
	func unknown9(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown9") }
	func unknown10() throws -> KObject { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown10") }
	func unknown11() throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown11") }
	func unknown12(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown12") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try unknown8(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try unknown9(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 11:
			try unknown11()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ahid::ICtrlSession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAhid_ICtrlSession_Impl: NnAhid_ICtrlSession {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown0") }
	override func unknown1(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown1") }
	override func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown2") }
	override func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown3") }
	override func unknown4(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown4") }
	override func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown5") }
	override func unknown6(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown6") }
	override func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown7") }
	override func unknown8(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown8") }
	override func unknown9(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown9") }
	override func unknown10() throws -> KObject { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown10") }
	override func unknown11() throws { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown11") }
	override func unknown12(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::ICtrlSession#Unknown12") }
}
*/

class NnAhid_IReadSession: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IReadSession#Unknown0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ahid::IReadSession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAhid_IReadSession_Impl: NnAhid_IReadSession {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ahid::nn::ahid::IReadSession#Unknown0") }
}
*/
