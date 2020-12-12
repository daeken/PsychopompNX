class NnEupldSf_IRequest: IpcService {
	func initialize() throws -> KObject { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#Initialize") }
	func uploadAll() throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#UploadAll") }
	func uploadSelected(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#UploadSelected") }
	func getUploadStatus(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#GetUploadStatus") }
	func cancelUpload() throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#CancelUpload") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#GetResult") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try uploadAll()
			om.initialize(0, 0, 0)
		
		case 2:
			try uploadSelected(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try getUploadStatus(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try cancelUpload()
			om.initialize(0, 0, 0)
		
		case 5:
			try getResult()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::eupld::sf::IRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnEupldSf_IRequest_Impl: NnEupldSf_IRequest {
	override func initialize() throws -> KObject { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#Initialize") }
	override func uploadAll() throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#UploadAll") }
	override func uploadSelected(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#UploadSelected") }
	override func getUploadStatus(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#GetUploadStatus") }
	override func cancelUpload() throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#CancelUpload") }
	override func getResult() throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IRequest#GetResult") }
}
*/

class NnEupldSf_IControl: IpcService {
	func setUrl(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#SetUrl") }
	func importCrt(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#ImportCrt") }
	func importPki(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#ImportPki") }
	func setAutoUpload(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#SetAutoUpload") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setUrl(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try importCrt(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try importPki(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try setAutoUpload(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::eupld::sf::IControl: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnEupldSf_IControl_Impl: NnEupldSf_IControl {
	override func setUrl(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#SetUrl") }
	override func importCrt(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#ImportCrt") }
	override func importPki(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#ImportPki") }
	override func setAutoUpload(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::eupld::sf::nn::eupld::sf::IControl#SetAutoUpload") }
}
*/
