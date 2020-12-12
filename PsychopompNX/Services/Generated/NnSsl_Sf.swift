typealias NnSslSf_OptionType = UInt32
typealias NnSslSf_PollEvent = UInt32
typealias NnSslSf_ContextOption = UInt32
typealias NnSslSf_VerifyOption = UInt32
typealias NnSslSf_CertificateFormat = UInt32
typealias NnSslSf_IoMode = UInt32
typealias NnSslSf_RenegotiationMode = UInt32
typealias NnSslSf_SslVersion = UInt32
typealias NnSslSf_InternalPki = UInt32
typealias NnSslSf_SessionCacheMode = UInt32

class NnSslSf_ISslContext: IpcService {
	func setOption(_ _0: NnSslSf_ContextOption, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getOption(_ _0: NnSslSf_ContextOption) throws -> UInt32 { throw IpcError.unimplemented }
	func createConnection() throws -> NnSslSf_ISslConnection { throw IpcError.unimplemented }
	func getConnectionCount() throws -> UInt32 { throw IpcError.unimplemented }
	func importServerPki(_ _0: NnSslSf_CertificateFormat, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func importClientPki(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func removeServerPki(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func removeClientPki(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func registerInternalPki(_ _0: NnSslSf_InternalPki) throws -> UInt64 { throw IpcError.unimplemented }
	func addPolicyOid(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func importCrl(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func removeCrl(_ _0: UInt64) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setOption(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getOption(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try createConnection()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getConnectionCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try importServerPki(im.getData(8) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 5:
			let ret = try importClientPki(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 6:
			try removeServerPki(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 7:
			try removeClientPki(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try registerInternalPki(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 9:
			try addPolicyOid(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try importCrl(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 11:
			try removeCrl(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ssl::sf::ISslContext: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSslSf_ISslConnection: IpcService {
	func setSocketDescriptor(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func setHostName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setVerifyOption(_ _0: NnSslSf_VerifyOption) throws { throw IpcError.unimplemented }
	func setIoMode(_ _0: NnSslSf_IoMode) throws { throw IpcError.unimplemented }
	func getSocketDescriptor() throws -> UInt32 { throw IpcError.unimplemented }
	func getHostName(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func getVerifyOption() throws -> NnSslSf_VerifyOption { throw IpcError.unimplemented }
	func getIoMode() throws -> NnSslSf_IoMode { throw IpcError.unimplemented }
	func doHandshake() throws { throw IpcError.unimplemented }
	func doHandshakeGetServerCert(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func read(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func write(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func pending() throws -> UInt32 { throw IpcError.unimplemented }
	func peek(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func poll(_ _0: NnSslSf_PollEvent, _ _1: UInt32) throws -> NnSslSf_PollEvent { throw IpcError.unimplemented }
	func getVerifyCertError() throws { throw IpcError.unimplemented }
	func getNeededServerCertBufferSize() throws -> UInt32 { throw IpcError.unimplemented }
	func setSessionCacheMode(_ _0: NnSslSf_SessionCacheMode) throws { throw IpcError.unimplemented }
	func getSessionCacheMode() throws -> NnSslSf_SessionCacheMode { throw IpcError.unimplemented }
	func flushSessionCache() throws { throw IpcError.unimplemented }
	func setRenegotiationMode(_ _0: NnSslSf_RenegotiationMode) throws { throw IpcError.unimplemented }
	func getRenegotiationMode() throws -> NnSslSf_RenegotiationMode { throw IpcError.unimplemented }
	func setOption(_ _0: UInt8, _ _1: NnSslSf_OptionType) throws { throw IpcError.unimplemented }
	func getOption(_ _0: NnSslSf_OptionType) throws -> UInt8 { throw IpcError.unimplemented }
	func getVerifyCertErrors(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented }
	func getCipherInfo(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try setSocketDescriptor(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try setHostName(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try setVerifyOption(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 3:
			try setIoMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getSocketDescriptor()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 5:
			let ret = try getHostName(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try getVerifyOption()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			let ret = try getIoMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 8:
			try doHandshake()
			om.initialize(0, 0, 0)
		
		case 9:
			let (_0, _1) = try doHandshakeGetServerCert(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 10:
			let ret = try read(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 11:
			let ret = try write(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 12:
			let ret = try pending()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			let ret = try peek(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 14:
			let ret = try poll(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 15:
			try getVerifyCertError()
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try getNeededServerCertBufferSize()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 17:
			try setSessionCacheMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try getSessionCacheMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 19:
			try flushSessionCache()
			om.initialize(0, 0, 0)
		
		case 20:
			try setRenegotiationMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try getRenegotiationMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			try setOption(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getOption(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 24:
			let (_0, _1) = try getVerifyCertErrors(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 25:
			try getCipherInfo(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ssl::sf::ISslConnection: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSslSf_ISslService: IpcService {
	func createContext(_ _0: NnSslSf_SslVersion, _ _1: UInt64, _ _2: Pid) throws -> NnSslSf_ISslContext { throw IpcError.unimplemented }
	func getContextCount() throws -> UInt32 { throw IpcError.unimplemented }
	func getCertificates(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func getCertificateBufSize(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented }
	func debugIoctl(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setInterfaceVersion(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func flushSessionCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createContext(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getContextCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getCertificates(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try getCertificateBufSize(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			try debugIoctl(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try setInterfaceVersion(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try flushSessionCache(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ssl::sf::ISslService: \(im.commandId)")
			try! bailout()
		}
	}
}
