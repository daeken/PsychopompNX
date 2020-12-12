class NnBpc_IRtcManager: IpcService {
	func getExternalRtcValue() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IRtcManager#GetExternalRtcValue") }
	func setExternalRtcValue(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IRtcManager#SetExternalRtcValue") }
	func readExternalRtcResetFlag() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IRtcManager#ReadExternalRtcResetFlag") }
	func clearExternalRtcResetFlag() throws { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IRtcManager#ClearExternalRtcResetFlag") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getExternalRtcValue()
			om.initialize(0, 0, 0)
		
		case 1:
			try setExternalRtcValue(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try readExternalRtcResetFlag()
			om.initialize(0, 0, 0)
		
		case 3:
			try clearExternalRtcResetFlag()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bpc::IRtcManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBpc_IWakeupConfigManager: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IWakeupConfigManager#Unknown0") }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IWakeupConfigManager#Unknown1") }
	func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IWakeupConfigManager#Unknown2") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bpc::IWakeupConfigManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBpc_IBoardPowerControlManager: IpcService {
	func shutdownSystem() throws { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#ShutdownSystem") }
	func rebootSystem() throws { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#RebootSystem") }
	func getWakeupReason() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#GetWakeupReason") }
	func getShutdownReason() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#GetShutdownReason") }
	func getAcOk() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#GetAcOk") }
	func getBoardPowerControlEvent(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#GetBoardPowerControlEvent") }
	func getSleepButtonState() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#GetSleepButtonState") }
	func getPowerEvent(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#GetPowerEvent") }
	func unknown8(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#Unknown8") }
	func unknown9(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#Unknown9") }
	func unknown10() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IBoardPowerControlManager#Unknown10") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try shutdownSystem()
			om.initialize(0, 0, 0)
		
		case 1:
			try rebootSystem()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getWakeupReason()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getShutdownReason()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getAcOk()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getBoardPowerControlEvent(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 6:
			let ret = try getSleepButtonState()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try getPowerEvent(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 8:
			let ret = try unknown8(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			try unknown9(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bpc::IBoardPowerControlManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBpc_IPowerButtonManager: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IPowerButtonManager#Unknown0") }
	func unknown1(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::bpc::nn::bpc::IPowerButtonManager#Unknown1") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::bpc::IPowerButtonManager: \(im.commandId)")
			try! bailout()
		}
	}
}
