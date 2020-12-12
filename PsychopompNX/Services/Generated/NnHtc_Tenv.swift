class NnHtcTenv_IServiceManager: IpcService {
	func getServiceInterface(_ _0: UInt64, _ _1: Pid) throws -> IpcService { throw IpcError.unimplemented(name: "nn::htc::tenv::nn::htc::tenv::IServiceManager#GetServiceInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getServiceInterface(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::htc::tenv::IServiceManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnHtcTenv_IService: IpcService {
	func getVariable(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::htc::tenv::nn::htc::tenv::IService#GetVariable") }
	func getVariableLength(_ _0: [UInt8]) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::htc::tenv::nn::htc::tenv::IService#GetVariableLength") }
	func waitUntilVariableAvailable(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::htc::tenv::nn::htc::tenv::IService#WaitUntilVariableAvailable") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getVariable(im.getBytes(8, 0x40), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			let ret = try getVariableLength(im.getBytes(8, 0x40))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			try waitUntilVariableAvailable(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::htc::tenv::IService: \(im.commandId)")
			try! bailout()
		}
	}
}
