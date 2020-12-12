class NnMmnv_IRequest: IpcService {
	func initializeOld(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented }
	func finalizeOld(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setAndWaitOld(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented }
	func getOld(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func initialize(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func finalize(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setAndWait(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented }
	func get(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeOld(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeOld(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 2:
			try setAndWaitOld(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getOld(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try initialize(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 5:
			try finalize(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try setAndWait(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try get(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::mmnv::IRequest: \(im.commandId)")
			try! bailout()
		}
	}
}
