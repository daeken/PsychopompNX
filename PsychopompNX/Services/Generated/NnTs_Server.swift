class NnTsServer_IMeasurementServer: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown0") }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown1") }
	func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown2") }
	func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown3") }
	
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

/*
class NnTsServer_IMeasurementServer_Impl: NnTsServer_IMeasurementServer {
	override func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown0") }
	override func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown1") }
	override func unknown2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown2") }
	override func unknown3(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ts::server::nn::ts::server::IMeasurementServer#Unknown3") }
}
*/
