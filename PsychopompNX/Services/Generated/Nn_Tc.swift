class NnTc_IManager: IpcService {
	func setOperatingMode(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#SetOperatingMode") }
	func getThermalEvent(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#GetThermalEvent") }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown4") }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown5") }
	func unknown6() throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown6") }
	func unknown7() throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown7") }
	func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown8") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setOperatingMode(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getThermalEvent(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6()
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7()
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::tc::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnTc_IManager_Impl: NnTc_IManager {
	override func setOperatingMode(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#SetOperatingMode") }
	override func getThermalEvent(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#GetThermalEvent") }
	override func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown2") }
	override func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown3") }
	override func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown4") }
	override func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown5") }
	override func unknown6() throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown6") }
	override func unknown7() throws { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown7") }
	override func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::tc::nn::tc::IManager#Unknown8") }
}
*/
