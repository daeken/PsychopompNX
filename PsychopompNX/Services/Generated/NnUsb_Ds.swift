class NnUsbDs_IDsService: IpcService {
	func bindDevice(_ complexId: UInt32) throws { throw IpcError.unimplemented }
	func bindClientProcess(_ _0: KObject) throws { throw IpcError.unimplemented }
	func registerInterface(_ address: UInt8) throws -> NnUsbDs_IDsInterface { throw IpcError.unimplemented }
	func getStateChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func clearDeviceData() throws { throw IpcError.unimplemented }
	func addUsbStringDescriptor(_ string_descriptor: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented }
	func deleteUsbStringDescriptor(_ index: UInt8) throws { throw IpcError.unimplemented }
	func setUsbDeviceDescriptor(_ speed_mode: NnUsb_Usb_Device_Speed, _ descriptor: Buffer<NnUsb_Usb_Device_Descriptor>) throws { throw IpcError.unimplemented }
	func setBinaryObjectStore(_ _0: Buffer<NnUsb_Usb_Bos_Descriptor>) throws { throw IpcError.unimplemented }
	func enable() throws { throw IpcError.unimplemented }
	func disable() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try bindDevice(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			try bindClientProcess(try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try registerInterface(im.getData(8) as UInt8)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getStateChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 4:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 5:
			try clearDeviceData()
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try addUsbStringDescriptor(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			try deleteUsbStringDescriptor(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 8:
			try setUsbDeviceDescriptor(NnUsb_Usb_Device_Speed(rawValue: im.getData(8) as UInt32)!, im.getBuffer(0x5, 0) as Buffer<NnUsb_Usb_Device_Descriptor>)
			om.initialize(0, 0, 0)
		
		case 9:
			try setBinaryObjectStore(im.getBuffer(0x5, 0) as Buffer<NnUsb_Usb_Bos_Descriptor>)
			om.initialize(0, 0, 0)
		
		case 10:
			try enable()
			om.initialize(0, 0, 0)
		
		case 11:
			try disable()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::ds::IDsService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbDs_IDsEndpoint: IpcService {
	func postBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented }
	func cancel() throws { throw IpcError.unimplemented }
	func getCompletionEvent() throws -> KObject { throw IpcError.unimplemented }
	func getReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented }
	func stall() throws { throw IpcError.unimplemented }
	func setZlt(_ _0: Bool) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try postBufferAsync(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try cancel()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getCompletionEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			let (_0, _1) = try getReportData()
			om.initialize(0, 0, 20)
			om.setData(8, _0.urbId)
			om.setData(12, _0.requestedSize)
			om.setData(16, _0.transferredSize)
			om.setData(20, _0.urbStatus)
			om.setData(24, _1)
		
		case 4:
			try stall()
			om.initialize(0, 0, 0)
		
		case 5:
			try setZlt(im.getData(8) as Bool)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::ds::IDsEndpoint: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnUsbDs_IDsInterface: IpcService {
	func registerEndpoint(_ address: UInt8) throws -> NnUsbDs_IDsEndpoint { throw IpcError.unimplemented }
	func getSetupEvent() throws -> KObject { throw IpcError.unimplemented }
	func getSetupPacket(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func enableInterface() throws { throw IpcError.unimplemented }
	func disableInterface() throws { throw IpcError.unimplemented }
	func ctrlInPostBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented }
	func ctrlOutPostBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented }
	func getCtrlInCompletionEvent() throws -> KObject { throw IpcError.unimplemented }
	func getCtrlInReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented }
	func getCtrlOutCompletionEvent() throws -> KObject { throw IpcError.unimplemented }
	func getCtrlOutReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented }
	func stallCtrl() throws { throw IpcError.unimplemented }
	func appendConfigurationData(_ interface_number: UInt8, _ speed_mode: NnUsb_Usb_Device_Speed, _ descriptor: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try registerEndpoint(im.getData(8) as UInt8)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getSetupEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try getSetupPacket(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try enableInterface()
			om.initialize(0, 0, 0)
		
		case 4:
			try disableInterface()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try ctrlInPostBufferAsync(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try ctrlOutPostBufferAsync(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			let ret = try getCtrlInCompletionEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 8:
			let (_0, _1) = try getCtrlInReportData()
			om.initialize(0, 0, 20)
			om.setData(8, _0.urbId)
			om.setData(12, _0.requestedSize)
			om.setData(16, _0.transferredSize)
			om.setData(20, _0.urbStatus)
			om.setData(24, _1)
		
		case 9:
			let ret = try getCtrlOutCompletionEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 10:
			let (_0, _1) = try getCtrlOutReportData()
			om.initialize(0, 0, 20)
			om.setData(8, _0.urbId)
			om.setData(12, _0.requestedSize)
			om.setData(16, _0.transferredSize)
			om.setData(20, _0.urbStatus)
			om.setData(24, _1)
		
		case 11:
			try stallCtrl()
			om.initialize(0, 0, 0)
		
		case 12:
			try appendConfigurationData(im.getData(8) as UInt8, NnUsb_Usb_Device_Speed(rawValue: im.getData(12) as UInt32)!, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::ds::IDsInterface: \(im.commandId)")
			try! bailout()
		}
	}
}