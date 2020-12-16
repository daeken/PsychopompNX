class NnWlanDetail_IInfraManager: IpcService {
	func unknown0() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown1") }
	func getMacAddress() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetMacAddress") }
	func startScan(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#StartScan") }
	func stopScan() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#StopScan") }
	func connect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Connect") }
	func cancelConnect() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#CancelConnect") }
	func disconnect() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Disconnect") }
	func unknown8(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown8") }
	func unknown9() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown9") }
	func getState() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetState") }
	func getScanResult(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetScanResult") }
	func getRssi() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetRssi") }
	func changeRxAntenna(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#ChangeRxAntenna") }
	func unknown14(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown14") }
	func unknown15() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown15") }
	func requestWakeUp() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#RequestWakeUp") }
	func requestIfUpDown(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#RequestIfUpDown") }
	func unknown18() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown18") }
	func unknown19(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown19") }
	func unknown20() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown20") }
	func unknown21() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown21") }
	func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown22") }
	func unknown23(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown23") }
	func unknown24() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown24") }
	func unknown25(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown25") }
	func unknown26() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown26") }
	func unknown27() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown27") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getMacAddress()
			om.initialize(0, 0, 0)
		
		case 3:
			try startScan(im.getBuffer(0x15, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try stopScan()
			om.initialize(0, 0, 0)
		
		case 5:
			try connect(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try cancelConnect()
			om.initialize(0, 0, 0)
		
		case 7:
			try disconnect()
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 9:
			let ret = try unknown9()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try getState()
			om.initialize(0, 0, 0)
		
		case 11:
			try getScanResult(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getRssi()
			om.initialize(0, 0, 0)
		
		case 13:
			try changeRxAntenna(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			try unknown14(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15()
			om.initialize(0, 0, 0)
		
		case 16:
			try requestWakeUp()
			om.initialize(0, 0, 0)
		
		case 17:
			try requestIfUpDown(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try unknown18()
			om.initialize(0, 0, 0)
		
		case 19:
			try unknown19(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			try unknown20()
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try unknown21()
			om.initialize(0, 0, 0)
		
		case 22:
			try unknown22(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			try unknown23(nil)
			om.initialize(0, 0, 0)
		
		case 24:
			let ret = try unknown24()
			om.initialize(0, 0, 0)
		
		case 25:
			try unknown25(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			try unknown26()
			om.initialize(0, 0, 0)
		
		case 27:
			try unknown27()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::IInfraManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnWlanDetail_IInfraManager_Impl: NnWlanDetail_IInfraManager {
	override func unknown0() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown0") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown1") }
	override func getMacAddress() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetMacAddress") }
	override func startScan(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#StartScan") }
	override func stopScan() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#StopScan") }
	override func connect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Connect") }
	override func cancelConnect() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#CancelConnect") }
	override func disconnect() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Disconnect") }
	override func unknown8(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown8") }
	override func unknown9() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown9") }
	override func getState() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetState") }
	override func getScanResult(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetScanResult") }
	override func getRssi() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#GetRssi") }
	override func changeRxAntenna(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#ChangeRxAntenna") }
	override func unknown14(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown14") }
	override func unknown15() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown15") }
	override func requestWakeUp() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#RequestWakeUp") }
	override func requestIfUpDown(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#RequestIfUpDown") }
	override func unknown18() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown18") }
	override func unknown19(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown19") }
	override func unknown20() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown20") }
	override func unknown21() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown21") }
	override func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown22") }
	override func unknown23(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown23") }
	override func unknown24() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown24") }
	override func unknown25(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown25") }
	override func unknown26() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown26") }
	override func unknown27() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::IInfraManager#Unknown27") }
}
*/

class NnWlanDetail_ISocketManager: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown0") }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown4") }
	func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown5") }
	func getMacAddress() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#GetMacAddress") }
	func switchTsfTimerFunction(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#SwitchTsfTimerFunction") }
	func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown8") }
	func unknown9(_ _0: Any?, _ _1: KObject, _ _2: KObject, _ _3: KObject, _ _4: KObject, _ _5: KObject) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown9") }
	func unknown10() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown10") }
	func unknown11() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown11") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getMacAddress()
			om.initialize(0, 0, 0)
		
		case 7:
			try switchTsfTimerFunction(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8()
			om.initialize(0, 0, 0)
		
		case 9:
			try unknown9(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(1)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(2)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(3)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(4)) as KObject)
			om.initialize(0, 0, 0)
		
		case 10:
			try unknown10()
			om.initialize(0, 0, 0)
		
		case 11:
			try unknown11()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ISocketManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnWlanDetail_ISocketManager_Impl: NnWlanDetail_ISocketManager {
	override func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown0") }
	override func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown1") }
	override func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown2") }
	override func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown3") }
	override func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown4") }
	override func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown5") }
	override func getMacAddress() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#GetMacAddress") }
	override func switchTsfTimerFunction(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#SwitchTsfTimerFunction") }
	override func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown8") }
	override func unknown9(_ _0: Any?, _ _1: KObject, _ _2: KObject, _ _3: KObject, _ _4: KObject, _ _5: KObject) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown9") }
	override func unknown10() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown10") }
	override func unknown11() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketManager#Unknown11") }
}
*/

class NnWlanDetail_ILocalGetActionFrame: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalGetActionFrame#Unknown0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ILocalGetActionFrame: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnWlanDetail_ILocalGetActionFrame_Impl: NnWlanDetail_ILocalGetActionFrame {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalGetActionFrame#Unknown0") }
}
*/

class NnWlanDetail_ISocketGetFrame: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketGetFrame#Unknown0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ISocketGetFrame: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnWlanDetail_ISocketGetFrame_Impl: NnWlanDetail_ISocketGetFrame {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ISocketGetFrame#Unknown0") }
}
*/

class NnWlanDetail_ILocalGetFrame: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalGetFrame#Unknown0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ILocalGetFrame: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnWlanDetail_ILocalGetFrame_Impl: NnWlanDetail_ILocalGetFrame {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalGetFrame#Unknown0") }
}
*/

class NnWlanDetail_ILocalManager: IpcService {
	func unknown0() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown3") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown4") }
	func unknown5() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown5") }
	func getMacAddress() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetMacAddress") }
	func createBss(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CreateBss") }
	func destroyBss() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DestroyBss") }
	func startScan(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#StartScan") }
	func stopScan() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#StopScan") }
	func connect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Connect") }
	func cancelConnect() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelConnect") }
	func join(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Join") }
	func cancelJoin() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelJoin") }
	func disconnect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Disconnect") }
	func setBeaconLostCount(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#SetBeaconLostCount") }
	func unknown17(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown17") }
	func unknown18() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown18") }
	func unknown19(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown19") }
	func getBssIndicationEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetBssIndicationEvent") }
	func getBssIndicationInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetBssIndicationInfo") }
	func getState() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetState") }
	func getAllowedChannels() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetAllowedChannels") }
	func addIe(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#AddIe") }
	func deleteIe(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DeleteIe") }
	func unknown26(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown26") }
	func unknown27(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown27") }
	func createRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CreateRxEntry") }
	func deleteRxEntry(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DeleteRxEntry") }
	func unknown30(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown30") }
	func unknown31(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown31") }
	func addMatchingDataToRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#AddMatchingDataToRxEntry") }
	func removeMatchingDataFromRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#RemoveMatchingDataFromRxEntry") }
	func getScanResult(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetScanResult") }
	func unknown35(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown35") }
	func setActionFrameWithBeacon(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#SetActionFrameWithBeacon") }
	func cancelActionFrameWithBeacon() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelActionFrameWithBeacon") }
	func createRxEntryForActionFrame(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CreateRxEntryForActionFrame") }
	func deleteRxEntryForActionFrame(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DeleteRxEntryForActionFrame") }
	func unknown40(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown40") }
	func unknown41(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown41") }
	func cancelGetActionFrame(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelGetActionFrame") }
	func getRssi() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetRssi") }
	func unknown44(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown44") }
	func unknown45() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown45") }
	func unknown46() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown46") }
	func unknown47() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown47") }
	func unknown48() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown48") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getMacAddress()
			om.initialize(0, 0, 0)
		
		case 7:
			try createBss(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try destroyBss()
			om.initialize(0, 0, 0)
		
		case 9:
			try startScan(im.getBuffer(0x15, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try stopScan()
			om.initialize(0, 0, 0)
		
		case 11:
			try connect(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			try cancelConnect()
			om.initialize(0, 0, 0)
		
		case 13:
			try join(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			try cancelJoin()
			om.initialize(0, 0, 0)
		
		case 15:
			try disconnect(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			try setBeaconLostCount(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try unknown17(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try unknown18()
			om.initialize(0, 0, 0)
		
		case 19:
			try unknown19(im.getBuffer(0x16, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getBssIndicationEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 21:
			try getBssIndicationInfo(im.getBuffer(0x16, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try getState()
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getAllowedChannels()
			om.initialize(0, 0, 0)
		
		case 24:
			let ret = try addIe(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 25:
			try deleteIe(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			try unknown26(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 27:
			try unknown27(nil)
			om.initialize(0, 0, 0)
		
		case 28:
			let ret = try createRxEntry(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 29:
			try deleteRxEntry(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			try unknown30(nil)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try unknown31(nil)
			om.initialize(0, 0, 0)
		
		case 32:
			try addMatchingDataToRxEntry(nil, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 33:
			try removeMatchingDataFromRxEntry(nil, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 34:
			try getScanResult(im.getBuffer(0x19, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 35:
			try unknown35(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 36:
			try setActionFrameWithBeacon(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 37:
			try cancelActionFrameWithBeacon()
			om.initialize(0, 0, 0)
		
		case 38:
			let ret = try createRxEntryForActionFrame(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 39:
			try deleteRxEntryForActionFrame(nil)
			om.initialize(0, 0, 0)
		
		case 40:
			try unknown40(nil)
			om.initialize(0, 0, 0)
		
		case 41:
			let ret = try unknown41(nil)
			om.initialize(0, 0, 0)
		
		case 42:
			try cancelGetActionFrame(nil)
			om.initialize(0, 0, 0)
		
		case 43:
			let ret = try getRssi()
			om.initialize(0, 0, 0)
		
		case 44:
			try unknown44(nil)
			om.initialize(0, 0, 0)
		
		case 45:
			try unknown45()
			om.initialize(0, 0, 0)
		
		case 46:
			try unknown46()
			om.initialize(0, 0, 0)
		
		case 47:
			try unknown47()
			om.initialize(0, 0, 0)
		
		case 48:
			try unknown48()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ILocalManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnWlanDetail_ILocalManager_Impl: NnWlanDetail_ILocalManager {
	override func unknown0() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown0") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown1") }
	override func unknown2() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown2") }
	override func unknown3() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown3") }
	override func unknown4() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown4") }
	override func unknown5() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown5") }
	override func getMacAddress() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetMacAddress") }
	override func createBss(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CreateBss") }
	override func destroyBss() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DestroyBss") }
	override func startScan(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#StartScan") }
	override func stopScan() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#StopScan") }
	override func connect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Connect") }
	override func cancelConnect() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelConnect") }
	override func join(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Join") }
	override func cancelJoin() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelJoin") }
	override func disconnect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Disconnect") }
	override func setBeaconLostCount(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#SetBeaconLostCount") }
	override func unknown17(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown17") }
	override func unknown18() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown18") }
	override func unknown19(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown19") }
	override func getBssIndicationEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetBssIndicationEvent") }
	override func getBssIndicationInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetBssIndicationInfo") }
	override func getState() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetState") }
	override func getAllowedChannels() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetAllowedChannels") }
	override func addIe(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#AddIe") }
	override func deleteIe(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DeleteIe") }
	override func unknown26(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown26") }
	override func unknown27(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown27") }
	override func createRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CreateRxEntry") }
	override func deleteRxEntry(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DeleteRxEntry") }
	override func unknown30(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown30") }
	override func unknown31(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown31") }
	override func addMatchingDataToRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#AddMatchingDataToRxEntry") }
	override func removeMatchingDataFromRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#RemoveMatchingDataFromRxEntry") }
	override func getScanResult(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetScanResult") }
	override func unknown35(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown35") }
	override func setActionFrameWithBeacon(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#SetActionFrameWithBeacon") }
	override func cancelActionFrameWithBeacon() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelActionFrameWithBeacon") }
	override func createRxEntryForActionFrame(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CreateRxEntryForActionFrame") }
	override func deleteRxEntryForActionFrame(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#DeleteRxEntryForActionFrame") }
	override func unknown40(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown40") }
	override func unknown41(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown41") }
	override func cancelGetActionFrame(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#CancelGetActionFrame") }
	override func getRssi() throws -> Any? { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#GetRssi") }
	override func unknown44(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown44") }
	override func unknown45() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown45") }
	override func unknown46() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown46") }
	override func unknown47() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown47") }
	override func unknown48() throws { throw IpcError.unimplemented(name: "nn::wlan::detail::nn::wlan::detail::ILocalManager#Unknown48") }
}
*/
