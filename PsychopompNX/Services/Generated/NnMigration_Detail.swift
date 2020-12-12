class NnMigrationDetail_IAsyncContext: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown1") }
	func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown3") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::migration::detail::IAsyncContext: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnMigrationDetail_IAsyncContext_Impl: NnMigrationDetail_IAsyncContext {
	override func unknown0() throws -> KObject { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown0") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown1") }
	override func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown2") }
	override func unknown3() throws { throw IpcError.unimplemented(name: "nn::migration::detail::nn::migration::detail::IAsyncContext#Unknown3") }
}
*/
