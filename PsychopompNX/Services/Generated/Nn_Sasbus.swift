class NnSasbus_IManager: IpcService {
	func openSession(_ _0: Any?) throws -> NnSasbus_ISession { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::IManager#OpenSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openSession(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::sasbus::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSasbus_IManager_Impl: NnSasbus_IManager {
	override func openSession(_ _0: Any?) throws -> NnSasbus_ISession { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::IManager#OpenSession") }
}
*/

class NnSasbus_ISession: IpcService {
	func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown0") }
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown3") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(nil, im.getBuffer(0x21, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil, im.getBuffer(0x22, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::sasbus::ISession: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSasbus_ISession_Impl: NnSasbus_ISession {
	override func unknown0(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown0") }
	override func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown1") }
	override func unknown2(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown2") }
	override func unknown3() throws { throw IpcError.unimplemented(name: "nn::sasbus::nn::sasbus::ISession#Unknown3") }
}
*/
