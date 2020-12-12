class NnSfHipcDetail_IHipcManager: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Any?) throws -> IpcService { throw IpcError.unimplemented }
	func unknown2() throws -> IpcService { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> IpcService { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try unknown2()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::sf::hipc::detail::IHipcManager: \(im.commandId)")
			try! bailout()
		}
	}
}
