class NnSrepoDetailIpc_ISrepoService: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::srepo::detail::ipc::nn::srepo::detail::ipc::ISrepoService#Unknown0") }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::srepo::detail::ipc::nn::srepo::detail::ipc::ISrepoService#Unknown1") }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::srepo::detail::ipc::nn::srepo::detail::ipc::ISrepoService#Unknown2") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::srepo::detail::ipc::ISrepoService: \(im.commandId)")
			try! bailout()
		}
	}
}
