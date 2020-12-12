class NnBgtc_IStateControlService: IpcService {
	func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown1") }
	func unknown2() throws -> KObject { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown3") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown4") }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown5") }
	
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

/*
class NnBgtc_IStateControlService_Impl: NnBgtc_IStateControlService {
	override func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown1") }
	override func unknown2() throws -> KObject { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown2") }
	override func unknown3() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown3") }
	override func unknown4() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown4") }
	override func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::IStateControlService#Unknown5") }
}
*/

class NnBgtc_ITaskService: IpcService {
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown2") }
	func unknown3() throws -> KObject { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown3") }
	func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown4") }
	func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown5") }
	func unknown6() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown6") }
	func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown11") }
	func unknown12() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown12") }
	func unknown13() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown13") }
	func unknown14() throws -> KObject { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown14") }
	func unknown15(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown15") }
	func unknown101() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown101") }
	func unknown102() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown102") }
	func unknown103() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown103") }
	
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

/*
class NnBgtc_ITaskService_Impl: NnBgtc_ITaskService {
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown1") }
	override func unknown2() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown2") }
	override func unknown3() throws -> KObject { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown3") }
	override func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown4") }
	override func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown5") }
	override func unknown6() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown6") }
	override func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown11") }
	override func unknown12() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown12") }
	override func unknown13() throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown13") }
	override func unknown14() throws -> KObject { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown14") }
	override func unknown15(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown15") }
	override func unknown101() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown101") }
	override func unknown102() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown102") }
	override func unknown103() throws -> Any? { throw IpcError.unimplemented(name: "nn::bgtc::nn::bgtc::ITaskService#Unknown103") }
}
*/
