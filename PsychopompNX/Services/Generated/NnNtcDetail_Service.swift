class NnNtcDetailService_IEnsureNetworkClockAvailabilityService: IpcService {
	func startTask() throws { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService#StartTask") }
	func getFinishNotificationEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService#GetFinishNotificationEvent") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService#GetResult") }
	func cancel() throws { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService#Cancel") }
	func isProcessing() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService#IsProcessing") }
	func getServerTime() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService#GetServerTime") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try startTask()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getFinishNotificationEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 3:
			try cancel()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try isProcessing()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 5:
			let ret = try getServerTime()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::ntc::detail::service::IEnsureNetworkClockAvailabilityService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNtcDetailService_IStaticService: IpcService {
	func openEnsureNetworkClockAvailabilityService(_ _0: UInt32, _ _1: UInt32) throws -> NnNtcDetailService_IEnsureNetworkClockAvailabilityService { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IStaticService#OpenEnsureNetworkClockAvailabilityService") }
	func suspendAutonomicTimeCorrection() throws { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IStaticService#SuspendAutonomicTimeCorrection") }
	func resumeAutonomicTimeCorrection() throws { throw IpcError.unimplemented(name: "nn::ntc::detail::service::nn::ntc::detail::service::IStaticService#ResumeAutonomicTimeCorrection") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openEnsureNetworkClockAvailabilityService(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 100:
			try suspendAutonomicTimeCorrection()
			om.initialize(0, 0, 0)
		
		case 101:
			try resumeAutonomicTimeCorrection()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ntc::detail::service::IStaticService: \(im.commandId)")
			try! bailout()
		}
	}
}
