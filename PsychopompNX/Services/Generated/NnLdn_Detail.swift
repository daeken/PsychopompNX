class NnLdnDetail_IMonitorService: IpcService {
	func getStateForMonitor() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetStateForMonitor") }
	func getNetworkInfoForMonitor(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetNetworkInfoForMonitor") }
	func getIpv4AddressForMonitor() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetIpv4AddressForMonitor") }
	func getDisconnectReasonForMonitor() throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetDisconnectReasonForMonitor") }
	func getSecurityParameterForMonitor() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetSecurityParameterForMonitor") }
	func getNetworkConfigForMonitor() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetNetworkConfigForMonitor") }
	func initializeMonitor() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#InitializeMonitor") }
	func finalizeMonitor() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#FinalizeMonitor") }
	
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

/*
class NnLdnDetail_IMonitorService_Impl: NnLdnDetail_IMonitorService {
	override func getStateForMonitor() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetStateForMonitor") }
	override func getNetworkInfoForMonitor(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetNetworkInfoForMonitor") }
	override func getIpv4AddressForMonitor() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetIpv4AddressForMonitor") }
	override func getDisconnectReasonForMonitor() throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetDisconnectReasonForMonitor") }
	override func getSecurityParameterForMonitor() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetSecurityParameterForMonitor") }
	override func getNetworkConfigForMonitor() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#GetNetworkConfigForMonitor") }
	override func initializeMonitor() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#InitializeMonitor") }
	override func finalizeMonitor() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorService#FinalizeMonitor") }
}
*/

class NnLdnDetail_IUserServiceCreator: IpcService {
	func createUserLocalCommunicationService() throws -> NnLdnDetail_IUserLocalCommunicationService { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserServiceCreator#CreateUserLocalCommunicationService") }
	
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

/*
class NnLdnDetail_IUserServiceCreator_Impl: NnLdnDetail_IUserServiceCreator {
	override func createUserLocalCommunicationService() throws -> NnLdnDetail_IUserLocalCommunicationService { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserServiceCreator#CreateUserLocalCommunicationService") }
}
*/

class NnLdnDetail_IUserLocalCommunicationService: IpcService {
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetState") }
	func getNetworkInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetNetworkInfo") }
	func getIpv4Address() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetIpv4Address") }
	func getDisconnectReason() throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetDisconnectReason") }
	func getSecurityParameter() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetSecurityParameter") }
	func getNetworkConfig() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetNetworkConfig") }
	func attachStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#AttachStateChangeEvent") }
	func getNetworkInfoLatestUpdate(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetNetworkInfoLatestUpdate") }
	func scan(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Scan") }
	func scanPrivate(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#ScanPrivate") }
	func openAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#OpenAccessPoint") }
	func closeAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CloseAccessPoint") }
	func createNetwork(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CreateNetwork") }
	func createNetworkPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: [UInt8], _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CreateNetworkPrivate") }
	func destroyNetwork() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#DestroyNetwork") }
	func reject(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Reject") }
	func setAdvertiseData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#SetAdvertiseData") }
	func setStationAcceptPolicy(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#SetStationAcceptPolicy") }
	func addAcceptFilterEntry(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#AddAcceptFilterEntry") }
	func clearAcceptFilter() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#ClearAcceptFilter") }
	func openStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#OpenStation") }
	func closeStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CloseStation") }
	func connect(_ _0: [UInt8], _ _1: [UInt8], _ _2: UInt32, _ _3: UInt32, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Connect") }
	func connectPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: UInt32, _ _4: UInt32, _ _5: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#ConnectPrivate") }
	func disconnect() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Disconnect") }
	func initialize(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Initialize") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Finalize") }
	
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

/*
class NnLdnDetail_IUserLocalCommunicationService_Impl: NnLdnDetail_IUserLocalCommunicationService {
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetState") }
	override func getNetworkInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetNetworkInfo") }
	override func getIpv4Address() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetIpv4Address") }
	override func getDisconnectReason() throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetDisconnectReason") }
	override func getSecurityParameter() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetSecurityParameter") }
	override func getNetworkConfig() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetNetworkConfig") }
	override func attachStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#AttachStateChangeEvent") }
	override func getNetworkInfoLatestUpdate(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#GetNetworkInfoLatestUpdate") }
	override func scan(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Scan") }
	override func scanPrivate(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#ScanPrivate") }
	override func openAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#OpenAccessPoint") }
	override func closeAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CloseAccessPoint") }
	override func createNetwork(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CreateNetwork") }
	override func createNetworkPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: [UInt8], _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CreateNetworkPrivate") }
	override func destroyNetwork() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#DestroyNetwork") }
	override func reject(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Reject") }
	override func setAdvertiseData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#SetAdvertiseData") }
	override func setStationAcceptPolicy(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#SetStationAcceptPolicy") }
	override func addAcceptFilterEntry(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#AddAcceptFilterEntry") }
	override func clearAcceptFilter() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#ClearAcceptFilter") }
	override func openStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#OpenStation") }
	override func closeStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#CloseStation") }
	override func connect(_ _0: [UInt8], _ _1: [UInt8], _ _2: UInt32, _ _3: UInt32, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Connect") }
	override func connectPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: UInt32, _ _4: UInt32, _ _5: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#ConnectPrivate") }
	override func disconnect() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Disconnect") }
	override func initialize(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Initialize") }
	override func finalize() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IUserLocalCommunicationService#Finalize") }
}
*/

class NnLdnDetail_ISystemLocalCommunicationService: IpcService {
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetState") }
	func getNetworkInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetNetworkInfo") }
	func getIpv4Address() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetIpv4Address") }
	func getDisconnectReason() throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetDisconnectReason") }
	func getSecurityParameter() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetSecurityParameter") }
	func getNetworkConfig() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetNetworkConfig") }
	func attachStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#AttachStateChangeEvent") }
	func getNetworkInfoLatestUpdate(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetNetworkInfoLatestUpdate") }
	func scan(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Scan") }
	func scanPrivate(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#ScanPrivate") }
	func openAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#OpenAccessPoint") }
	func closeAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CloseAccessPoint") }
	func createNetwork(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CreateNetwork") }
	func createNetworkPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: [UInt8], _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CreateNetworkPrivate") }
	func destroyNetwork() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#DestroyNetwork") }
	func reject(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Reject") }
	func setAdvertiseData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#SetAdvertiseData") }
	func setStationAcceptPolicy(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#SetStationAcceptPolicy") }
	func addAcceptFilterEntry(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#AddAcceptFilterEntry") }
	func clearAcceptFilter() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#ClearAcceptFilter") }
	func openStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#OpenStation") }
	func closeStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CloseStation") }
	func connect(_ _0: [UInt8], _ _1: [UInt8], _ _2: UInt32, _ _3: UInt32, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Connect") }
	func connectPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: UInt32, _ _4: UInt32, _ _5: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#ConnectPrivate") }
	func disconnect() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Disconnect") }
	func initializeSystem(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#InitializeSystem") }
	func finalizeSystem() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#FinalizeSystem") }
	
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

/*
class NnLdnDetail_ISystemLocalCommunicationService_Impl: NnLdnDetail_ISystemLocalCommunicationService {
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetState") }
	override func getNetworkInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetNetworkInfo") }
	override func getIpv4Address() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetIpv4Address") }
	override func getDisconnectReason() throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetDisconnectReason") }
	override func getSecurityParameter() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetSecurityParameter") }
	override func getNetworkConfig() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetNetworkConfig") }
	override func attachStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#AttachStateChangeEvent") }
	override func getNetworkInfoLatestUpdate(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#GetNetworkInfoLatestUpdate") }
	override func scan(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Scan") }
	override func scanPrivate(_ _0: UInt16, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> UInt16 { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#ScanPrivate") }
	override func openAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#OpenAccessPoint") }
	override func closeAccessPoint() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CloseAccessPoint") }
	override func createNetwork(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CreateNetwork") }
	override func createNetworkPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: [UInt8], _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CreateNetworkPrivate") }
	override func destroyNetwork() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#DestroyNetwork") }
	override func reject(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Reject") }
	override func setAdvertiseData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#SetAdvertiseData") }
	override func setStationAcceptPolicy(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#SetStationAcceptPolicy") }
	override func addAcceptFilterEntry(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#AddAcceptFilterEntry") }
	override func clearAcceptFilter() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#ClearAcceptFilter") }
	override func openStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#OpenStation") }
	override func closeStation() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#CloseStation") }
	override func connect(_ _0: [UInt8], _ _1: [UInt8], _ _2: UInt32, _ _3: UInt32, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Connect") }
	override func connectPrivate(_ _0: [UInt8], _ _1: [UInt8], _ _2: [UInt8], _ _3: UInt32, _ _4: UInt32, _ _5: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#ConnectPrivate") }
	override func disconnect() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#Disconnect") }
	override func initializeSystem(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#InitializeSystem") }
	override func finalizeSystem() throws { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemLocalCommunicationService#FinalizeSystem") }
}
*/

class NnLdnDetail_IMonitorServiceCreator: IpcService {
	func createMonitorService() throws -> NnLdnDetail_IMonitorService { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorServiceCreator#CreateMonitorService") }
	
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

/*
class NnLdnDetail_IMonitorServiceCreator_Impl: NnLdnDetail_IMonitorServiceCreator {
	override func createMonitorService() throws -> NnLdnDetail_IMonitorService { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::IMonitorServiceCreator#CreateMonitorService") }
}
*/

class NnLdnDetail_ISystemServiceCreator: IpcService {
	func createSystemLocalCommunicationService() throws -> NnLdnDetail_ISystemLocalCommunicationService { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemServiceCreator#CreateSystemLocalCommunicationService") }
	
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

/*
class NnLdnDetail_ISystemServiceCreator_Impl: NnLdnDetail_ISystemServiceCreator {
	override func createSystemLocalCommunicationService() throws -> NnLdnDetail_ISystemLocalCommunicationService { throw IpcError.unimplemented(name: "nn::ldn::detail::nn::ldn::detail::ISystemServiceCreator#CreateSystemLocalCommunicationService") }
}
*/
