class NnPwm_IChannelSession: IpcService {
	func setPeriod(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IChannelSession#SetPeriod") }
	func getPeriod() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IChannelSession#GetPeriod") }
	func setDuty(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IChannelSession#SetDuty") }
	func getDuty() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IChannelSession#GetDuty") }
	func setEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IChannelSession#SetEnabled") }
	func getEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IChannelSession#GetEnabled") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setPeriod(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getPeriod()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			try setDuty(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getDuty()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			try setEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::pwm::IChannelSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPwm_IManager: IpcService {
	func openSessionForDev(_ _0: UInt32) throws -> NnPwm_IChannelSession { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IManager#OpenSessionForDev") }
	func openSession(_ _0: UInt32) throws -> NnPwm_IChannelSession { throw IpcError.unimplemented(name: "nn::pwm::nn::pwm::IManager#OpenSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSessionForDev(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try openSession(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::pwm::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}
