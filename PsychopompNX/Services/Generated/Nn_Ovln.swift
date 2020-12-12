class NnOvln_ISenderService: IpcService {
	func unknown0(_ _0: Any?) throws -> NnOvln_ISender { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::ISenderService#Unknown0") }
	
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

/*
class NnOvln_ISenderService_Impl: NnOvln_ISenderService {
	override func unknown0(_ _0: Any?) throws -> NnOvln_ISender { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::ISenderService#Unknown0") }
}
*/

class NnOvln_IReceiver: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown0") }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown1") }
	func unknown2() throws -> KObject { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown2") }
	func unknown3() throws -> Any? { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown3") }
	func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown4") }
	
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

/*
class NnOvln_IReceiver_Impl: NnOvln_IReceiver {
	override func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown0") }
	override func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown1") }
	override func unknown2() throws -> KObject { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown2") }
	override func unknown3() throws -> Any? { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown3") }
	override func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiver#Unknown4") }
}
*/

class NnOvln_ISender: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::ISender#Unknown0") }
	func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::ISender#Unknown1") }
	
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

/*
class NnOvln_ISender_Impl: NnOvln_ISender {
	override func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::ISender#Unknown0") }
	override func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::ISender#Unknown1") }
}
*/

class NnOvln_IReceiverService: IpcService {
	func unknown0() throws -> NnOvln_IReceiver { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiverService#Unknown0") }
	
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

/*
class NnOvln_IReceiverService_Impl: NnOvln_IReceiverService {
	override func unknown0() throws -> NnOvln_IReceiver { throw IpcError.unimplemented(name: "nn::ovln::nn::ovln::IReceiverService#Unknown0") }
}
*/
