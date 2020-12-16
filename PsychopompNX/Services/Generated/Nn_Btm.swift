class NnBtm_IBtmSystemCore: IpcService {
	func startGamepadPairingImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#StartGamepadPairingImpl") }
	func cancelGamepadPairingImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#CancelGamepadPairingImpl") }
	func clearGamepadPairingDatabaseImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#ClearGamepadPairingDatabaseImpl") }
	func getPairedGamepadCountImpl() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#GetPairedGamepadCountImpl") }
	func enableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#EnableRadioImpl") }
	func disableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#DisableRadioImpl") }
	func getRadioOnOffImpl() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#GetRadioOnOffImpl") }
	func acquireRadioEventImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#AcquireRadioEventImpl") }
	func acquireGamepadPairingEventImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#AcquireGamepadPairingEventImpl") }
	func isGamepadPairingStartedImpl() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#IsGamepadPairingStartedImpl") }
	
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

/*
class NnBtm_IBtmSystemCore_Impl: NnBtm_IBtmSystemCore {
	override func startGamepadPairingImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#StartGamepadPairingImpl") }
	override func cancelGamepadPairingImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#CancelGamepadPairingImpl") }
	override func clearGamepadPairingDatabaseImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#ClearGamepadPairingDatabaseImpl") }
	override func getPairedGamepadCountImpl() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#GetPairedGamepadCountImpl") }
	override func enableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#EnableRadioImpl") }
	override func disableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#DisableRadioImpl") }
	override func getRadioOnOffImpl() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#GetRadioOnOffImpl") }
	override func acquireRadioEventImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#AcquireRadioEventImpl") }
	override func acquireGamepadPairingEventImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#AcquireGamepadPairingEventImpl") }
	override func isGamepadPairingStartedImpl() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystemCore#IsGamepadPairingStartedImpl") }
}
*/

class NnBtm_IBtmSystem: IpcService {
	func getCoreImpl() throws -> NnBtm_IBtmSystemCore { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystem#GetCoreImpl") }
	
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

/*
class NnBtm_IBtmSystem_Impl: NnBtm_IBtmSystem {
	override func getCoreImpl() throws -> NnBtm_IBtmSystemCore { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmSystem#GetCoreImpl") }
}
*/

class NnBtm_IBtm: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown0") }
	func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown1") }
	func registerSystemEventForConnectedDeviceConditionImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#RegisterSystemEventForConnectedDeviceConditionImpl") }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown4") }
	func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown5") }
	func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown6") }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown7") }
	func registerSystemEventForRegisteredDeviceInfoImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#RegisterSystemEventForRegisteredDeviceInfoImpl") }
	func unknown9(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown9") }
	func unknown10(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown10") }
	func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown11") }
	func unknown12(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown12") }
	func unknown13(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown13") }
	func enableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#EnableRadioImpl") }
	func disableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#DisableRadioImpl") }
	func unknown16(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown16") }
	func unknown17(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown17") }
	func unknown18() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown18") }
	func unknown19() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown19") }
	func unknown20() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown20") }
	func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown21") }
	
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
			try unknown3(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(im.getBuffer(0x19, 0)! as Buffer<UInt8>)
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
			try unknown9(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
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
			try unknown17(nil, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
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

/*
class NnBtm_IBtm_Impl: NnBtm_IBtm {
	override func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown0") }
	override func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown1") }
	override func registerSystemEventForConnectedDeviceConditionImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#RegisterSystemEventForConnectedDeviceConditionImpl") }
	override func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown3") }
	override func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown4") }
	override func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown5") }
	override func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown6") }
	override func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown7") }
	override func registerSystemEventForRegisteredDeviceInfoImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#RegisterSystemEventForRegisteredDeviceInfoImpl") }
	override func unknown9(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown9") }
	override func unknown10(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown10") }
	override func unknown11(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown11") }
	override func unknown12(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown12") }
	override func unknown13(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown13") }
	override func enableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#EnableRadioImpl") }
	override func disableRadioImpl() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#DisableRadioImpl") }
	override func unknown16(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown16") }
	override func unknown17(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown17") }
	override func unknown18() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown18") }
	override func unknown19() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown19") }
	override func unknown20() throws -> Any? { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown20") }
	override func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtm#Unknown21") }
}
*/

class NnBtm_IBtmDebug: IpcService {
	func registerSystemEventForDiscoveryImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#RegisterSystemEventForDiscoveryImpl") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown2") }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown4") }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown5") }
	func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown6") }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown7") }
	func unknown8(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown8") }
	
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
			try unknown3(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
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

/*
class NnBtm_IBtmDebug_Impl: NnBtm_IBtmDebug {
	override func registerSystemEventForDiscoveryImpl() throws -> (Any?, KObject) { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#RegisterSystemEventForDiscoveryImpl") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown1") }
	override func unknown2() throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown2") }
	override func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown3") }
	override func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown4") }
	override func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown5") }
	override func unknown6(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown6") }
	override func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown7") }
	override func unknown8(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::btm::nn::btm::IBtmDebug#Unknown8") }
}
*/
