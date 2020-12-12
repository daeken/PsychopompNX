class NnUsbPdDetail_IPdCradleManager: IpcService {
	func getPdCradleSession() throws -> NnUsbPdDetail_IPdCradleSession { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleManager#GetPdCradleSession") }
	
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

/*
class NnUsbPdDetail_IPdCradleManager_Impl: NnUsbPdDetail_IPdCradleManager {
	override func getPdCradleSession() throws -> NnUsbPdDetail_IPdCradleSession { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleManager#GetPdCradleSession") }
}
*/

class NnUsbPdDetail_IPdManufactureManager: IpcService {
	func unknown0() throws -> NnUsbPdDetail_IPdManufactureSession { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureManager#Unknown0") }
	
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

/*
class NnUsbPdDetail_IPdManufactureManager_Impl: NnUsbPdDetail_IPdManufactureManager {
	override func unknown0() throws -> NnUsbPdDetail_IPdManufactureSession { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureManager#Unknown0") }
}
*/

class NnUsbPdDetail_IPdManufactureSession: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown0") }
	func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown1") }
	func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown2") }
	func unknown3() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown3") }
	
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

/*
class NnUsbPdDetail_IPdManufactureSession_Impl: NnUsbPdDetail_IPdManufactureSession {
	override func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown0") }
	override func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown1") }
	override func unknown2() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown2") }
	override func unknown3() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManufactureSession#Unknown3") }
}
*/

class NnUsbPdDetail_IPdCradleSession: IpcService {
	func vdmUserWrite(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#VdmUserWrite") }
	func vdmUserRead(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#VdmUserRead") }
	func vdm20Init() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#Vdm20Init") }
	func getFwType() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetFwType") }
	func getFwRevision() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetFwRevision") }
	func getManufacturerId() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetManufacturerId") }
	func getDeviceId() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetDeviceId") }
	func unknown7() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#Unknown7") }
	func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#Unknown8") }
	
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

/*
class NnUsbPdDetail_IPdCradleSession_Impl: NnUsbPdDetail_IPdCradleSession {
	override func vdmUserWrite(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#VdmUserWrite") }
	override func vdmUserRead(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#VdmUserRead") }
	override func vdm20Init() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#Vdm20Init") }
	override func getFwType() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetFwType") }
	override func getFwRevision() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetFwRevision") }
	override func getManufacturerId() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetManufacturerId") }
	override func getDeviceId() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#GetDeviceId") }
	override func unknown7() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#Unknown7") }
	override func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdCradleSession#Unknown8") }
}
*/

class NnUsbPdDetail_IPdManager: IpcService {
	func getPdSession() throws -> NnUsbPdDetail_IPdSession { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManager#GetPdSession") }
	
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

/*
class NnUsbPdDetail_IPdManager_Impl: NnUsbPdDetail_IPdManager {
	override func getPdSession() throws -> NnUsbPdDetail_IPdSession { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdManager#GetPdSession") }
}
*/

class NnUsbPdDetail_IPdSession: IpcService {
	func bindNoticeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#BindNoticeEvent") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#Unknown1") }
	func getStatus() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#GetStatus") }
	func getNotice() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#GetNotice") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#Unknown4") }
	func unknown5() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#Unknown5") }
	func replyPowerRequest(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#ReplyPowerRequest") }
	
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

/*
class NnUsbPdDetail_IPdSession_Impl: NnUsbPdDetail_IPdSession {
	override func bindNoticeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#BindNoticeEvent") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#Unknown1") }
	override func getStatus() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#GetStatus") }
	override func getNotice() throws -> Any? { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#GetNotice") }
	override func unknown4() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#Unknown4") }
	override func unknown5() throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#Unknown5") }
	override func replyPowerRequest(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::usb::pd::detail::nn::usb::pd::detail::IPdSession#ReplyPowerRequest") }
}
*/
