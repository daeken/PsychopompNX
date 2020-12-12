class NnPmDetail_IInformationInterface: IpcService {
	func getTitleId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getTitleId(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pm::detail::IInformationInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPmDetail_IBootModeInterface: IpcService {
	func getBootMode() throws -> Any? { throw IpcError.unimplemented }
	func setMaintenanceBoot() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getBootMode()
			om.initialize(0, 0, 0)
		
		case 1:
			try setMaintenanceBoot()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pm::detail::IBootModeInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPmDetail_IShellInterface: IpcService {
	func launchProcess(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func terminateProcessByPid(_ _0: Any?) throws { throw IpcError.unimplemented }
	func terminateProcessByTitleId(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getProcessEventWaiter() throws -> KObject { throw IpcError.unimplemented }
	func getProcessEventType() throws -> Any? { throw IpcError.unimplemented }
	func finalizeDeadProcess(_ _0: Any?) throws { throw IpcError.unimplemented }
	func clearProcessNotificationFlag(_ _0: Any?) throws { throw IpcError.unimplemented }
	func notifyBootFinished() throws { throw IpcError.unimplemented }
	func getApplicationPid() throws -> Any? { throw IpcError.unimplemented }
	func boostSystemMemoryResourceLimit(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try launchProcess(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try terminateProcessByPid(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try terminateProcessByTitleId(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getProcessEventWaiter()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 4:
			let ret = try getProcessEventType()
			om.initialize(0, 0, 0)
		
		case 5:
			try finalizeDeadProcess(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try clearProcessNotificationFlag(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try notifyBootFinished()
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getApplicationPid()
			om.initialize(0, 0, 0)
		
		case 9:
			try boostSystemMemoryResourceLimit(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pm::detail::IShellInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPmDetail_IDebugMonitorInterface: IpcService {
	func isDebugMode(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getDebugProcesses(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getTitlePid(_ _0: Any?) throws { throw IpcError.unimplemented }
	func enableDebugForTitleId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getApplicationPid(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented }
	func enableDebugForApplication() throws -> Any? { throw IpcError.unimplemented }
	func disableDebug() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try isDebugMode(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getDebugProcesses(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try getTitlePid(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try enableDebugForTitleId(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getApplicationPid(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try enableDebugForApplication()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try disableDebug()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::pm::detail::IDebugMonitorInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
