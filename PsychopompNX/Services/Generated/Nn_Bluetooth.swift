typealias NnBluetooth_Address = [UInt8]

class NnBluetooth_IBluetoothDriver: IpcService {
	func unknown0() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown0") }
	func _init() throws -> KObject { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Init") }
	func enable() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Enable") }
	func disable() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Disable") }
	func cleanupAndShutdown() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CleanupAndShutdown") }
	func getAdapterProperties(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetAdapterProperties") }
	func getAdapterProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetAdapterProperty") }
	func setAdapterProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SetAdapterProperty") }
	func startDiscovery() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#StartDiscovery") }
	func cancelDiscovery() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CancelDiscovery") }
	func createBond(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CreateBond") }
	func removeBond(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#RemoveBond") }
	func cancelBond(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CancelBond") }
	func pinReply(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#PinReply") }
	func sspReply(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SspReply") }
	func unknown15(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown15") }
	func initInterfaces(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#InitInterfaces") }
	func hidHostInterface_Connect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_Connect") }
	func hidHostInterface_Disconnect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_Disconnect") }
	func hidHostInterface_SendData(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_SendData") }
	func hidHostInterface_SendData2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_SendData2") }
	func hidHostInterface_SetReport(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_SetReport") }
	func hidHostInterface_GetReport(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetReport") }
	func hidHostInterface_WakeController(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_WakeController") }
	func hidHostInterface_AddPairedDevice(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_AddPairedDevice") }
	func hidHostInterface_GetPairedDevice(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetPairedDevice") }
	func hidHostInterface_CleanupAndShutdown() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_CleanupAndShutdown") }
	func unknown27(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown27") }
	func extInterface_SetTSI(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetTSI") }
	func extInterface_SetBurstMode(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetBurstMode") }
	func extInterface_SetZeroRetran(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetZeroRetran") }
	func extInterface_SetMcMode(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetMcMode") }
	func extInterface_StartLlrMode() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_StartLlrMode") }
	func extInterface_ExitLlrMode() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_ExitLlrMode") }
	func extInterface_SetRadio(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetRadio") }
	func extInterface_SetVisibility(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetVisibility") }
	func unknown36(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown36") }
	func unknown37() throws -> KObject { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown37") }
	func hidHostInterface_GetLatestPlr(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetLatestPlr") }
	func extInterface_GetPendingConnections(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_GetPendingConnections") }
	func hidHostInterface_GetChannelMap() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetChannelMap") }
	func setIsBluetoothBoostEnabled(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SetIsBluetoothBoostEnabled") }
	func getIsBluetoothBoostEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetIsBluetoothBoostEnabled") }
	func setIsBluetoothAfhEnabled() throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SetIsBluetoothAfhEnabled") }
	func getIsBluetoothAfhEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetIsBluetoothAfhEnabled") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try _init()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try enable()
			om.initialize(0, 0, 0)
		
		case 3:
			try disable()
			om.initialize(0, 0, 0)
		
		case 4:
			try cleanupAndShutdown()
			om.initialize(0, 0, 0)
		
		case 5:
			try getAdapterProperties(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try getAdapterProperty(nil, im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try setAdapterProperty(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			try startDiscovery()
			om.initialize(0, 0, 0)
		
		case 9:
			try cancelDiscovery()
			om.initialize(0, 0, 0)
		
		case 10:
			try createBond(nil, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			try removeBond(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			try cancelBond(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			try pinReply(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			try sspReply(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try unknown15(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try initInterfaces(nil)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 17:
			try hidHostInterface_Connect(nil)
			om.initialize(0, 0, 0)
		
		case 18:
			try hidHostInterface_Disconnect(nil)
			om.initialize(0, 0, 0)
		
		case 19:
			try hidHostInterface_SendData(nil, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			try hidHostInterface_SendData2(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			try hidHostInterface_SetReport(nil, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			try hidHostInterface_GetReport(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			try hidHostInterface_WakeController(nil)
			om.initialize(0, 0, 0)
		
		case 24:
			try hidHostInterface_AddPairedDevice(im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 25:
			try hidHostInterface_GetPairedDevice(nil, im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 26:
			try hidHostInterface_CleanupAndShutdown()
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try unknown27(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 28:
			try extInterface_SetTSI(nil)
			om.initialize(0, 0, 0)
		
		case 29:
			try extInterface_SetBurstMode(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			try extInterface_SetZeroRetran(nil, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 31:
			try extInterface_SetMcMode(nil)
			om.initialize(0, 0, 0)
		
		case 32:
			try extInterface_StartLlrMode()
			om.initialize(0, 0, 0)
		
		case 33:
			try extInterface_ExitLlrMode()
			om.initialize(0, 0, 0)
		
		case 34:
			try extInterface_SetRadio(nil)
			om.initialize(0, 0, 0)
		
		case 35:
			try extInterface_SetVisibility(nil)
			om.initialize(0, 0, 0)
		
		case 36:
			try unknown36(nil)
			om.initialize(0, 0, 0)
		
		case 37:
			let ret = try unknown37()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 38:
			let ret = try hidHostInterface_GetLatestPlr(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 39:
			try extInterface_GetPendingConnections(im.getBuffer(0x16, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 40:
			try hidHostInterface_GetChannelMap()
			om.initialize(0, 0, 0)
		
		case 41:
			try setIsBluetoothBoostEnabled(im.getBuffer(0x16, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 42:
			try getIsBluetoothBoostEnabled(nil)
			om.initialize(0, 0, 0)
		
		case 43:
			let ret = try setIsBluetoothAfhEnabled()
			om.initialize(0, 0, 0)
		
		case 44:
			try getIsBluetoothAfhEnabled(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bluetooth::IBluetoothDriver: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBluetooth_IBluetoothDriver_Impl: NnBluetooth_IBluetoothDriver {
	override func unknown0() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown0") }
	override func _init() throws -> KObject { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Init") }
	override func enable() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Enable") }
	override func disable() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Disable") }
	override func cleanupAndShutdown() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CleanupAndShutdown") }
	override func getAdapterProperties(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetAdapterProperties") }
	override func getAdapterProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetAdapterProperty") }
	override func setAdapterProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SetAdapterProperty") }
	override func startDiscovery() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#StartDiscovery") }
	override func cancelDiscovery() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CancelDiscovery") }
	override func createBond(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CreateBond") }
	override func removeBond(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#RemoveBond") }
	override func cancelBond(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#CancelBond") }
	override func pinReply(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#PinReply") }
	override func sspReply(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SspReply") }
	override func unknown15(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown15") }
	override func initInterfaces(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#InitInterfaces") }
	override func hidHostInterface_Connect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_Connect") }
	override func hidHostInterface_Disconnect(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_Disconnect") }
	override func hidHostInterface_SendData(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_SendData") }
	override func hidHostInterface_SendData2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_SendData2") }
	override func hidHostInterface_SetReport(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_SetReport") }
	override func hidHostInterface_GetReport(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetReport") }
	override func hidHostInterface_WakeController(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_WakeController") }
	override func hidHostInterface_AddPairedDevice(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_AddPairedDevice") }
	override func hidHostInterface_GetPairedDevice(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetPairedDevice") }
	override func hidHostInterface_CleanupAndShutdown() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_CleanupAndShutdown") }
	override func unknown27(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown27") }
	override func extInterface_SetTSI(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetTSI") }
	override func extInterface_SetBurstMode(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetBurstMode") }
	override func extInterface_SetZeroRetran(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetZeroRetran") }
	override func extInterface_SetMcMode(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetMcMode") }
	override func extInterface_StartLlrMode() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_StartLlrMode") }
	override func extInterface_ExitLlrMode() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_ExitLlrMode") }
	override func extInterface_SetRadio(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetRadio") }
	override func extInterface_SetVisibility(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_SetVisibility") }
	override func unknown36(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown36") }
	override func unknown37() throws -> KObject { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#Unknown37") }
	override func hidHostInterface_GetLatestPlr(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetLatestPlr") }
	override func extInterface_GetPendingConnections(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#ExtInterface_GetPendingConnections") }
	override func hidHostInterface_GetChannelMap() throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#HidHostInterface_GetChannelMap") }
	override func setIsBluetoothBoostEnabled(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SetIsBluetoothBoostEnabled") }
	override func getIsBluetoothBoostEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetIsBluetoothBoostEnabled") }
	override func setIsBluetoothAfhEnabled() throws -> Any? { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#SetIsBluetoothAfhEnabled") }
	override func getIsBluetoothAfhEnabled(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::bluetooth::nn::bluetooth::IBluetoothDriver#GetIsBluetoothAfhEnabled") }
}
*/
