class NnLdrDetail_IRoInterface: IpcService {
	func loadNro(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: UInt64, _ _5: Pid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IRoInterface#LoadNro") }
	func unloadNro(_ _0: UInt64, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IRoInterface#UnloadNro") }
	func loadNrr(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IRoInterface#LoadNrr") }
	func unloadNrr(_ _0: UInt64, _ _1: UInt64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IRoInterface#UnloadNrr") }
	func initialize(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IRoInterface#Initialize") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try loadNro(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64, im.getData(40) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			try unloadNro(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 2:
			try loadNrr(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 3:
			try unloadNrr(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 4:
			try initialize(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldr::detail::IRoInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdrDetail_IProcessManagerInterface: IpcService {
	func createProcess(_ _0: Any?, _ _1: KObject) throws -> IpcService { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IProcessManagerInterface#CreateProcess") }
	func getProgramInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IProcessManagerInterface#GetProgramInfo") }
	func registerTitle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IProcessManagerInterface#RegisterTitle") }
	func unregisterTitle(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IProcessManagerInterface#UnregisterTitle") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createProcess(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try getProgramInfo(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try registerTitle(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unregisterTitle(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldr::detail::IProcessManagerInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdrDetail_IDebugMonitorInterface: IpcService {
	func addProcessToDebugLaunchQueue(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IDebugMonitorInterface#AddProcessToDebugLaunchQueue") }
	func clearDebugLaunchQueue() throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IDebugMonitorInterface#ClearDebugLaunchQueue") }
	func getNsoInfos(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IDebugMonitorInterface#GetNsoInfos") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try addProcessToDebugLaunchQueue(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try clearDebugLaunchQueue()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getNsoInfos(nil, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldr::detail::IDebugMonitorInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdrDetail_IShellInterface: IpcService {
	func addProcessToLaunchQueue(_ _0: Buffer<UInt8>, _ size: UInt32, _ appID: NnNcm_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IShellInterface#AddProcessToLaunchQueue") }
	func clearLaunchQueue() throws { throw IpcError.unimplemented(name: "nn::ldr::detail::nn::ldr::detail::IShellInterface#ClearLaunchQueue") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try addProcessToLaunchQueue(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try clearLaunchQueue()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldr::detail::IShellInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
