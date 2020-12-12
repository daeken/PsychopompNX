class NnFanDetail_IController: IpcService {
	func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown0") }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown1") }
	func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown3") }
	func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown4") }
	func unknown5() throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown5") }
	func unknown6() throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown6") }
	func unknown7() throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown7") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fan::detail::IController: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnFanDetail_IController_Impl: NnFanDetail_IController {
	override func unknown0(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown0") }
	override func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown1") }
	override func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown2") }
	override func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown3") }
	override func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown4") }
	override func unknown5() throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown5") }
	override func unknown6() throws { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown6") }
	override func unknown7() throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IController#Unknown7") }
}
*/

class NnFanDetail_IManager: IpcService {
	func unknown0(_ _0: Any?) throws -> NnFanDetail_IController { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown0") }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown1") }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown2") }
	func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown3") }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown4") }
	func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown5") }
	func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown6") }
	func unknown7(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown7") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(nil)
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
			let ret = try unknown7(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fan::detail::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnFanDetail_IManager_Impl: NnFanDetail_IManager {
	override func unknown0(_ _0: Any?) throws -> NnFanDetail_IController { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown0") }
	override func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown1") }
	override func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown2") }
	override func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown3") }
	override func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown4") }
	override func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown5") }
	override func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown6") }
	override func unknown7(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fan::detail::nn::fan::detail::IManager#Unknown7") }
}
*/
