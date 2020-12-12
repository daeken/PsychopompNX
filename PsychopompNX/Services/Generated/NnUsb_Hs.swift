class NnUsbHs_IClientEpSession: IpcService {
	func unknown0() throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown1") }
	func unknown2() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown3") }
	func postBufferAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#PostBufferAsync") }
	func unknown5(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown5") }
	func unknown6(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown6") }
	func unknown7(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown7") }
	func unknown8(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientEpSession#Unknown8") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try postBufferAsync(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5(nil, im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6(nil, im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try unknown8(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::hs::IClientEpSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbHs_IClientRootSession: IpcService {
	func bindClientProcess(_ _0: KObject) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#BindClientProcess") }
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#Unknown2") }
	func unknown3(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#Unknown3") }
	func unknown4(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#Unknown4") }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#Unknown5") }
	func getInterfaceStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#GetInterfaceStateChangeEvent") }
	func getClientIfSession(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> NnUsbHs_IClientIfSession { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientRootSession#GetClientIfSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try bindClientProcess(try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getInterfaceStateChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 7:
			let ret = try getClientIfSession(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>, im.getBuffer(0x6, 1) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::usb::hs::IClientRootSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbHs_IClientIfSession: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown0") }
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown1") }
	func unknown2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown2") }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown3") }
	func unknown4() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown4") }
	func ctrlXferAsync(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#CtrlXferAsync") }
	func unknown6() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown6") }
	func getCtrlXferReport(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#GetCtrlXferReport") }
	func unknown8() throws { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#Unknown8") }
	func getClientEpSession(_ _0: Any?) throws -> (Any?, NnUsbHs_IClientEpSession) { throw IpcError.unimplemented(name: "nn::usb::hs::nn::usb::hs::IClientIfSession#GetClientEpSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try unknown1(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try ctrlXferAsync(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 7:
			try getCtrlXferReport(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			try unknown8()
			om.initialize(0, 0, 0)
		
		case 9:
			let (_0, _1) = try getClientEpSession(nil)
			om.initialize(1, 0, 0)
			om.move(0, _1)
		
		default:
			print("Unhandled command to nn::usb::hs::IClientIfSession: \(im.commandId)")
			try! bailout()
		}
	}
}
