class NnLdnDetail_IMonitorService: IpcService {
	func getStateForMonitor() throws -> UInt32 { throw IpcError.unimplemented }
	func getNetworkInfoForMonitor(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getIpv4AddressForMonitor() throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func getDisconnectReasonForMonitor() throws -> UInt16 { throw IpcError.unimplemented }
	func getSecurityParameterForMonitor() throws -> [UInt8] { throw IpcError.unimplemented }
	func getNetworkConfigForMonitor() throws -> [UInt8] { throw IpcError.unimplemented }
	func initializeMonitor() throws { throw IpcError.unimplemented }
	func finalizeMonitor() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getStateForMonitor()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try getNetworkInfoForMonitor(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1) = try getIpv4AddressForMonitor()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 3:
			let ret = try getDisconnectReasonForMonitor()
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 4:
			let ret = try getSecurityParameterForMonitor()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getNetworkConfigForMonitor()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			try initializeMonitor()
			om.initialize(0, 0, 0)
		
		case 101:
			try finalizeMonitor()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldn::detail::IMonitorService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdnDetail_IUserServiceCreator: IpcService {
	func createUserLocalCommunicationService() throws -> NnLdnDetail_IUserLocalCommunicationService { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createUserLocalCommunicationService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ldn::detail::IUserServiceCreator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdnDetail_IUserLocalCommunicationService: IpcService {
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func getNetworkInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getIpv4Address() throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func getDisconnectReason() throws -> UInt16 { throw IpcError.unimplemented }
	func getSecurityParameter() throws -> [UInt8] { throw IpcError.unimplemented }
	func getNetworkConfig() throws -> [UInt8] { throw IpcError.unimplemented }
	func attachStateChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func getNetworkInfoLatestUpdate(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func scan(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented }
	func scanPrivate(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented }
	func openAccessPoint() throws { throw IpcError.unimplemented }
	func closeAccessPoint() throws { throw IpcError.unimplemented }
	func createNetwork(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8]) throws { throw IpcError.unimplemented }
	func createNetworkPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: [UInt8], _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func destroyNetwork() throws { throw IpcError.unimplemented }
	func reject(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setAdvertiseData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setStationAcceptPolicy(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func addAcceptFilterEntry(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func clearAcceptFilter() throws { throw IpcError.unimplemented }
	func openStation() throws { throw IpcError.unimplemented }
	func closeStation() throws { throw IpcError.unimplemented }
	func connect(_ _0: [UInt8], _ _1: [UInt8], _ _2: UInt32, _ _3: UInt32, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func connectPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: UInt32, _ _4: UInt32, _ _5: [UInt8]) throws { throw IpcError.unimplemented }
	func disconnect() throws { throw IpcError.unimplemented }
	func initialize(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented }
	func finalize() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try getNetworkInfo(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1) = try getIpv4Address()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 3:
			let ret = try getDisconnectReason()
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 4:
			let ret = try getSecurityParameter()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getNetworkConfig()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			let ret = try attachStateChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 101:
			try getNetworkInfoLatestUpdate(im.getBuffer(0x1a, 0) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try scan(im.getData(8) as UInt16, im.getBytes(10, 0x60), im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 103:
			let ret = try scanPrivate(im.getData(8) as UInt16, im.getBytes(10, 0x60), im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 200:
			try openAccessPoint()
			om.initialize(0, 0, 0)
		
		case 201:
			try closeAccessPoint()
			om.initialize(0, 0, 0)
		
		case 202:
			try createNetwork(im.getBytes(8, 0x44), im.getBytes(76, 0x30), im.getBytes(124, 0x20))
			om.initialize(0, 0, 0)
		
		case 203:
			try createNetworkPrivate(im.getBytes(8, 0x44), im.getBytes(76, 0x20), im.getBytes(108, 0x30), im.getBytes(156, 0x20), im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 204:
			try destroyNetwork()
			om.initialize(0, 0, 0)
		
		case 205:
			try reject(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 206:
			try setAdvertiseData(im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 207:
			try setStationAcceptPolicy(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 208:
			try addAcceptFilterEntry(im.getBytes(8, 0x6))
			om.initialize(0, 0, 0)
		
		case 209:
			try clearAcceptFilter()
			om.initialize(0, 0, 0)
		
		case 300:
			try openStation()
			om.initialize(0, 0, 0)
		
		case 301:
			try closeStation()
			om.initialize(0, 0, 0)
		
		case 302:
			try connect(im.getBytes(8, 0x44), im.getBytes(76, 0x30), im.getData(124) as UInt32, im.getData(128) as UInt32, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 303:
			try connectPrivate(im.getBytes(8, 0x44), im.getBytes(76, 0x20), im.getBytes(108, 0x30), im.getData(156) as UInt32, im.getData(160) as UInt32, im.getBytes(164, 0x20))
			om.initialize(0, 0, 0)
		
		case 304:
			try disconnect()
			om.initialize(0, 0, 0)
		
		case 400:
			try initialize(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 401:
			try finalize()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldn::detail::IUserLocalCommunicationService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdnDetail_ISystemLocalCommunicationService: IpcService {
	func getState() throws -> UInt32 { throw IpcError.unimplemented }
	func getNetworkInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getIpv4Address() throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func getDisconnectReason() throws -> UInt16 { throw IpcError.unimplemented }
	func getSecurityParameter() throws -> [UInt8] { throw IpcError.unimplemented }
	func getNetworkConfig() throws -> [UInt8] { throw IpcError.unimplemented }
	func attachStateChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func getNetworkInfoLatestUpdate(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func scan(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented }
	func scanPrivate(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented }
	func openAccessPoint() throws { throw IpcError.unimplemented }
	func closeAccessPoint() throws { throw IpcError.unimplemented }
	func createNetwork(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8]) throws { throw IpcError.unimplemented }
	func createNetworkPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: [UInt8], _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func destroyNetwork() throws { throw IpcError.unimplemented }
	func reject(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setAdvertiseData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setStationAcceptPolicy(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func addAcceptFilterEntry(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func clearAcceptFilter() throws { throw IpcError.unimplemented }
	func openStation() throws { throw IpcError.unimplemented }
	func closeStation() throws { throw IpcError.unimplemented }
	func connect(_ _0: [UInt8], _ _1: [UInt8], _ _2: UInt32, _ _3: UInt32, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func connectPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: UInt32, _ _4: UInt32, _ _5: [UInt8]) throws { throw IpcError.unimplemented }
	func disconnect() throws { throw IpcError.unimplemented }
	func initializeSystem(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented }
	func finalizeSystem() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try getNetworkInfo(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1) = try getIpv4Address()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 3:
			let ret = try getDisconnectReason()
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 4:
			let ret = try getSecurityParameter()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getNetworkConfig()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			let ret = try attachStateChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 101:
			try getNetworkInfoLatestUpdate(im.getBuffer(0x1a, 0) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try scan(im.getData(8) as UInt16, im.getBytes(10, 0x60), im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 103:
			let ret = try scanPrivate(im.getData(8) as UInt16, im.getBytes(10, 0x60), im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 2)
			om.setData(8, ret)
		
		case 200:
			try openAccessPoint()
			om.initialize(0, 0, 0)
		
		case 201:
			try closeAccessPoint()
			om.initialize(0, 0, 0)
		
		case 202:
			try createNetwork(im.getBytes(8, 0x44), im.getBytes(76, 0x30), im.getBytes(124, 0x20))
			om.initialize(0, 0, 0)
		
		case 203:
			try createNetworkPrivate(im.getBytes(8, 0x44), im.getBytes(76, 0x20), im.getBytes(108, 0x30), im.getBytes(156, 0x20), im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 204:
			try destroyNetwork()
			om.initialize(0, 0, 0)
		
		case 205:
			try reject(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 206:
			try setAdvertiseData(im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 207:
			try setStationAcceptPolicy(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 208:
			try addAcceptFilterEntry(im.getBytes(8, 0x6))
			om.initialize(0, 0, 0)
		
		case 209:
			try clearAcceptFilter()
			om.initialize(0, 0, 0)
		
		case 300:
			try openStation()
			om.initialize(0, 0, 0)
		
		case 301:
			try closeStation()
			om.initialize(0, 0, 0)
		
		case 302:
			try connect(im.getBytes(8, 0x44), im.getBytes(76, 0x30), im.getData(124) as UInt32, im.getData(128) as UInt32, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 303:
			try connectPrivate(im.getBytes(8, 0x44), im.getBytes(76, 0x20), im.getBytes(108, 0x30), im.getData(156) as UInt32, im.getData(160) as UInt32, im.getBytes(164, 0x20))
			om.initialize(0, 0, 0)
		
		case 304:
			try disconnect()
			om.initialize(0, 0, 0)
		
		case 400:
			try initializeSystem(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 401:
			try finalizeSystem()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ldn::detail::ISystemLocalCommunicationService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdnDetail_IMonitorServiceCreator: IpcService {
	func createMonitorService() throws -> NnLdnDetail_IMonitorService { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createMonitorService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ldn::detail::IMonitorServiceCreator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnLdnDetail_ISystemServiceCreator: IpcService {
	func createSystemLocalCommunicationService() throws -> NnLdnDetail_ISystemLocalCommunicationService { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createSystemLocalCommunicationService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ldn::detail::ISystemServiceCreator: \(im.commandId)")
			try! bailout()
		}
	}
}
