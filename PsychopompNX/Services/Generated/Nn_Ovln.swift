class NnOvln_ISenderService: IpcService {
	func unknown0(_ _0: Any?) throws -> NnOvln_ISender { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ovln::ISenderService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnOvln_IReceiver: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown2() throws -> KObject { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	func unknown4() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ovln::IReceiver: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnOvln_ISender: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown1() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ovln::ISender: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnOvln_IReceiverService: IpcService {
	func unknown0() throws -> NnOvln_IReceiver { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ovln::IReceiverService: \(im.commandId)")
			try! bailout()
		}
	}
}
