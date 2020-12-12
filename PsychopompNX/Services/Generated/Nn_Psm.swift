class NnPsm_IPsmServer: IpcService {
	func getBatteryChargePercentage() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryChargePercentage") }
	func getChargerType() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetChargerType") }
	func enableBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#EnableBatteryCharging") }
	func disableBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#DisableBatteryCharging") }
	func isBatteryChargingEnabled() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#IsBatteryChargingEnabled") }
	func acquireControllerPowerSupply() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#AcquireControllerPowerSupply") }
	func releaseControllerPowerSupply() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#ReleaseControllerPowerSupply") }
	func openSession() throws -> NnPsm_IPsmSession { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#OpenSession") }
	func enableEnoughPowerChargeEmulation() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#EnableEnoughPowerChargeEmulation") }
	func disableEnoughPowerChargeEmulation() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#DisableEnoughPowerChargeEmulation") }
	func enableFastBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#EnableFastBatteryCharging") }
	func disableFastBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#DisableFastBatteryCharging") }
	func getBatteryVoltageState() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryVoltageState") }
	func getRawBatteryChargePercentage() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetRawBatteryChargePercentage") }
	func isEnoughPowerSupplied() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#IsEnoughPowerSupplied") }
	func getBatteryAgePercentage() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryAgePercentage") }
	func getBatteryChargeInfoEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryChargeInfoEvent") }
	func getBatteryChargeInfoFields() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryChargeInfoFields") }
	
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

/*
class NnPsm_IPsmServer_Impl: NnPsm_IPsmServer {
	override func getBatteryChargePercentage() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryChargePercentage") }
	override func getChargerType() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetChargerType") }
	override func enableBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#EnableBatteryCharging") }
	override func disableBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#DisableBatteryCharging") }
	override func isBatteryChargingEnabled() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#IsBatteryChargingEnabled") }
	override func acquireControllerPowerSupply() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#AcquireControllerPowerSupply") }
	override func releaseControllerPowerSupply() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#ReleaseControllerPowerSupply") }
	override func openSession() throws -> NnPsm_IPsmSession { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#OpenSession") }
	override func enableEnoughPowerChargeEmulation() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#EnableEnoughPowerChargeEmulation") }
	override func disableEnoughPowerChargeEmulation() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#DisableEnoughPowerChargeEmulation") }
	override func enableFastBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#EnableFastBatteryCharging") }
	override func disableFastBatteryCharging() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#DisableFastBatteryCharging") }
	override func getBatteryVoltageState() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryVoltageState") }
	override func getRawBatteryChargePercentage() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetRawBatteryChargePercentage") }
	override func isEnoughPowerSupplied() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#IsEnoughPowerSupplied") }
	override func getBatteryAgePercentage() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryAgePercentage") }
	override func getBatteryChargeInfoEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryChargeInfoEvent") }
	override func getBatteryChargeInfoFields() throws -> Any? { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmServer#GetBatteryChargeInfoFields") }
}
*/

class NnPsm_IPsmSession: IpcService {
	func bindStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#BindStateChangeEvent") }
	func unbindStateChangeEvent() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#UnbindStateChangeEvent") }
	func setChargerTypeChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#SetChargerTypeChangeEventEnabled") }
	func setPowerSupplyChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#SetPowerSupplyChangeEventEnabled") }
	func setBatteryVoltageStateChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#SetBatteryVoltageStateChangeEventEnabled") }
	
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

/*
class NnPsm_IPsmSession_Impl: NnPsm_IPsmSession {
	override func bindStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#BindStateChangeEvent") }
	override func unbindStateChangeEvent() throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#UnbindStateChangeEvent") }
	override func setChargerTypeChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#SetChargerTypeChangeEventEnabled") }
	override func setPowerSupplyChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#SetPowerSupplyChangeEventEnabled") }
	override func setBatteryVoltageStateChangeEventEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::psm::nn::psm::IPsmSession#SetBatteryVoltageStateChangeEventEnabled") }
}
*/
