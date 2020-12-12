class NnIdleDetail_IPolicyManagerSystem: IpcService {
	func getAutoPowerDownEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#GetAutoPowerDownEvent") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown3") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown4") }
	func unknown5() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown5") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getAutoPowerDownEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::idle::detail::IPolicyManagerSystem: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnIdleDetail_IPolicyManagerSystem_Impl: NnIdleDetail_IPolicyManagerSystem {
	override func getAutoPowerDownEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#GetAutoPowerDownEvent") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown1") }
	override func unknown2() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown2") }
	override func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown3") }
	override func unknown4() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown4") }
	override func unknown5() throws { throw IpcError.unimplemented(name: "nn::idle::detail::nn::idle::detail::IPolicyManagerSystem#Unknown5") }
}
*/
