class NnHidbus_IHidbusServer: IpcService {
	func getBusHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetBusHandle") }
	func isExternalDeviceConnected(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#IsExternalDeviceConnected") }
	func initialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#Initialize") }
	func finalize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#Finalize") }
	func enableExternalDevice(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#EnableExternalDevice") }
	func getExternalDeviceId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetExternalDeviceId") }
	func sendCommandAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#SendCommandAsync") }
	func getSendCommandAsynceResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetSendCommandAsynceResult") }
	func setEventForSendCommandAsycResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#SetEventForSendCommandAsycResult") }
	func getSharedMemoryHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetSharedMemoryHandle") }
	func enableJoyPollingReceiveMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#EnableJoyPollingReceiveMode") }
	func disableJoyPollingReceiveMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#DisableJoyPollingReceiveMode") }
	func getPollingData(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetPollingData") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			let ret = try getBusHandle(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try isExternalDeviceConnected(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try initialize(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try finalize(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try enableExternalDevice(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getExternalDeviceId(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try sendCommandAsync(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getSendCommandAsynceResult(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try setEventForSendCommandAsycResult(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try getSharedMemoryHandle(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try enableJoyPollingReceiveMode(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try disableJoyPollingReceiveMode(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try getPollingData(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::hidbus::IHidbusServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHidbus_IHidbusServer_Impl: NnHidbus_IHidbusServer {
	override func getBusHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetBusHandle") }
	override func isExternalDeviceConnected(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#IsExternalDeviceConnected") }
	override func initialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#Initialize") }
	override func finalize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#Finalize") }
	override func enableExternalDevice(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#EnableExternalDevice") }
	override func getExternalDeviceId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetExternalDeviceId") }
	override func sendCommandAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#SendCommandAsync") }
	override func getSendCommandAsynceResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetSendCommandAsynceResult") }
	override func setEventForSendCommandAsycResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#SetEventForSendCommandAsycResult") }
	override func getSharedMemoryHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetSharedMemoryHandle") }
	override func enableJoyPollingReceiveMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#EnableJoyPollingReceiveMode") }
	override func disableJoyPollingReceiveMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#DisableJoyPollingReceiveMode") }
	override func getPollingData(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hidbus::nn::hidbus::IHidbusServer#GetPollingData") }
}
*/
