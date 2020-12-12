class NvMemoryProfiler_IMemoryProfiler: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nv::MemoryProfiler::nv::MemoryProfiler::IMemoryProfiler#Unknown0") }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nv::MemoryProfiler::nv::MemoryProfiler::IMemoryProfiler#Unknown1") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nv::MemoryProfiler::IMemoryProfiler: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NvMemoryProfiler_IMemoryProfiler_Impl: NvMemoryProfiler_IMemoryProfiler {
	override func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nv::MemoryProfiler::nv::MemoryProfiler::IMemoryProfiler#Unknown0") }
	override func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nv::MemoryProfiler::nv::MemoryProfiler::IMemoryProfiler#Unknown1") }
}
*/
