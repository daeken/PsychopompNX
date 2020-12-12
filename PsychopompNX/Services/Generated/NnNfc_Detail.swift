class NnNfcDetail_ISystem: IpcService {
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#Initialize") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#Finalize") }
	func getStateOld() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetStateOld") }
	func isNfcEnabledOld() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#IsNfcEnabledOld") }
	func setNfcEnabledOld(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#SetNfcEnabledOld") }
	func initializeSystem(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#InitializeSystem") }
	func finalizeSystem() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#FinalizeSystem") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetState") }
	func isNfcEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#IsNfcEnabled") }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#ListDevices") }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetDeviceState") }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetNpadId") }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#AttachAvailabilityChangeEvent") }
	func startDetection(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#StartDetection") }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#StopDetection") }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetTagInfo") }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#AttachActivateEvent") }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#AttachDeactivateEvent") }
	func setNfcEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#SetNfcEnabled") }
	func readMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#ReadMifare") }
	func writeMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#WriteMifare") }
	func sendCommandByPassThrough(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#SendCommandByPassThrough") }
	func keepPassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#KeepPassThroughSession") }
	func releasePassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#ReleasePassThroughSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getStateOld()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try isNfcEnabledOld()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 100:
			try setNfcEnabledOld(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 400:
			try initializeSystem(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 401:
			try finalizeSystem()
			om.initialize(0, 0, 0)
		
		case 402:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 403:
			let ret = try isNfcEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 404:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 405:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 406:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 407:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 408:
			try startDetection(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 409:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 410:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 411:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 412:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 500:
			try setNfcEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 1000:
			try readMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try writeMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1300:
			let ret = try sendCommandByPassThrough(im.getBytes(8, 0x8), im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1301:
			try keepPassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 1302:
			try releasePassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfc::detail::ISystem: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfcDetail_ISystem_Impl: NnNfcDetail_ISystem {
	override func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#Initialize") }
	override func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#Finalize") }
	override func getStateOld() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetStateOld") }
	override func isNfcEnabledOld() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#IsNfcEnabledOld") }
	override func setNfcEnabledOld(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#SetNfcEnabledOld") }
	override func initializeSystem(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#InitializeSystem") }
	override func finalizeSystem() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#FinalizeSystem") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetState") }
	override func isNfcEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#IsNfcEnabled") }
	override func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#ListDevices") }
	override func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetDeviceState") }
	override func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetNpadId") }
	override func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#AttachAvailabilityChangeEvent") }
	override func startDetection(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#StartDetection") }
	override func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#StopDetection") }
	override func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#GetTagInfo") }
	override func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#AttachActivateEvent") }
	override func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#AttachDeactivateEvent") }
	override func setNfcEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#SetNfcEnabled") }
	override func readMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#ReadMifare") }
	override func writeMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#WriteMifare") }
	override func sendCommandByPassThrough(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#SendCommandByPassThrough") }
	override func keepPassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#KeepPassThroughSession") }
	override func releasePassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystem#ReleasePassThroughSession") }
}
*/

class NnNfcDetail_IUser: IpcService {
	func initializeOld(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#InitializeOld") }
	func finalizeOld() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#FinalizeOld") }
	func getStateOld() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetStateOld") }
	func isNfcEnabledOld() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#IsNfcEnabledOld") }
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#Initialize") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#Finalize") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetState") }
	func isNfcEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#IsNfcEnabled") }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#ListDevices") }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetDeviceState") }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetNpadId") }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#AttachAvailabilityChangeEvent") }
	func startDetection(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#StartDetection") }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#StopDetection") }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetTagInfo") }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#AttachActivateEvent") }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#AttachDeactivateEvent") }
	func readMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#ReadMifare") }
	func writeMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#WriteMifare") }
	func sendCommandByPassThrough(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#SendCommandByPassThrough") }
	func keepPassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#KeepPassThroughSession") }
	func releasePassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#ReleasePassThroughSession") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeOld(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeOld()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getStateOld()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try isNfcEnabledOld()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 400:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 401:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 402:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 403:
			let ret = try isNfcEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 404:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 405:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 406:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 407:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 408:
			try startDetection(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 409:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 410:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 411:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 412:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1000:
			try readMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try writeMifare(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1300:
			let ret = try sendCommandByPassThrough(im.getBytes(8, 0x8), im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1301:
			try keepPassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 1302:
			try releasePassThroughSession(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfc::detail::IUser: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfcDetail_IUser_Impl: NnNfcDetail_IUser {
	override func initializeOld(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#InitializeOld") }
	override func finalizeOld() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#FinalizeOld") }
	override func getStateOld() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetStateOld") }
	override func isNfcEnabledOld() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#IsNfcEnabledOld") }
	override func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#Initialize") }
	override func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#Finalize") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetState") }
	override func isNfcEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#IsNfcEnabled") }
	override func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#ListDevices") }
	override func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetDeviceState") }
	override func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetNpadId") }
	override func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#AttachAvailabilityChangeEvent") }
	override func startDetection(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#StartDetection") }
	override func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#StopDetection") }
	override func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#GetTagInfo") }
	override func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#AttachActivateEvent") }
	override func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#AttachDeactivateEvent") }
	override func readMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#ReadMifare") }
	override func writeMifare(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#WriteMifare") }
	override func sendCommandByPassThrough(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#SendCommandByPassThrough") }
	override func keepPassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#KeepPassThroughSession") }
	override func releasePassThroughSession(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUser#ReleasePassThroughSession") }
}
*/

class NnNfcDetail_ISystemManager: IpcService {
	func createSystemInterface() throws -> NnNfcDetail_ISystem { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystemManager#CreateSystemInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createSystemInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::detail::ISystemManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfcDetail_ISystemManager_Impl: NnNfcDetail_ISystemManager {
	override func createSystemInterface() throws -> NnNfcDetail_ISystem { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::ISystemManager#CreateSystemInterface") }
}
*/

class NnNfcDetail_IUserManager: IpcService {
	func createUserInterface() throws -> NnNfcMifareDetail_IUser { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUserManager#CreateUserInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createUserInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::detail::IUserManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfcDetail_IUserManager_Impl: NnNfcDetail_IUserManager {
	override func createUserInterface() throws -> NnNfcMifareDetail_IUser { throw IpcError.unimplemented(name: "nn::nfc::detail::nn::nfc::detail::IUserManager#CreateUserInterface") }
}
*/
