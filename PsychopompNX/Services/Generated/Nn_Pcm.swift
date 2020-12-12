class NnPcm_IManager: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcm::nn::pcm::IManager#Unknown0") }
	func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcm::nn::pcm::IManager#Unknown1") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pcm::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPcm_IManager_Impl: NnPcm_IManager {
	override func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcm::nn::pcm::IManager#Unknown0") }
	override func unknown1(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pcm::nn::pcm::IManager#Unknown1") }
}
*/
