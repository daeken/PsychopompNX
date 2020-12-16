class NnI2c_IManager: IpcService {
	func openSessionForDev(_ _0: UInt16, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32) throws -> NnI2c_ISession { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#OpenSessionForDev") }
	func openSession(_ _0: UInt32) throws -> NnI2c_ISession { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#OpenSession") }
	func hasDevice(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#HasDevice") }
	func hasDeviceForDev(_ _0: UInt16, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#HasDeviceForDev") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSessionForDev(im.getData(8) as UInt16, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try openSession(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try hasDevice(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 3:
			let ret = try hasDeviceForDev(im.getData(8) as UInt16, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::i2c::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnI2c_IManager_Impl: NnI2c_IManager {
	override func openSessionForDev(_ _0: UInt16, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32) throws -> NnI2c_ISession { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#OpenSessionForDev") }
	override func openSession(_ _0: UInt32) throws -> NnI2c_ISession { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#OpenSession") }
	override func hasDevice(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#HasDevice") }
	override func hasDeviceForDev(_ _0: UInt16, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::IManager#HasDeviceForDev") }
}
*/

class NnI2c_ISession: IpcService {
	func send(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#Send") }
	func receive(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#Receive") }
	func executeCommandList(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#ExecuteCommandList") }
	func sendAuto(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#SendAuto") }
	func receiveAuto(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#ReceiveAuto") }
	func executeCommandListAuto(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#ExecuteCommandListAuto") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try send(im.getData(8) as UInt32, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try receive(im.getData(8) as UInt32, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try executeCommandList(im.getBuffer(0x9, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try sendAuto(im.getData(8) as UInt32, im.getBuffer(0x21, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			try receiveAuto(im.getData(8) as UInt32, im.getBuffer(0x22, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			try executeCommandListAuto(im.getBuffer(0x9, 0)! as Buffer<UInt8>, im.getBuffer(0x22, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::i2c::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnI2c_ISession_Impl: NnI2c_ISession {
	override func send(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#Send") }
	override func receive(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#Receive") }
	override func executeCommandList(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#ExecuteCommandList") }
	override func sendAuto(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#SendAuto") }
	override func receiveAuto(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#ReceiveAuto") }
	override func executeCommandListAuto(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::i2c::nn::i2c::ISession#ExecuteCommandListAuto") }
}
*/
