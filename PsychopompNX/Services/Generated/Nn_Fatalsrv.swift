class NnFatalsrv_IPrivateService: IpcService {
	func getFatalEvent() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getFatalEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::fatalsrv::IPrivateService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFatalsrv_IService: IpcService {
	func throwFatal(_ _0: UInt64, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func throwFatalWithPolicy(_ _0: UInt64, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func throwFatalWithCpuContext(_ errorCode: UInt64, _ _1: UInt64, _ errorBuf: Buffer<UInt8>, _ _3: Pid) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try throwFatal(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 1:
			try throwFatalWithPolicy(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 2:
			try throwFatalWithCpuContext(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x15, 0) as Buffer<UInt8>, im.pid)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fatalsrv::IService: \(im.commandId)")
			try! bailout()
		}
	}
}
