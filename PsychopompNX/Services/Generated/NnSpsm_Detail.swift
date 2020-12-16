class NnSpsmDetail_IPowerStateInterface: IpcService {
	func getState() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#GetState") }
	func sleepSystemAndWaitAwake() throws -> KObject { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#SleepSystemAndWaitAwake") }
	func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown3") }
	func getNotificationMessageEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#GetNotificationMessageEventHandle") }
	func unknown5() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown5") }
	func unknown6() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown6") }
	func unknown7() throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown7") }
	func analyzePerformanceLogForLastSleepWakeSequence(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#AnalyzePerformanceLogForLastSleepWakeSequence") }
	func changeHomeButtonLongPressingTime(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#ChangeHomeButtonLongPressingTime") }
	func unknown10() throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown10") }
	func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown11") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getState()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try sleepSystemAndWaitAwake()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getNotificationMessageEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6()
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7()
			om.initialize(0, 0, 0)
		
		case 8:
			try analyzePerformanceLogForLastSleepWakeSequence(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try changeHomeButtonLongPressingTime(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			try unknown10()
			om.initialize(0, 0, 0)
		
		case 11:
			try unknown11(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spsm::detail::IPowerStateInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSpsmDetail_IPowerStateInterface_Impl: NnSpsmDetail_IPowerStateInterface {
	override func getState() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#GetState") }
	override func sleepSystemAndWaitAwake() throws -> KObject { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#SleepSystemAndWaitAwake") }
	override func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown2") }
	override func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown3") }
	override func getNotificationMessageEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#GetNotificationMessageEventHandle") }
	override func unknown5() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown5") }
	override func unknown6() throws -> Any? { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown6") }
	override func unknown7() throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown7") }
	override func analyzePerformanceLogForLastSleepWakeSequence(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#AnalyzePerformanceLogForLastSleepWakeSequence") }
	override func changeHomeButtonLongPressingTime(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#ChangeHomeButtonLongPressingTime") }
	override func unknown10() throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown10") }
	override func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::spsm::detail::nn::spsm::detail::IPowerStateInterface#Unknown11") }
}
*/
