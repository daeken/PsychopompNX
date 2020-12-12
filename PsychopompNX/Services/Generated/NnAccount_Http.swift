class NnAccountHttp_IOAuthProcedure: IpcService {
	func prepareAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented }
	func getRequest(_ _0: Buffer<NnAccount_RequestUrl>, _ _1: Buffer<NnAccount_CallbackUri>) throws { throw IpcError.unimplemented }
	func applyResponse(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func applyResponseAsync(_ _0: Buffer<UInt8>) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented }
	func suspend() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try prepareAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try getRequest(im.getBuffer(0x1a, 0) as Buffer<NnAccount_RequestUrl>, im.getBuffer(0x1a, 1) as Buffer<NnAccount_CallbackUri>)
			om.initialize(0, 0, 0)
		
		case 2:
			try applyResponse(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try applyResponseAsync(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try suspend()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::account::http::IOAuthProcedure: \(im.commandId)")
			try! bailout()
		}
	}
}
