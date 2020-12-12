class NnsHosbinder_IHOSBinderDriver: IpcService {
	func transactParcel(_ id: Int32, _ code: UInt32, _ parcel_data: Buffer<UInt8>, _ flags: UInt32, _ parcel_reply: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#TransactParcel") }
	func adjustRefcount(_ id: Int32, _ addVal: Int32, _ type: Int32) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#AdjustRefcount") }
	func getNativeHandle(_ id: Int32, _ _1: UInt32) throws -> KObject { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#GetNativeHandle") }
	func transactParcelAuto(_ id: Int32, _ code: UInt32, _ parcel_data: Buffer<UInt8>, _ flags: UInt32, _ parcel_reply: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#TransactParcelAuto") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try transactParcel(im.getData(8) as Int32, im.getData(12) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getData(16) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try adjustRefcount(im.getData(8) as Int32, im.getData(12) as Int32, im.getData(16) as Int32)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getNativeHandle(im.getData(8) as Int32, im.getData(12) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			try transactParcelAuto(im.getData(8) as Int32, im.getData(12) as UInt32, im.getBuffer(0x21, 0) as Buffer<UInt8>, im.getData(16) as UInt32, im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nns::hosbinder::IHOSBinderDriver: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnsHosbinder_IHOSBinderDriver_Impl: NnsHosbinder_IHOSBinderDriver {
	override func transactParcel(_ id: Int32, _ code: UInt32, _ parcel_data: Buffer<UInt8>, _ flags: UInt32, _ parcel_reply: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#TransactParcel") }
	override func adjustRefcount(_ id: Int32, _ addVal: Int32, _ type: Int32) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#AdjustRefcount") }
	override func getNativeHandle(_ id: Int32, _ _1: UInt32) throws -> KObject { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#GetNativeHandle") }
	override func transactParcelAuto(_ id: Int32, _ code: UInt32, _ parcel_data: Buffer<UInt8>, _ flags: UInt32, _ parcel_reply: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nns::hosbinder::nns::hosbinder::IHOSBinderDriver#TransactParcelAuto") }
}
*/
