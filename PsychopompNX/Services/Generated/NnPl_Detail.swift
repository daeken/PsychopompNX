class NnPlDetail_ISharedFontManager: IpcService {
	func requestLoad(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#RequestLoad") }
	func getLoadState(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetLoadState") }
	func getSize(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSize") }
	func getSharedMemoryAddressOffset(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSharedMemoryAddressOffset") }
	func getSharedMemoryNativeHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSharedMemoryNativeHandle") }
	func getSharedFontInOrderOfPriority(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> (UInt8, UInt32) { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSharedFontInOrderOfPriority") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestLoad(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getLoadState(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getSize(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try getSharedMemoryAddressOffset(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try getSharedMemoryNativeHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let (_0, _1) = try getSharedFontInOrderOfPriority(im.getBytes(8, 0x8), im.getBuffer(0x6, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 1)! as Buffer<UInt8>, im.getBuffer(0x6, 2)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		default:
			print("Unhandled command to nn::pl::detail::ISharedFontManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPlDetail_ISharedFontManager_Impl: NnPlDetail_ISharedFontManager {
	override func requestLoad(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#RequestLoad") }
	override func getLoadState(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetLoadState") }
	override func getSize(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSize") }
	override func getSharedMemoryAddressOffset(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSharedMemoryAddressOffset") }
	override func getSharedMemoryNativeHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSharedMemoryNativeHandle") }
	override func getSharedFontInOrderOfPriority(_ _0: [UInt8], _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> (UInt8, UInt32) { throw IpcError.unimplemented(name: "nn::pl::detail::nn::pl::detail::ISharedFontManager#GetSharedFontInOrderOfPriority") }
}
*/
