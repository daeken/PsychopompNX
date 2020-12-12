class NnBgtc_IStateControlService: IpcService {
	func unknown1() throws -> Any? { throw IpcError.unimplemented }
	func unknown2() throws -> KObject { throw IpcError.unimplemented }
	func unknown3() throws { throw IpcError.unimplemented }
	func unknown4() throws { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bgtc::IStateControlService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBgtc_ITaskService: IpcService {
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown3() throws -> KObject { throw IpcError.unimplemented }
	func unknown4() throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown6() throws -> Any? { throw IpcError.unimplemented }
	func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown12() throws -> Any? { throw IpcError.unimplemented }
	func unknown13() throws { throw IpcError.unimplemented }
	func unknown14() throws -> KObject { throw IpcError.unimplemented }
	func unknown15(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown101() throws -> Any? { throw IpcError.unimplemented }
	func unknown102() throws -> Any? { throw IpcError.unimplemented }
	func unknown103() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6()
			om.initialize(0, 0, 0)
		
		case 11:
			try unknown11(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12()
			om.initialize(0, 0, 0)
		
		case 13:
			try unknown13()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 15:
			try unknown15(nil)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try unknown101()
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try unknown102()
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try unknown103()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bgtc::ITaskService: \(im.commandId)")
			try! bailout()
		}
	}
}
