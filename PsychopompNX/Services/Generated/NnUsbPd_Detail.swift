class NnUsbPdDetail_IPdCradleManager: IpcService {
	func getPdCradleSession() throws -> NnUsbPdDetail_IPdCradleSession { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getPdCradleSession()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::usb::pd::detail::IPdCradleManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbPdDetail_IPdManufactureManager: IpcService {
	func unknown0() throws -> NnUsbPdDetail_IPdManufactureSession { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::usb::pd::detail::IPdManufactureManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbPdDetail_IPdManufactureSession: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1() throws -> Any? { throw IpcError.unimplemented }
	func unknown2() throws -> Any? { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::pd::detail::IPdManufactureSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbPdDetail_IPdCradleSession: IpcService {
	func vdmUserWrite(_ _0: Any?) throws { throw IpcError.unimplemented }
	func vdmUserRead(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func vdm20Init() throws { throw IpcError.unimplemented }
	func getFwType() throws -> Any? { throw IpcError.unimplemented }
	func getFwRevision() throws -> Any? { throw IpcError.unimplemented }
	func getManufacturerId() throws -> Any? { throw IpcError.unimplemented }
	func getDeviceId() throws -> Any? { throw IpcError.unimplemented }
	func unknown7() throws -> Any? { throw IpcError.unimplemented }
	func unknown8() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try vdmUserWrite(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try vdmUserRead(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try vdm20Init()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getFwType()
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getFwRevision()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getManufacturerId()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getDeviceId()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7()
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::pd::detail::IPdCradleSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbPdDetail_IPdManager: IpcService {
	func getPdSession() throws -> NnUsbPdDetail_IPdSession { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getPdSession()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::usb::pd::detail::IPdManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbPdDetail_IPdSession: IpcService {
	func bindNoticeEvent() throws -> KObject { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func getStatus() throws -> Any? { throw IpcError.unimplemented }
	func getNotice() throws -> Any? { throw IpcError.unimplemented }
	func unknown4() throws { throw IpcError.unimplemented }
	func unknown5() throws { throw IpcError.unimplemented }
	func replyPowerRequest(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try bindNoticeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getStatus()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getNotice()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5()
			om.initialize(0, 0, 0)
		
		case 6:
			try replyPowerRequest(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::pd::detail::IPdSession: \(im.commandId)")
			try! bailout()
		}
	}
}
