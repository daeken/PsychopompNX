class NnJitsrv_IJitService: IpcService {
	func createJitEnvironment(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createJitEnvironment(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::jitsrv::IJitService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnJitsrv_IJitEnvironment: IpcService {
	func control(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func generateCode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func loadPlugin(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getCodeAddress(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try control(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try generateCode(nil)
			om.initialize(0, 0, 0)
		
		case 1000:
			let ret = try loadPlugin(nil)
			om.initialize(0, 0, 0)
		
		case 1001:
			let ret = try getCodeAddress(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::jitsrv::IJitEnvironment: \(im.commandId)")
			try! bailout()
		}
	}
}
