class NnCodecDetail_IHardwareOpusDecoder: IpcService {
	func decodeInterleaved(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func setContext(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt64) { throw IpcError.unimplemented }
	func unknown5(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt64) { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try decodeInterleaved(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 1:
			try setContext(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1) = try unknown2(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 3:
			try unknown3(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let (_0, _1, _2) = try unknown4(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 5:
			let (_0, _1, _2) = try unknown5(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		default:
			print("Unhandled command to nn::codec::detail::IHardwareOpusDecoder: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCodecDetail_IHardwareOpusDecoderManager: IpcService {
	func initialize(_ _0: [UInt8], _ _1: UInt32, _ _2: KObject) throws -> NnCodecDetail_IHardwareOpusDecoder { throw IpcError.unimplemented }
	func getWorkBufferSize(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented }
	func initializeMultiStream(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnCodecDetail_IHardwareOpusDecoder { throw IpcError.unimplemented }
	func getWorkBufferSizeMultiStream(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize(im.getBytes(8, 0x8), im.getData(16) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getWorkBufferSize(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try initializeMultiStream(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getWorkBufferSizeMultiStream(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::codec::detail::IHardwareOpusDecoderManager: \(im.commandId)")
			try! bailout()
		}
	}
}
