class NnUsbPm_IPmService: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::pm::nn::usb::pm::IPmService#Unknown0") }
	func unknown1(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::pm::nn::usb::pm::IPmService#Unknown1") }
	func unknown2() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::pm::nn::usb::pm::IPmService#Unknown2") }
	func unknown3() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pm::nn::usb::pm::IPmService#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::pm::nn::usb::pm::IPmService#Unknown4") }
	func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pm::nn::usb::pm::IPmService#Unknown5") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try unknown1(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::pm::IPmService: \(im.commandId)")
			try! bailout()
		}
	}
}
