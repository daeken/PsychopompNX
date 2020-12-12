class NnNfcDetail_IUserManager: IpcService {
	func createUserInterface() throws -> NnNfcMifareDetail_IUser { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createUserInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::detail::IUserManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfcDetail_ISystem: IpcService {
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalize() throws { throw IpcError.unimplemented }
	func getStateOld() throws -> UInt32 { throw IpcError.unimplemented }
	func isNfcEnabledOld() throws -> UInt8 { throw IpcError.unimplemented }
	func setNfcEnabledOld(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func initializeSystem(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalizeSystem() throws { throw IpcError.unimplemented }
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func isNfcEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func startDetection(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func setNfcEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func readMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func writeMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func sendCommandByPassThrough(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func keepPassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func releasePassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getStateOld()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try isNfcEnabledOld()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 100:
			try setNfcEnabledOld(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 400:
			try initializeSystem(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 401:
			try finalizeSystem()
			om.initialize(0, 0, 0)
		
		case 402:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 403:
			let ret = try isNfcEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 404:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 405:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 406:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 407:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 408:
			try startDetection(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 409:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 410:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 411:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 412:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 500:
			try setNfcEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 1000:
			try readMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try writeMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1300:
			let ret = try sendCommandByPassThrough(im.getBytes(8, 0x8), im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1301:
			try keepPassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 1302:
			try releasePassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfc::detail::ISystem: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfcDetail_ISystemManager: IpcService {
	func createSystemInterface() throws -> NnNfcDetail_ISystem { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createSystemInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::detail::ISystemManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfcDetail_IUser: IpcService {
	func initializeOld(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalizeOld() throws { throw IpcError.unimplemented }
	func getStateOld() throws -> UInt32 { throw IpcError.unimplemented }
	func isNfcEnabledOld() throws -> UInt8 { throw IpcError.unimplemented }
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalize() throws { throw IpcError.unimplemented }
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func isNfcEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func startDetection(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func readMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func writeMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func sendCommandByPassThrough(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func keepPassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func releasePassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeOld(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeOld()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getStateOld()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try isNfcEnabledOld()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 400:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 401:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 402:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 403:
			let ret = try isNfcEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 404:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 405:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 406:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 407:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 408:
			try startDetection(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 409:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 410:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 411:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 412:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1000:
			try readMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try writeMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1300:
			let ret = try sendCommandByPassThrough(im.getBytes(8, 0x8), im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1301:
			try keepPassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 1302:
			try releasePassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfc::detail::IUser: \(im.commandId)")
			try! bailout()
		}
	}
}
