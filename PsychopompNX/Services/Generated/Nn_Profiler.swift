class NnProfiler_IProfiler: IpcService {
	func getSystemEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func startSignalingEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func stopSignalingEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSystemEvent(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try startSignalingEvent(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try stopSignalingEvent(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::profiler::IProfiler: \(im.commandId)")
			try! bailout()
		}
	}
}
