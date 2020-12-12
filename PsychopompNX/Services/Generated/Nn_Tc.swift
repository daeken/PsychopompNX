class NnTc_IManager: IpcService {
	func setOperatingMode(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getThermalEvent(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown6() throws { throw IpcError.unimplemented }
	func unknown7() throws { throw IpcError.unimplemented }
	func unknown8() throws -> Any? { throw IpcError.unimplemented }
	
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
