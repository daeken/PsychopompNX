class NnGpio_IPadSession: IpcService {
	func setDirection(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetDirection") }
	func getDirection() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetDirection") }
	func setInterruptMode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetInterruptMode") }
	func getInterruptMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetInterruptMode") }
	func setInterruptEnable(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetInterruptEnable") }
	func getInterruptEnable() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetInterruptEnable") }
	func getInterruptStatus() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetInterruptStatus") }
	func clearInterruptStatus() throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#ClearInterruptStatus") }
	func setValue(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetValue") }
	func getValue() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetValue") }
	func bindInterrupt() throws -> KObject { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#BindInterrupt") }
	func unbindInterrupt() throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#UnbindInterrupt") }
	func setDebounceEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetDebounceEnabled") }
	func getDebounceEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetDebounceEnabled") }
	func setDebounceTime(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetDebounceTime") }
	func getDebounceTime() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetDebounceTime") }
	func setValueForSleepState(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetValueForSleepState") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setDirection(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getDirection()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			try setInterruptMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getInterruptMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			try setInterruptEnable(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getInterruptEnable()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 6:
			let ret = try getInterruptStatus()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			try clearInterruptStatus()
			om.initialize(0, 0, 0)
		
		case 8:
			try setValue(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getValue()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			let ret = try bindInterrupt()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 11:
			try unbindInterrupt()
			om.initialize(0, 0, 0)
		
		case 12:
			try setDebounceEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try getDebounceEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 14:
			try setDebounceTime(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getDebounceTime()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 16:
			try setValueForSleepState(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::gpio::IPadSession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnGpio_IPadSession_Impl: NnGpio_IPadSession {
	override func setDirection(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetDirection") }
	override func getDirection() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetDirection") }
	override func setInterruptMode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetInterruptMode") }
	override func getInterruptMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetInterruptMode") }
	override func setInterruptEnable(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetInterruptEnable") }
	override func getInterruptEnable() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetInterruptEnable") }
	override func getInterruptStatus() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetInterruptStatus") }
	override func clearInterruptStatus() throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#ClearInterruptStatus") }
	override func setValue(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetValue") }
	override func getValue() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetValue") }
	override func bindInterrupt() throws -> KObject { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#BindInterrupt") }
	override func unbindInterrupt() throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#UnbindInterrupt") }
	override func setDebounceEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetDebounceEnabled") }
	override func getDebounceEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetDebounceEnabled") }
	override func setDebounceTime(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetDebounceTime") }
	override func getDebounceTime() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#GetDebounceTime") }
	override func setValueForSleepState(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IPadSession#SetValueForSleepState") }
}
*/

class NnGpio_IManager: IpcService {
	func unknown0(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown0") }
	func getPadSession(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#GetPadSession") }
	func unknown2(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown2") }
	func unknown3(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown3") }
	func unknown4() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown4") }
	func unknown5(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown5") }
	func unknown6(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown6") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getPadSession(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try unknown2(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try unknown3(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			try unknown5(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::gpio::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnGpio_IManager_Impl: NnGpio_IManager {
	override func unknown0(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown0") }
	override func getPadSession(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#GetPadSession") }
	override func unknown2(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown2") }
	override func unknown3(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown3") }
	override func unknown4() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown4") }
	override func unknown5(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown5") }
	override func unknown6(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::gpio::nn::gpio::IManager#Unknown6") }
}
*/
