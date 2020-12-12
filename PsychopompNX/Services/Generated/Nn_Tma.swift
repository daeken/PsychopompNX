class NnTma_IHtcsManager: IpcService {
	func unknown0() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown0") }
	func unknown1(_ _0: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown1") }
	func unknown2(_ _0: [UInt8], _ _1: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown2") }
	func unknown3(_ _0: [UInt8], _ _1: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown3") }
	func unknown4(_ _0: UInt32, _ _1: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown4") }
	func unknown5(_ _0: UInt32) throws -> ([UInt8], UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown5") }
	func unknown6(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown6") }
	func unknown7(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown7") }
	func unknown8(_ _0: UInt32, _ _1: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown8") }
	func unknown9(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#Unknown9") }
	func getPeerNameAny() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#GetPeerNameAny") }
	func getDefaultHostName() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#GetDefaultHostName") }
	func createSocketOld() throws -> (UInt32, IpcService) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#CreateSocketOld") }
	func createSocket(_ _0: UInt8) throws -> (UInt32, IpcService) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#CreateSocket") }
	func registerProcessId(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#RegisterProcessId") }
	func monitorManager(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcsManager#MonitorManager") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try unknown0()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 1:
			let (_0, _1) = try unknown1(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 2:
			let (_0, _1) = try unknown2(im.getBytes(8, 0x42), im.getData(76) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 3:
			let (_0, _1) = try unknown3(im.getBytes(8, 0x42), im.getData(76) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 4:
			let (_0, _1) = try unknown4(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 5:
			let (_0, _1, _2) = try unknown5(im.getData(8) as UInt32)
			om.initialize(0, 0, 76)
			if _0.count != 0x42 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.setData(76, _1)
			om.setData(80, _2)
		
		case 6:
			let (_0, _1) = try unknown6(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 7:
			let (_0, _1) = try unknown7(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 8:
			let (_0, _1) = try unknown8(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 9:
			let (_0, _1) = try unknown9(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 10:
			let ret = try getPeerNameAny()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 11:
			let ret = try getDefaultHostName()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 12:
			let (_0, _1) = try createSocketOld()
			om.initialize(1, 0, 4)
			om.setData(8, _0)
			om.move(0, _1)
		
		case 13:
			let (_0, _1) = try createSocket(im.getData(8) as UInt8)
			om.initialize(1, 0, 4)
			om.setData(8, _0)
			om.move(0, _1)
		
		case 100:
			try registerProcessId(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 101:
			try monitorManager(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::tma::IHtcsManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnTma_ISocket: IpcService {
	func _close() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Close") }
	func connect(_ _0: [UInt8]) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Connect") }
	func bind(_ _0: [UInt8]) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Bind") }
	func listen(_ _0: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Listen") }
	func accept() throws -> ([UInt8], UInt32, IpcService) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Accept") }
	func recv(_ _0: UInt32, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Recv") }
	func send(_ _0: UInt32, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Send") }
	func shutdown(_ _0: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Shutdown") }
	func fcntl(_ _0: UInt32, _ _1: UInt32) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::tma::nn::tma::ISocket#Fcntl") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try _close()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 1:
			let (_0, _1) = try connect(im.getBytes(8, 0x42))
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 2:
			let (_0, _1) = try bind(im.getBytes(8, 0x42))
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 3:
			let (_0, _1) = try listen(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 4:
			let (_0, _1, _2) = try accept()
			om.initialize(1, 0, 72)
			if _0.count != 0x42 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.setData(76, _1)
			om.move(0, _2)
		
		case 5:
			let (_0, _1) = try recv(im.getData(8) as UInt32, im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 6:
			let (_0, _1) = try send(im.getData(8) as UInt32, im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 7:
			let (_0, _1) = try shutdown(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 8:
			let (_0, _1) = try fcntl(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		default:
			print("Unhandled command to nn::tma::ISocket: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnTma_IHtcManager: IpcService {
	func getEnvironmentVariable(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#GetEnvironmentVariable") }
	func getEnvironmentVariableLength(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#GetEnvironmentVariableLength") }
	func bindHostConnectionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#BindHostConnectionEvent") }
	func bindHostDisconnectionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#BindHostDisconnectionEvent") }
	func bindHostConnectionEventForSystem() throws -> KObject { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#BindHostConnectionEventForSystem") }
	func bindHostDisconnectionEventForSystem() throws -> KObject { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#BindHostDisconnectionEventForSystem") }
	func getBridgeIpAddress(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#GetBridgeIpAddress") }
	func getBridgePort(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#GetBridgePort") }
	func setUsbDetachedForDebug(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#SetUsbDetachedForDebug") }
	func getBridgeSubnetMask(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#GetBridgeSubnetMask") }
	func getBridgeMacAddress(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::tma::nn::tma::IHtcManager#GetBridgeMacAddress") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getEnvironmentVariable(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let ret = try getEnvironmentVariableLength(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try bindHostConnectionEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			let ret = try bindHostDisconnectionEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 4:
			let ret = try bindHostConnectionEventForSystem()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try bindHostDisconnectionEventForSystem()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 6:
			try getBridgeIpAddress(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try getBridgePort(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			try setUsbDetachedForDebug(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 9:
			try getBridgeSubnetMask(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try getBridgeMacAddress(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::tma::IHtcManager: \(im.commandId)")
			try! bailout()
		}
	}
}
