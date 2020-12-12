class NnDmnt_IInterface: IpcService {
	func breakDebugProcess(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func terminateDebugProcess(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func closeHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func loadImage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getProcessId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getProcessHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func waitSynchronization(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getDebugEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getProcessModuleInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getProcessList(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getThreadList(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getDebugThreadContext(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func continueDebugEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func readDebugProcessMemory(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func writeDebugProcessMemory(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setDebugThreadContext(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getDebugThreadParam(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func initializeThreadInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setHardwareBreakPoint(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func queryDebugProcessMemory(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getProcessMemoryDetails(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func attachByProgramId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func attachOnLaunch(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getDebugMonitorProcessId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getJitDebugProcessList(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func createCoreDump(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAllDebugThreadInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileOpen(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileClose(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileRead(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileWrite(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileSetAttributes(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileGetInformation(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileSetTime(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileSetSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileDelete(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_FileMove(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryCreate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryDelete(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryRename(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryGetCount(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryOpen(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryGetNext(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_DirectoryClose(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_GetFreeSpace(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func targetIO_GetVolumeInformation(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func initiateCoreDump(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func continueCoreDump(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func addTTYToCoreDump(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func addImageToCoreDump(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func closeCoreDump(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try breakDebugProcess(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try terminateDebugProcess(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try closeHandle(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try loadImage(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getProcessId(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getProcessHandle(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try waitSynchronization(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try getDebugEvent(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getProcessModuleInfo(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getProcessList(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try getThreadList(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getDebugThreadContext(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try continueDebugEvent(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try readDebugProcessMemory(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try writeDebugProcessMemory(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try setDebugThreadContext(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try getDebugThreadParam(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try initializeThreadInfo(nil)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try setHardwareBreakPoint(nil)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try queryDebugProcessMemory(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getProcessMemoryDetails(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try attachByProgramId(nil)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try attachOnLaunch(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getDebugMonitorProcessId(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try getJitDebugProcessList(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			let ret = try createCoreDump(nil)
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try getAllDebugThreadInfo(nil)
			om.initialize(0, 0, 0)
		
		case 29:
			let ret = try targetIO_FileOpen(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			let ret = try targetIO_FileClose(nil)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try targetIO_FileRead(nil)
			om.initialize(0, 0, 0)
		
		case 32:
			let ret = try targetIO_FileWrite(nil)
			om.initialize(0, 0, 0)
		
		case 33:
			let ret = try targetIO_FileSetAttributes(nil)
			om.initialize(0, 0, 0)
		
		case 34:
			let ret = try targetIO_FileGetInformation(nil)
			om.initialize(0, 0, 0)
		
		case 35:
			let ret = try targetIO_FileSetTime(nil)
			om.initialize(0, 0, 0)
		
		case 36:
			let ret = try targetIO_FileSetSize(nil)
			om.initialize(0, 0, 0)
		
		case 37:
			let ret = try targetIO_FileDelete(nil)
			om.initialize(0, 0, 0)
		
		case 38:
			let ret = try targetIO_FileMove(nil)
			om.initialize(0, 0, 0)
		
		case 39:
			let ret = try targetIO_DirectoryCreate(nil)
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try targetIO_DirectoryDelete(nil)
			om.initialize(0, 0, 0)
		
		case 41:
			let ret = try targetIO_DirectoryRename(nil)
			om.initialize(0, 0, 0)
		
		case 42:
			let ret = try targetIO_DirectoryGetCount(nil)
			om.initialize(0, 0, 0)
		
		case 43:
			let ret = try targetIO_DirectoryOpen(nil)
			om.initialize(0, 0, 0)
		
		case 44:
			let ret = try targetIO_DirectoryGetNext(nil)
			om.initialize(0, 0, 0)
		
		case 45:
			let ret = try targetIO_DirectoryClose(nil)
			om.initialize(0, 0, 0)
		
		case 46:
			let ret = try targetIO_GetFreeSpace(nil)
			om.initialize(0, 0, 0)
		
		case 47:
			let ret = try targetIO_GetVolumeInformation(nil)
			om.initialize(0, 0, 0)
		
		case 48:
			let ret = try initiateCoreDump(nil)
			om.initialize(0, 0, 0)
		
		case 49:
			let ret = try continueCoreDump(nil)
			om.initialize(0, 0, 0)
		
		case 50:
			let ret = try addTTYToCoreDump(nil)
			om.initialize(0, 0, 0)
		
		case 51:
			let ret = try addImageToCoreDump(nil)
			om.initialize(0, 0, 0)
		
		case 52:
			let ret = try closeCoreDump(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::dmnt::IInterface: \(im.commandId)")
			try! bailout()
		}
	}
}