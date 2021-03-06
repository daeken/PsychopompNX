class NnProfiler_IProfiler: IpcService {
	func getSystemEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::profiler::nn::profiler::IProfiler#GetSystemEvent") }
	func startSignalingEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::profiler::nn::profiler::IProfiler#StartSignalingEvent") }
	func stopSignalingEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::profiler::nn::profiler::IProfiler#StopSignalingEvent") }
	
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

/*
class NnProfiler_IProfiler_Impl: NnProfiler_IProfiler {
	override func getSystemEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::profiler::nn::profiler::IProfiler#GetSystemEvent") }
	override func startSignalingEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::profiler::nn::profiler::IProfiler#StartSignalingEvent") }
	override func stopSignalingEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::profiler::nn::profiler::IProfiler#StopSignalingEvent") }
}
*/
