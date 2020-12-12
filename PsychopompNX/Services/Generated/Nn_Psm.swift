class NnPsm_IPsmServer: IpcService {
	func getBatteryChargePercentage() throws -> Any? { throw IpcError.unimplemented }
	func getChargerType() throws -> Any? { throw IpcError.unimplemented }
	func enableBatteryCharging() throws { throw IpcError.unimplemented }
	func disableBatteryCharging() throws { throw IpcError.unimplemented }
	func isBatteryChargingEnabled() throws -> Any? { throw IpcError.unimplemented }
	func acquireControllerPowerSupply() throws { throw IpcError.unimplemented }
	func releaseControllerPowerSupply() throws { throw IpcError.unimplemented }
	func openSession() throws -> NnPsm_IPsmSession { throw IpcError.unimplemented }
	func enableEnoughPowerChargeEmulation() throws { throw IpcError.unimplemented }
	func disableEnoughPowerChargeEmulation() throws { throw IpcError.unimplemented }
	func enableFastBatteryCharging() throws { throw IpcError.unimplemented }
	func disableFastBatteryCharging() throws { throw IpcError.unimplemented }
	func getBatteryVoltageState() throws -> Any? { throw IpcError.unimplemented }
	func getRawBatteryChargePercentage() throws -> Any? { throw IpcError.unimplemented }
	func isEnoughPowerSupplied() throws -> Any? { throw IpcError.unimplemented }
	func getBatteryAgePercentage() throws -> Any? { throw IpcError.unimplemented }
	func getBatteryChargeInfoEvent() throws -> KObject { throw IpcError.unimplemented }
	func getBatteryChargeInfoFields() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getBatteryChargePercentage()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getChargerType()
			om.initialize(0, 0, 0)
		
		case 2:
			try enableBatteryCharging()
			om.initialize(0, 0, 0)
		
		case 3:
			try disableBatteryCharging()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try isBatteryChargingEnabled()
			om.initialize(0, 0, 0)
		
		case 5:
			try acquireControllerPowerSupply()
			om.initialize(0, 0, 0)
		
		case 6:
			try releaseControllerPowerSupply()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try openSession()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 8:
			try enableEnoughPowerChargeEmulation()
			om.initialize(0, 0, 0)
		
		case 9:
			try disableEnoughPowerChargeEmulation()
			om.initialize(0, 0, 0)
		
		case 10:
			try enableFastBatteryCharging()
			om.initialize(0, 0, 0)
		
		case 11:
			try disableFastBatteryCharging()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getBatteryVoltageState()
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try getRawBatteryChargePercentage()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try isEnoughPowerSupplied()
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getBatteryAgePercentage()
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try getBatteryChargeInfoEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 17:
			let ret = try getBatteryChargeInfoFields()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::psm::IPsmServer: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPsm_IPsmSession: IpcService {
	func bindStateChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func unbindStateChangeEvent() throws { throw IpcError.unimplemented }
	func setChargerTypeChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented }
	func setPowerSupplyChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented }
	func setBatteryVoltageStateChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try bindStateChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try unbindStateChangeEvent()
			om.initialize(0, 0, 0)
		
		case 2:
			try setChargerTypeChangeEventEnabled(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try setPowerSupplyChangeEventEnabled(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try setBatteryVoltageStateChangeEventEnabled(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::psm::IPsmSession: \(im.commandId)")
			try! bailout()
		}
	}
}
