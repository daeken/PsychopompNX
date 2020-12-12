typealias NnApm_PerformanceMode = UInt32
typealias NnApm_EventTarget = UInt32
typealias NnApm_PerformanceConfiguration = UInt32
typealias NnApm_ThrottlingState = [UInt8]

class NnApm_IManager: IpcService {
	func openSession() throws -> NnApm_ISession { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IManager#OpenSession") }
	func getPerformanceMode() throws -> NnApm_PerformanceMode { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IManager#GetPerformanceMode") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSession()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getPerformanceMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::apm::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnApm_IManager_Impl: NnApm_IManager {
	override func openSession() throws -> NnApm_ISession { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IManager#OpenSession") }
	override func getPerformanceMode() throws -> NnApm_PerformanceMode { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IManager#GetPerformanceMode") }
}
*/

class NnApm_IManagerPrivileged: IpcService {
	func openSession() throws -> NnApm_ISession { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IManagerPrivileged#OpenSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSession()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::apm::IManagerPrivileged: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnApm_IManagerPrivileged_Impl: NnApm_IManagerPrivileged {
	override func openSession() throws -> NnApm_ISession { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IManagerPrivileged#OpenSession") }
}
*/

class NnApm_ISystemManager: IpcService {
	func requestPerformanceMode(_ _0: NnApm_PerformanceMode) throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#RequestPerformanceMode") }
	func getPerformanceEvent(_ _0: NnApm_EventTarget) throws -> KObject { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#GetPerformanceEvent") }
	func getThrottlingState() throws -> NnApm_ThrottlingState { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#GetThrottlingState") }
	func getLastThrottlingState() throws -> NnApm_ThrottlingState { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#GetLastThrottlingState") }
	func clearLastThrottlingState() throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#ClearLastThrottlingState") }
	func loadAndApplySettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#LoadAndApplySettings") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestPerformanceMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getPerformanceEvent(im.getData(8) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			let ret = try getThrottlingState()
			om.initialize(0, 0, 40)
			if ret.count != 0x28 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 3:
			let ret = try getLastThrottlingState()
			om.initialize(0, 0, 40)
			if ret.count != 0x28 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 4:
			try clearLastThrottlingState()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try loadAndApplySettings(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::apm::ISystemManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnApm_ISystemManager_Impl: NnApm_ISystemManager {
	override func requestPerformanceMode(_ _0: NnApm_PerformanceMode) throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#RequestPerformanceMode") }
	override func getPerformanceEvent(_ _0: NnApm_EventTarget) throws -> KObject { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#GetPerformanceEvent") }
	override func getThrottlingState() throws -> NnApm_ThrottlingState { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#GetThrottlingState") }
	override func getLastThrottlingState() throws -> NnApm_ThrottlingState { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#GetLastThrottlingState") }
	override func clearLastThrottlingState() throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#ClearLastThrottlingState") }
	override func loadAndApplySettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISystemManager#LoadAndApplySettings") }
}
*/

class NnApm_IDebugManager: IpcService {
	func getThrottlingState() throws -> Any? { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IDebugManager#GetThrottlingState") }
	func getLastThrottlingState() throws -> Any? { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IDebugManager#GetLastThrottlingState") }
	func clearLastThrottlingState() throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IDebugManager#ClearLastThrottlingState") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getThrottlingState()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getLastThrottlingState()
			om.initialize(0, 0, 0)
		
		case 2:
			try clearLastThrottlingState()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::apm::IDebugManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnApm_IDebugManager_Impl: NnApm_IDebugManager {
	override func getThrottlingState() throws -> Any? { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IDebugManager#GetThrottlingState") }
	override func getLastThrottlingState() throws -> Any? { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IDebugManager#GetLastThrottlingState") }
	override func clearLastThrottlingState() throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::IDebugManager#ClearLastThrottlingState") }
}
*/

class NnApm_ISession: IpcService {
	func setPerformanceConfiguration(_ _0: NnApm_PerformanceMode, _ _1: NnApm_PerformanceConfiguration) throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISession#SetPerformanceConfiguration") }
	func getPerformanceConfiguration(_ _0: NnApm_PerformanceMode) throws -> NnApm_PerformanceConfiguration { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISession#GetPerformanceConfiguration") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setPerformanceConfiguration(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getPerformanceConfiguration(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::apm::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnApm_ISession_Impl: NnApm_ISession {
	override func setPerformanceConfiguration(_ _0: NnApm_PerformanceMode, _ _1: NnApm_PerformanceConfiguration) throws { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISession#SetPerformanceConfiguration") }
	override func getPerformanceConfiguration(_ _0: NnApm_PerformanceMode) throws -> NnApm_PerformanceConfiguration { throw IpcError.unimplemented(name: "nn::apm::nn::apm::ISession#GetPerformanceConfiguration") }
}
*/
