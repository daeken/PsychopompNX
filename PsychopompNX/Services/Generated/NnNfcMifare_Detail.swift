class NnNfcMifareDetail_IUserManager: IpcService {
	func createUserInterface() throws -> NnNfcDetail_IUser { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUserManager#CreateUserInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createUserInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::mifare::detail::IUserManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfcMifareDetail_IUserManager_Impl: NnNfcMifareDetail_IUserManager {
	override func createUserInterface() throws -> NnNfcDetail_IUser { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUserManager#CreateUserInterface") }
}
*/

class NnNfcMifareDetail_IUser: IpcService {
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Initialize") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Finalize") }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#ListDevices") }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#StartDetection") }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#StopDetection") }
	func read(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Read") }
	func write(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Write") }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetTagInfo") }
	func getActivateEventHandle(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetActivateEventHandle") }
	func getDeactivateEventHandle(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetDeactivateEventHandle") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetState") }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetDeviceState") }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetNpadId") }
	func getAvailabilityChangeEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetAvailabilityChangeEventHandle") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try read(im.getBytes(8, 0x8), im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try write(im.getBytes(8, 0x8), im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getActivateEventHandle(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 9:
			let ret = try getDeactivateEventHandle(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 10:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 11:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 12:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			let ret = try getAvailabilityChangeEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::nfc::mifare::detail::IUser: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfcMifareDetail_IUser_Impl: NnNfcMifareDetail_IUser {
	override func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Initialize") }
	override func finalize() throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Finalize") }
	override func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#ListDevices") }
	override func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#StartDetection") }
	override func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#StopDetection") }
	override func read(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Read") }
	override func write(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#Write") }
	override func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetTagInfo") }
	override func getActivateEventHandle(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetActivateEventHandle") }
	override func getDeactivateEventHandle(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetDeactivateEventHandle") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetState") }
	override func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetDeviceState") }
	override func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetNpadId") }
	override func getAvailabilityChangeEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfc::mifare::detail::nn::nfc::mifare::detail::IUser#GetAvailabilityChangeEventHandle") }
}
*/
