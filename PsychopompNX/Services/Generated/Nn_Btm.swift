class NnBtm_IBtmSystemCore: IpcService {
	func startGamepadPairingImpl() throws { throw IpcError.unimplemented }
	func cancelGamepadPairingImpl() throws { throw IpcError.unimplemented }
	func clearGamepadPairingDatabaseImpl() throws { throw IpcError.unimplemented }
	func getPairedGamepadCountImpl() throws -> Any? { throw IpcError.unimplemented }
	func enableRadioImpl() throws { throw IpcError.unimplemented }
	func disableRadioImpl() throws { throw IpcError.unimplemented }
	func getRadioOnOffImpl() throws -> Any? { throw IpcError.unimplemented }
	func acquireRadioEventImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func acquireGamepadPairingEventImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func isGamepadPairingStartedImpl() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try startGamepadPairingImpl()
			om.initialize(0, 0, 0)
		
		case 1:
			try cancelGamepadPairingImpl()
			om.initialize(0, 0, 0)
		
		case 2:
			try clearGamepadPairingDatabaseImpl()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getPairedGamepadCountImpl()
			om.initialize(0, 0, 0)
		
		case 4:
			try enableRadioImpl()
			om.initialize(0, 0, 0)
		
		case 5:
			try disableRadioImpl()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getRadioOnOffImpl()
			om.initialize(0, 0, 0)
		
		case 7:
			let (_0, _1) = try acquireRadioEventImpl()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 8:
			let (_0, _1) = try acquireGamepadPairingEventImpl()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 9:
			let ret = try isGamepadPairingStartedImpl()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::btm::IBtmSystemCore: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBtm_IBtmSystem: IpcService {
	func getCoreImpl() throws -> NnBtm_IBtmSystemCore { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCoreImpl()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::btm::IBtmSystem: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBtm_IBtm: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1() throws -> Any? { throw IpcError.unimplemented }
	func registerSystemEventForConnectedDeviceConditionImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented }
	func registerSystemEventForRegisteredDeviceInfoImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown9(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown10(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown12(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown13(_ _0: Any?) throws { throw IpcError.unimplemented }
	func enableRadioImpl() throws { throw IpcError.unimplemented }
	func disableRadioImpl() throws { throw IpcError.unimplemented }
	func unknown16(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown17(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown18() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown19() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown20() throws -> Any? { throw IpcError.unimplemented }
	func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1) = try registerSystemEventForConnectedDeviceConditionImpl()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 3:
			try unknown3(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let (_0, _1) = try registerSystemEventForRegisteredDeviceInfoImpl()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 9:
			try unknown9(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try unknown10(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			try unknown11(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			try unknown12(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			try unknown13(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			try enableRadioImpl()
			om.initialize(0, 0, 0)
		
		case 15:
			try disableRadioImpl()
			om.initialize(0, 0, 0)
		
		case 16:
			try unknown16(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			try unknown17(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			let (_0, _1) = try unknown18()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 19:
			let (_0, _1) = try unknown19()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 20:
			let ret = try unknown20()
			om.initialize(0, 0, 0)
		
		case 21:
			try unknown21(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::btm::IBtm: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnBtm_IBtmDebug: IpcService {
	func registerSystemEventForDiscoveryImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown8(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try registerSystemEventForDiscoveryImpl()
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try unknown6(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try unknown8(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::btm::IBtmDebug: \(im.commandId)")
			try! bailout()
		}
	}
}
