typealias NnPcv_PowerDomainState = Any?
typealias NnPcv_PowerControlTarget = UInt32
typealias NnPcv_ModuleState = Any?
typealias NnPcv_TemperatureThreshold = Any?

class NnPcv_IImmediateManager: IpcService {
	func setClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::nn::pcv::IImmediateManager#SetClockRate") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setClockRate(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pcv::IImmediateManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPcv_IImmediateManager_Impl: NnPcv_IImmediateManager {
	override func setClockRate(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::nn::pcv::IImmediateManager#SetClockRate") }
}
*/

class NnPcv_IArbitrationManager: IpcService {
	func releaseControl(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::nn::pcv::IArbitrationManager#ReleaseControl") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try releaseControl(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pcv::IArbitrationManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPcv_IArbitrationManager_Impl: NnPcv_IArbitrationManager {
	override func releaseControl(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pcv::nn::pcv::IArbitrationManager#ReleaseControl") }
}
*/
