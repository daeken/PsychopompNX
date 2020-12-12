typealias NnBluetooth_Address = [UInt8]

class NnBluetooth_IBluetoothDriver: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func _init() throws -> KObject { throw IpcError.unimplemented }
	func enable() throws { throw IpcError.unimplemented }
	func disable() throws { throw IpcError.unimplemented }
	func cleanupAndShutdown() throws { throw IpcError.unimplemented }
	func getAdapterProperties(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getAdapterProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setAdapterProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func startDiscovery() throws { throw IpcError.unimplemented }
	func cancelDiscovery() throws { throw IpcError.unimplemented }
	func createBond(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func removeBond(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cancelBond(_ _0: Any?) throws { throw IpcError.unimplemented }
	func pinReply(_ _0: Any?) throws { throw IpcError.unimplemented }
	func sspReply(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown15(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func initInterfaces(_ _0: Any?) throws -> KObject { throw IpcError.unimplemented }
	func hidHostInterface_Connect(_ _0: Any?) throws { throw IpcError.unimplemented }
	func hidHostInterface_Disconnect(_ _0: Any?) throws { throw IpcError.unimplemented }
	func hidHostInterface_SendData(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func hidHostInterface_SendData2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func hidHostInterface_SetReport(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func hidHostInterface_GetReport(_ _0: Any?) throws { throw IpcError.unimplemented }
	func hidHostInterface_WakeController(_ _0: Any?) throws { throw IpcError.unimplemented }
	func hidHostInterface_AddPairedDevice(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func hidHostInterface_GetPairedDevice(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func hidHostInterface_CleanupAndShutdown() throws { throw IpcError.unimplemented }
	func unknown27(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func extInterface_SetTSI(_ _0: Any?) throws { throw IpcError.unimplemented }
	func extInterface_SetBurstMode(_ _0: Any?) throws { throw IpcError.unimplemented }
	func extInterface_SetZeroRetran(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func extInterface_SetMcMode(_ _0: Any?) throws { throw IpcError.unimplemented }
	func extInterface_StartLlrMode() throws { throw IpcError.unimplemented }
	func extInterface_ExitLlrMode() throws { throw IpcError.unimplemented }
	func extInterface_SetRadio(_ _0: Any?) throws { throw IpcError.unimplemented }
	func extInterface_SetVisibility(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown36(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown37() throws -> KObject { throw IpcError.unimplemented }
	func hidHostInterface_GetLatestPlr(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func extInterface_GetPendingConnections(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func hidHostInterface_GetChannelMap() throws { throw IpcError.unimplemented }
	func setIsBluetoothBoostEnabled(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getIsBluetoothBoostEnabled(_ _0: Any?) throws { throw IpcError.unimplemented }
	func setIsBluetoothAfhEnabled() throws -> Any? { throw IpcError.unimplemented }
	func getIsBluetoothAfhEnabled(_ _0: Any?) throws { throw IpcError.unimplemented }
	
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
			try getAdapterProperties(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try getAdapterProperty(nil, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try setAdapterProperty(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			try startDiscovery()
			om.initialize(0, 0, 0)
		
		case 9:
			try cancelDiscovery()
			om.initialize(0, 0, 0)
		
		case 10:
			try createBond(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
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
			let ret = try unknown15(im.getBuffer(0xa, 0) as Buffer<UInt8>)
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
			try hidHostInterface_SendData(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			try hidHostInterface_SendData2(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			try hidHostInterface_SetReport(nil, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			try hidHostInterface_GetReport(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			try hidHostInterface_WakeController(nil)
			om.initialize(0, 0, 0)
		
		case 24:
			try hidHostInterface_AddPairedDevice(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 25:
			try hidHostInterface_GetPairedDevice(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 26:
			try hidHostInterface_CleanupAndShutdown()
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try unknown27(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 28:
			try extInterface_SetTSI(nil)
			om.initialize(0, 0, 0)
		
		case 29:
			try extInterface_SetBurstMode(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			try extInterface_SetZeroRetran(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
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
			let ret = try hidHostInterface_GetLatestPlr(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 39:
			try extInterface_GetPendingConnections(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 40:
			try hidHostInterface_GetChannelMap()
			om.initialize(0, 0, 0)
		
		case 41:
			try setIsBluetoothBoostEnabled(im.getBuffer(0x16, 0) as Buffer<UInt8>)
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
