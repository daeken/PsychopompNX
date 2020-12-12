typealias NnAccountProfile_UserData = [UInt8]
typealias NnAccountProfile_ProfileBase = [UInt8]

class NnAccountProfile_IProfileEditor: IpcService {
	func get(_ _0: Buffer<NnAccountProfile_UserData>) throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#Get") }
	func getBase() throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#GetBase") }
	func getImageSize() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#GetImageSize") }
	func loadImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#LoadImage") }
	func store(_ _0: NnAccountProfile_ProfileBase, _ _1: Buffer<NnAccountProfile_UserData>) throws { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#Store") }
	func storeWithImage(_ _0: NnAccountProfile_ProfileBase, _ _1: Buffer<NnAccountProfile_UserData>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#StoreWithImage") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try get(im.getBuffer(0x1a, 0) as Buffer<NnAccountProfile_UserData>)
			om.initialize(0, 0, 56)
			if ret.count != 0x38 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			let ret = try getBase()
			om.initialize(0, 0, 56)
			if ret.count != 0x38 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			let ret = try getImageSize()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 11:
			let ret = try loadImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 100:
			try store(im.getBytes(8, 0x38), im.getBuffer(0x19, 0) as Buffer<NnAccountProfile_UserData>)
			om.initialize(0, 0, 0)
		
		case 101:
			try storeWithImage(im.getBytes(8, 0x38), im.getBuffer(0x19, 0) as Buffer<NnAccountProfile_UserData>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::profile::IProfileEditor: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountProfile_IProfileEditor_Impl: NnAccountProfile_IProfileEditor {
	override func get(_ _0: Buffer<NnAccountProfile_UserData>) throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#Get") }
	override func getBase() throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#GetBase") }
	override func getImageSize() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#GetImageSize") }
	override func loadImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#LoadImage") }
	override func store(_ _0: NnAccountProfile_ProfileBase, _ _1: Buffer<NnAccountProfile_UserData>) throws { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#Store") }
	override func storeWithImage(_ _0: NnAccountProfile_ProfileBase, _ _1: Buffer<NnAccountProfile_UserData>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfileEditor#StoreWithImage") }
}
*/

class NnAccountProfile_IProfile: IpcService {
	func get(_ _0: Buffer<NnAccountProfile_UserData>) throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#Get") }
	func getBase() throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#GetBase") }
	func getImageSize() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#GetImageSize") }
	func loadImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#LoadImage") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try get(im.getBuffer(0x1a, 0) as Buffer<NnAccountProfile_UserData>)
			om.initialize(0, 0, 56)
			if ret.count != 0x38 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			let ret = try getBase()
			om.initialize(0, 0, 56)
			if ret.count != 0x38 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			let ret = try getImageSize()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 11:
			let ret = try loadImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::account::profile::IProfile: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountProfile_IProfile_Impl: NnAccountProfile_IProfile {
	override func get(_ _0: Buffer<NnAccountProfile_UserData>) throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#Get") }
	override func getBase() throws -> NnAccountProfile_ProfileBase { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#GetBase") }
	override func getImageSize() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#GetImageSize") }
	override func loadImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::profile::nn::account::profile::IProfile#LoadImage") }
}
*/
