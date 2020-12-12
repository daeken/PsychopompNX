class NnUart_IPortSession: IpcService {
	func openSession(_ _0: Any?, _ _1: KObject, _ _2: KObject) throws -> Any? { throw IpcError.unimplemented }
	func openSessionForTest(_ _0: Any?, _ _1: KObject, _ _2: KObject) throws -> Any? { throw IpcError.unimplemented }
	func unknown2() throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown4() throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown6(_ _0: Any?) throws -> (Any?, KObject) { throw IpcError.unimplemented }
	func unknown7(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSession(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(1)) as KObject)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try openSessionForTest(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(1)) as KObject)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5(im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			let (_0, _1) = try unknown6(nil)
			om.initialize(0, 1, 0)
			om.copy(0, _1)
		
		case 7:
			let ret = try unknown7(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::uart::IPortSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUart_IManager: IpcService {
	func doesUartExist(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func doesUartExistForTest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setUartBaudrate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setUartBaudrateForTest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isSomethingUartValid(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isSomethingUartValidForTest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSession() throws -> NnUart_IPortSession { throw IpcError.unimplemented }
	func isSomethingUartValid2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isSomethingUartValid2ForTest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try doesUartExist(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try doesUartExistForTest(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try setUartBaudrate(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try setUartBaudrateForTest(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try isSomethingUartValid(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try isSomethingUartValidForTest(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getSession()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7:
			let ret = try isSomethingUartValid2(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try isSomethingUartValid2ForTest(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::uart::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}
