class NnTsServer_IMeasurementServer: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ts::server::IMeasurementServer: \(im.commandId)")
			try! bailout()
		}
	}
}
