class NnGpio_IPadSession: IpcService {
	func setDirection(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getDirection() throws -> UInt32 { throw IpcError.unimplemented }
	func setInterruptMode(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getInterruptMode() throws -> UInt32 { throw IpcError.unimplemented }
	func setInterruptEnable(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getInterruptEnable() throws -> UInt8 { throw IpcError.unimplemented }
	func getInterruptStatus() throws -> UInt32 { throw IpcError.unimplemented }
	func clearInterruptStatus() throws { throw IpcError.unimplemented }
	func setValue(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getValue() throws -> UInt32 { throw IpcError.unimplemented }
	func bindInterrupt() throws -> KObject { throw IpcError.unimplemented }
	func unbindInterrupt() throws { throw IpcError.unimplemented }
	func setDebounceEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getDebounceEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func setDebounceTime(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getDebounceTime() throws -> UInt32 { throw IpcError.unimplemented }
	func setValueForSleepState(_ _0: UInt32) throws { throw IpcError.unimplemented }
	
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

class NnGpio_IManager: IpcService {
	func unknown0(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented }
	func getPadSession(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented }
	func unknown2(_ _0: UInt32) throws -> NnGpio_IPadSession { throw IpcError.unimplemented }
	func unknown3(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func unknown4() throws -> [UInt8] { throw IpcError.unimplemented }
	func unknown5(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func unknown6(_ _0: UInt32) throws { throw IpcError.unimplemented }
	
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
