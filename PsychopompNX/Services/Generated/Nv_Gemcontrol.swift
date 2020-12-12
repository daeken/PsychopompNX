class NvGemcontrol_INvGemControl: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown5() throws -> Any? { throw IpcError.unimplemented }
	func unknown6() throws -> Any? { throw IpcError.unimplemented }
	func unknown7() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let (_0, _1) = try unknown1()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
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
			let ret = try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nv::gemcontrol::INvGemControl: \(im.commandId)")
			try! bailout()
		}
	}
}
