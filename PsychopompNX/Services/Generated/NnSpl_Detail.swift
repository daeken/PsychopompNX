class NnSplDetail_IRandomInterface: IpcService {
	func getRandomBytes(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try getRandomBytes(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spl::detail::IRandomInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSplDetail_IEsInterface: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown7(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown11() throws -> Any? { throw IpcError.unimplemented }
	func unknown13(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown14(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown15(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown16(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown17(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown18(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown20(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown21() throws -> Any? { throw IpcError.unimplemented }
	func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown23() throws -> KObject { throw IpcError.unimplemented }
	func unknown24(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11()
			om.initialize(0, 0, 0)
		
		case 13:
			try unknown13(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try unknown16(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			try unknown17(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try unknown18(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try unknown20(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try unknown21()
			om.initialize(0, 0, 0)
		
		case 22:
			try unknown22(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try unknown23()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try unknown24(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spl::detail::IEsInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSplDetail_IGeneralInterface: IpcService {
	func getConfig(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func userExpMod(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func generateAesKek(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func loadAesKey(_ _0: Any?) throws { throw IpcError.unimplemented }
	func generateAesKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setConfig(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getRandomBytes(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func loadSecureExpModKey(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func secureExpMod(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func isDevelopment() throws -> Any? { throw IpcError.unimplemented }
	func generateSpecificAesKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func decryptRsaPrivateKey(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func decryptAesKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func decryptAesCtr(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func computeCmac(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func loadRsaOaepKey(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unwrapRsaOaepWrappedTitleKey(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func loadTitleKey(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unwrapAesWrappedTitleKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func lockAesEngine() throws -> Any? { throw IpcError.unimplemented }
	func unlockAesEngine(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getSplWaitEvent() throws -> KObject { throw IpcError.unimplemented }
	func setSharedData(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getSharedData() throws -> Any? { throw IpcError.unimplemented }
	func importSslRsaKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func secureExpModWithSslKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func importEsRsaKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func secureExpModWithEsKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func encryptManuRsaKeyForImport(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getPackage2Hash(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getConfig(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try userExpMod(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try generateAesKek(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try loadAesKey(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try generateAesKey(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try setConfig(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try getRandomBytes(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try loadSecureExpModKey(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try secureExpMod(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try isDevelopment()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try generateSpecificAesKey(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			try decryptRsaPrivateKey(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try decryptAesKey(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try decryptAesCtr(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try computeCmac(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			try loadRsaOaepKey(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try unwrapRsaOaepWrappedTitleKey(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			try loadTitleKey(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try unwrapAesWrappedTitleKey(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try lockAesEngine()
			om.initialize(0, 0, 0)
		
		case 22:
			try unlockAesEngine(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getSplWaitEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try setSharedData(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try getSharedData()
			om.initialize(0, 0, 0)
		
		case 26:
			let ret = try importSslRsaKey(nil)
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try secureExpModWithSslKey(nil)
			om.initialize(0, 0, 0)
		
		case 28:
			let ret = try importEsRsaKey(nil)
			om.initialize(0, 0, 0)
		
		case 29:
			let ret = try secureExpModWithEsKey(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			let ret = try encryptManuRsaKeyForImport(nil)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try getPackage2Hash(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spl::detail::IGeneralInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSplDetail_IFsInterface: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown7(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown9(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown10(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown11() throws -> Any? { throw IpcError.unimplemented }
	func unknown12(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown14(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown15(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown16(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown19(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown21() throws -> Any? { throw IpcError.unimplemented }
	func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown23() throws -> KObject { throw IpcError.unimplemented }
	func unknown24(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try unknown9(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try unknown16(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			try unknown19(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try unknown21()
			om.initialize(0, 0, 0)
		
		case 22:
			try unknown22(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try unknown23()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try unknown24(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spl::detail::IFsInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSplDetail_ICryptoInterface: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown7(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown11() throws -> Any? { throw IpcError.unimplemented }
	func unknown14(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown15(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown16(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown21() throws -> Any? { throw IpcError.unimplemented }
	func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown23() throws -> KObject { throw IpcError.unimplemented }
	func unknown24(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try unknown16(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try unknown21()
			om.initialize(0, 0, 0)
		
		case 22:
			try unknown22(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try unknown23()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try unknown24(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spl::detail::ICryptoInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSplDetail_ISslInterface: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown7(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown11() throws -> Any? { throw IpcError.unimplemented }
	func unknown13(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown14(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown15(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown16(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown21() throws -> Any? { throw IpcError.unimplemented }
	func unknown22(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown23() throws -> KObject { throw IpcError.unimplemented }
	func unknown24(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown25() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x9, 1) as Buffer<UInt8>, im.getBuffer(0x9, 2) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try unknown7(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11()
			om.initialize(0, 0, 0)
		
		case 13:
			try unknown13(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try unknown16(nil, im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try unknown21()
			om.initialize(0, 0, 0)
		
		case 22:
			try unknown22(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try unknown23()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try unknown24(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::spl::detail::ISslInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
