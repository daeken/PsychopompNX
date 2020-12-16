class NnUsbDs_IDsService: IpcService {
	func bindDevice(_ complexId: UInt32) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#BindDevice") }
	func bindClientProcess(_ _0: KObject) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#BindClientProcess") }
	func registerInterface(_ address: UInt8) throws -> NnUsbDs_IDsInterface { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#RegisterInterface") }
	func getStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#GetStateChangeEvent") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#GetState") }
	func clearDeviceData() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#ClearDeviceData") }
	func addUsbStringDescriptor(_ string_descriptor: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#AddUsbStringDescriptor") }
	func deleteUsbStringDescriptor(_ index: UInt8) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#DeleteUsbStringDescriptor") }
	func setUsbDeviceDescriptor(_ speed_mode: NnUsb_Usb_Device_Speed, _ descriptor: Buffer<NnUsb_Usb_Device_Descriptor>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#SetUsbDeviceDescriptor") }
	func setBinaryObjectStore(_ _0: Buffer<NnUsb_Usb_Bos_Descriptor>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#SetBinaryObjectStore") }
	func enable() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#Enable") }
	func disable() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#Disable") }
	
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
			let ret = try addUsbStringDescriptor(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			try deleteUsbStringDescriptor(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 8:
			try setUsbDeviceDescriptor(NnUsb_Usb_Device_Speed(rawValue: im.getData(8) as UInt32)!, im.getBuffer(0x5, 0)! as Buffer<NnUsb_Usb_Device_Descriptor>)
			om.initialize(0, 0, 0)
		
		case 9:
			try setBinaryObjectStore(im.getBuffer(0x5, 0)! as Buffer<NnUsb_Usb_Bos_Descriptor>)
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

/*
class NnUsbDs_IDsService_Impl: NnUsbDs_IDsService {
	override func bindDevice(_ complexId: UInt32) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#BindDevice") }
	override func bindClientProcess(_ _0: KObject) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#BindClientProcess") }
	override func registerInterface(_ address: UInt8) throws -> NnUsbDs_IDsInterface { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#RegisterInterface") }
	override func getStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#GetStateChangeEvent") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#GetState") }
	override func clearDeviceData() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#ClearDeviceData") }
	override func addUsbStringDescriptor(_ string_descriptor: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#AddUsbStringDescriptor") }
	override func deleteUsbStringDescriptor(_ index: UInt8) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#DeleteUsbStringDescriptor") }
	override func setUsbDeviceDescriptor(_ speed_mode: NnUsb_Usb_Device_Speed, _ descriptor: Buffer<NnUsb_Usb_Device_Descriptor>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#SetUsbDeviceDescriptor") }
	override func setBinaryObjectStore(_ _0: Buffer<NnUsb_Usb_Bos_Descriptor>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#SetBinaryObjectStore") }
	override func enable() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#Enable") }
	override func disable() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsService#Disable") }
}
*/

class NnUsbDs_IDsEndpoint: IpcService {
	func postBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#PostBufferAsync") }
	func cancel() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#Cancel") }
	func getCompletionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#GetCompletionEvent") }
	func getReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#GetReportData") }
	func stall() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#Stall") }
	func setZlt(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#SetZlt") }
	
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

/*
class NnUsbDs_IDsEndpoint_Impl: NnUsbDs_IDsEndpoint {
	override func postBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#PostBufferAsync") }
	override func cancel() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#Cancel") }
	override func getCompletionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#GetCompletionEvent") }
	override func getReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#GetReportData") }
	override func stall() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#Stall") }
	override func setZlt(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsEndpoint#SetZlt") }
}
*/

class NnUsbDs_IDsInterface: IpcService {
	func registerEndpoint(_ address: UInt8) throws -> NnUsbDs_IDsEndpoint { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#RegisterEndpoint") }
	func getSetupEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetSetupEvent") }
	func getSetupPacket(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetSetupPacket") }
	func enableInterface() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#EnableInterface") }
	func disableInterface() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#DisableInterface") }
	func ctrlInPostBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#CtrlInPostBufferAsync") }
	func ctrlOutPostBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#CtrlOutPostBufferAsync") }
	func getCtrlInCompletionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlInCompletionEvent") }
	func getCtrlInReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlInReportData") }
	func getCtrlOutCompletionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlOutCompletionEvent") }
	func getCtrlOutReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlOutReportData") }
	func stallCtrl() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#StallCtrl") }
	func appendConfigurationData(_ interface_number: UInt8, _ speed_mode: NnUsb_Usb_Device_Speed, _ descriptor: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#AppendConfigurationData") }
	
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
			try getSetupPacket(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
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
			try appendConfigurationData(im.getData(8) as UInt8, NnUsb_Usb_Device_Speed(rawValue: im.getData(12) as UInt32)!, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::usb::ds::IDsInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnUsbDs_IDsInterface_Impl: NnUsbDs_IDsInterface {
	override func registerEndpoint(_ address: UInt8) throws -> NnUsbDs_IDsEndpoint { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#RegisterEndpoint") }
	override func getSetupEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetSetupEvent") }
	override func getSetupPacket(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetSetupPacket") }
	override func enableInterface() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#EnableInterface") }
	override func disableInterface() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#DisableInterface") }
	override func ctrlInPostBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#CtrlInPostBufferAsync") }
	override func ctrlOutPostBufferAsync(_ size: UInt32, _ buffer: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#CtrlOutPostBufferAsync") }
	override func getCtrlInCompletionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlInCompletionEvent") }
	override func getCtrlInReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlInReportData") }
	override func getCtrlOutCompletionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlOutCompletionEvent") }
	override func getCtrlOutReportData() throws -> (entries: NnUsb_Usb_Report_Entry, report_count: UInt32) { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#GetCtrlOutReportData") }
	override func stallCtrl() throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#StallCtrl") }
	override func appendConfigurationData(_ interface_number: UInt8, _ speed_mode: NnUsb_Usb_Device_Speed, _ descriptor: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::usb::ds::nn::usb::ds::IDsInterface#AppendConfigurationData") }
}
*/
