class NnHidbus_IHidbusServer: IpcService {
	func getBusHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isExternalDeviceConnected(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func initialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func finalize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func enableExternalDevice(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getExternalDeviceId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func sendCommandAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSendCommandAsynceResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setEventForSendCommandAsycResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSharedMemoryHandle(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func enableJoyPollingReceiveMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func disableJoyPollingReceiveMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getPollingData(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
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
