class NnWlanDetail_IInfraManager: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func getMacAddress() throws -> Any? { throw IpcError.unimplemented }
	func startScan(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func stopScan() throws { throw IpcError.unimplemented }
	func connect(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cancelConnect() throws { throw IpcError.unimplemented }
	func disconnect() throws { throw IpcError.unimplemented }
	func unknown8(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented }
	func unknown9() throws -> Any? { throw IpcError.unimplemented }
	func getState() throws -> Any? { throw IpcError.unimplemented }
	func getScanResult(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRssi() throws -> Any? { throw IpcError.unimplemented }
	func changeRxAntenna(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown14(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown15() throws { throw IpcError.unimplemented }
	func requestWakeUp() throws { throw IpcError.unimplemented }
	func requestIfUpDown(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown18() throws -> Any? { throw IpcError.unimplemented }
	func unknown19(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown20() throws { throw IpcError.unimplemented }
	func unknown21() throws -> Any? { throw IpcError.unimplemented }
	func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown23(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown24() throws -> Any? { throw IpcError.unimplemented }
	func unknown25(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown26() throws { throw IpcError.unimplemented }
	func unknown27() throws { throw IpcError.unimplemented }
	
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
			try startScan(im.getBuffer(0x15, 0) as Buffer<UInt8>)
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
			try getScanResult(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getRssi()
			om.initialize(0, 0, 0)
		
		case 13:
			try changeRxAntenna(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			try unknown14(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15()
			om.initialize(0, 0, 0)
		
		case 16:
			try requestWakeUp()
			om.initialize(0, 0, 0)
		
		case 17:
			try requestIfUpDown(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
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

class NnWlanDetail_ISocketManager: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getMacAddress() throws -> Any? { throw IpcError.unimplemented }
	func switchTsfTimerFunction(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown8() throws -> Any? { throw IpcError.unimplemented }
	func unknown9(_ _0: Any?, _ _1: KObject, _ _2: KObject, _ _3: KObject, _ _4: KObject, _ _5: KObject) throws { throw IpcError.unimplemented }
	func unknown10() throws { throw IpcError.unimplemented }
	func unknown11() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
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

class NnWlanDetail_ILocalGetActionFrame: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ILocalGetActionFrame: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnWlanDetail_ISocketGetFrame: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ISocketGetFrame: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnWlanDetail_ILocalGetFrame: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::wlan::detail::ILocalGetFrame: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnWlanDetail_ILocalManager: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown3() throws { throw IpcError.unimplemented }
	func unknown4() throws { throw IpcError.unimplemented }
	func unknown5() throws { throw IpcError.unimplemented }
	func getMacAddress() throws -> Any? { throw IpcError.unimplemented }
	func createBss(_ _0: Any?) throws { throw IpcError.unimplemented }
	func destroyBss() throws { throw IpcError.unimplemented }
	func startScan(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func stopScan() throws { throw IpcError.unimplemented }
	func connect(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cancelConnect() throws { throw IpcError.unimplemented }
	func join(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cancelJoin() throws { throw IpcError.unimplemented }
	func disconnect(_ _0: Any?) throws { throw IpcError.unimplemented }
	func setBeaconLostCount(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown17(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented }
	func unknown18() throws -> Any? { throw IpcError.unimplemented }
	func unknown19(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getBssIndicationEvent() throws -> KObject { throw IpcError.unimplemented }
	func getBssIndicationInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getState() throws -> Any? { throw IpcError.unimplemented }
	func getAllowedChannels() throws -> Any? { throw IpcError.unimplemented }
	func addIe(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func deleteIe(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown26(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown27(_ _0: Any?) throws { throw IpcError.unimplemented }
	func createRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func deleteRxEntry(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown30(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown31(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func addMatchingDataToRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func removeMatchingDataFromRxEntry(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getScanResult(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown35(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setActionFrameWithBeacon(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func cancelActionFrameWithBeacon() throws { throw IpcError.unimplemented }
	func createRxEntryForActionFrame(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func deleteRxEntryForActionFrame(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown40(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown41(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func cancelGetActionFrame(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getRssi() throws -> Any? { throw IpcError.unimplemented }
	func unknown44(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown45() throws { throw IpcError.unimplemented }
	func unknown46() throws { throw IpcError.unimplemented }
	func unknown47() throws { throw IpcError.unimplemented }
	func unknown48() throws { throw IpcError.unimplemented }
	
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
			try startScan(im.getBuffer(0x15, 0) as Buffer<UInt8>)
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
			try unknown19(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getBssIndicationEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 21:
			try getBssIndicationInfo(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try getState()
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getAllowedChannels()
			om.initialize(0, 0, 0)
		
		case 24:
			let ret = try addIe(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 25:
			try deleteIe(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			try unknown26(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 27:
			try unknown27(nil)
			om.initialize(0, 0, 0)
		
		case 28:
			let ret = try createRxEntry(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
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
			try addMatchingDataToRxEntry(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 33:
			try removeMatchingDataFromRxEntry(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 34:
			try getScanResult(im.getBuffer(0x19, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 35:
			try unknown35(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 36:
			try setActionFrameWithBeacon(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 37:
			try cancelActionFrameWithBeacon()
			om.initialize(0, 0, 0)
		
		case 38:
			let ret = try createRxEntryForActionFrame(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
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
