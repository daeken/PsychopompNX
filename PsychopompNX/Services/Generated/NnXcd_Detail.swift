class NnXcdDetail_ISystemServer: IpcService {
	func getDataFormat(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setDataFormat(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getMcuState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setMcuState(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getMcuVersionForNfc(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func checkNfcDevicePower(_ _0: Any?) throws { throw IpcError.unimplemented }
	func setNfcEvent(_ _0: Any?) throws -> (KObject, KObject) { throw IpcError.unimplemented }
	func getNfcInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func startNfcDiscovery(_ _0: Any?) throws { throw IpcError.unimplemented }
	func stopNfcDiscovery(_ _0: Any?) throws { throw IpcError.unimplemented }
	func startNtagRead(_ _0: Any?) throws { throw IpcError.unimplemented }
	func startNtagWrite(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func sendNfcRawData(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func registerMifareKey(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func clearMifareKey(_ _0: Any?) throws { throw IpcError.unimplemented }
	func startMifareRead(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func startMifareWrite(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getAwakeTriggerReasonForLeftRail() throws -> Any? { throw IpcError.unimplemented }
	func getAwakeTriggerReasonForRightRail() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getDataFormat(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try setDataFormat(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getMcuState(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try setMcuState(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getMcuVersionForNfc(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try checkNfcDevicePower(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			let (_0, _1) = try setNfcEvent(nil)
			om.initialize(0, 2, 0)
			om.copy(0, _0)
			om.copy(1, _1)
		
		case 11:
			try getNfcInfo(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			try startNfcDiscovery(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			try stopNfcDiscovery(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			try startNtagRead(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try startNtagWrite(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try sendNfcRawData(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			try registerMifareKey(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			try clearMifareKey(nil)
			om.initialize(0, 0, 0)
		
		case 19:
			try startMifareRead(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			try startMifareWrite(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try getAwakeTriggerReasonForLeftRail()
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try getAwakeTriggerReasonForRightRail()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::xcd::detail::ISystemServer: \(im.commandId)")
			try! bailout()
		}
	}
}
