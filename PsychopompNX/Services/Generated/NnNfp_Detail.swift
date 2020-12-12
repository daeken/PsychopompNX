class NnNfpDetail_IDebug: IpcService {
	func initializeDebug(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalizeDebug() throws { throw IpcError.unimplemented }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented }
	func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func openApplicationArea(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func setApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func createApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getApplicationArea2(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func recreateApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func format(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func getAdminInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRegisterInfo2(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteRegisterInfo(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func deleteApplicationArea(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func existsApplicationArea(_ _0: [UInt8]) throws -> UInt8 { throw IpcError.unimplemented }
	func getAll(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setAll(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func flushDebug(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func breakTag(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented }
	func readBackupData(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func writeBackupData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func writeNtf(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown300(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown301() throws { throw IpcError.unimplemented }
	func unknown302(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func unknown303(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented }
	func unknown304(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func unknown305(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func unknown306(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown307(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func unknown308(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func unknown309() throws -> UInt32 { throw IpcError.unimplemented }
	func unknown310(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func unknown311(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func unknown312(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func unknown313(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func unknown314() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeDebug(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeDebug()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try mount(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unmount(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 7:
			try openApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			try setApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try flush(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 11:
			try restore(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 12:
			try createApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try getRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getCommonInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getModelInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 19:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			let ret = try getApplicationArea2(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try recreateApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 100:
			try format(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 101:
			try getAdminInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 102:
			try getRegisterInfo2(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 103:
			try setRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 104:
			try deleteRegisterInfo(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 105:
			try deleteApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 106:
			let ret = try existsApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 200:
			try getAll(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 201:
			try setAll(im.getBytes(8, 0x8), im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 202:
			try flushDebug(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 203:
			try breakTag(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 204:
			let ret = try readBackupData(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 205:
			try writeBackupData(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 206:
			try writeNtf(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 300:
			try unknown300(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 301:
			try unknown301()
			om.initialize(0, 0, 0)
		
		case 302:
			let ret = try unknown302(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 303:
			try unknown303(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 304:
			try unknown304(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 305:
			let ret = try unknown305(im.getBytes(8, 0x8), im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 306:
			try unknown306(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 307:
			let ret = try unknown307(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 308:
			let ret = try unknown308(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 309:
			let ret = try unknown309()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 310:
			let ret = try unknown310(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 311:
			let ret = try unknown311(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 312:
			try unknown312(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 313:
			try unknown313(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 314:
			let ret = try unknown314()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::IDebug: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfpDetail_ISystem: IpcService {
	func initializeSystem(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalizeSystem() throws { throw IpcError.unimplemented }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented }
	func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func format(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func getAdminInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRegisterInfo2(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteRegisterInfo(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func deleteApplicationArea(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func existsApplicationArea(_ _0: [UInt8]) throws -> UInt8 { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeSystem(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeSystem()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try mount(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unmount(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 10:
			try flush(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 11:
			try restore(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 13:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try getRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getCommonInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getModelInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 19:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 100:
			try format(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 101:
			try getAdminInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 102:
			try getRegisterInfo2(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 103:
			try setRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 104:
			try deleteRegisterInfo(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 105:
			try deleteApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 106:
			let ret = try existsApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::ISystem: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfpDetail_IDebugManager: IpcService {
	func createDebugInterface() throws -> NnNfpDetail_IDebug { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createDebugInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::IDebugManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfpDetail_ISystemManager: IpcService {
	func createSystemInterface() throws -> NnNfpDetail_ISystem { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createSystemInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::ISystemManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfpDetail_IUserManager: IpcService {
	func createUserInterface() throws -> NnNfpDetail_IUser { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createUserInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::IUserManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNfpDetail_IUser: IpcService {
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func finalize() throws { throw IpcError.unimplemented }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented }
	func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func openApplicationArea(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func setApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func createApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented }
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func getApplicationArea2(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func recreateApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try mount(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unmount(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 7:
			try openApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			try setApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try flush(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 11:
			try restore(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 12:
			try createApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try getRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getCommonInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getModelInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 19:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			let ret = try getApplicationArea2(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try recreateApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfp::detail::IUser: \(im.commandId)")
			try! bailout()
		}
	}
}
