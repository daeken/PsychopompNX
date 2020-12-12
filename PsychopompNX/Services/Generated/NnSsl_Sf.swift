typealias NnSslSf_CertificateFormat = UInt32
typealias NnSslSf_PollEvent = UInt32
typealias NnSslSf_OptionType = UInt32
typealias NnSslSf_VerifyOption = UInt32
typealias NnSslSf_ContextOption = UInt32
typealias NnSslSf_IoMode = UInt32
typealias NnSslSf_RenegotiationMode = UInt32
typealias NnSslSf_SslVersion = UInt32
typealias NnSslSf_InternalPki = UInt32
typealias NnSslSf_SessionCacheMode = UInt32

class NnSslSf_ISslContext: IpcService {
	func setOption(_ _0: NnSslSf_ContextOption, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#SetOption") }
	func getOption(_ _0: NnSslSf_ContextOption) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#GetOption") }
	func createConnection() throws -> NnSslSf_ISslConnection { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#CreateConnection") }
	func getConnectionCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#GetConnectionCount") }
	func importServerPki(_ _0: NnSslSf_CertificateFormat, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#ImportServerPki") }
	func importClientPki(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#ImportClientPki") }
	func removeServerPki(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RemoveServerPki") }
	func removeClientPki(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RemoveClientPki") }
	func registerInternalPki(_ _0: NnSslSf_InternalPki) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RegisterInternalPki") }
	func addPolicyOid(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#AddPolicyOid") }
	func importCrl(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#ImportCrl") }
	func removeCrl(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RemoveCrl") }
	
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

/*
class NnSslSf_ISslContext_Impl: NnSslSf_ISslContext {
	override func setOption(_ _0: NnSslSf_ContextOption, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#SetOption") }
	override func getOption(_ _0: NnSslSf_ContextOption) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#GetOption") }
	override func createConnection() throws -> NnSslSf_ISslConnection { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#CreateConnection") }
	override func getConnectionCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#GetConnectionCount") }
	override func importServerPki(_ _0: NnSslSf_CertificateFormat, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#ImportServerPki") }
	override func importClientPki(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#ImportClientPki") }
	override func removeServerPki(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RemoveServerPki") }
	override func removeClientPki(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RemoveClientPki") }
	override func registerInternalPki(_ _0: NnSslSf_InternalPki) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RegisterInternalPki") }
	override func addPolicyOid(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#AddPolicyOid") }
	override func importCrl(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#ImportCrl") }
	override func removeCrl(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslContext#RemoveCrl") }
}
*/

class NnSslSf_ISslConnection: IpcService {
	func setSocketDescriptor(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetSocketDescriptor") }
	func setHostName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetHostName") }
	func setVerifyOption(_ _0: NnSslSf_VerifyOption) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetVerifyOption") }
	func setIoMode(_ _0: NnSslSf_IoMode) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetIoMode") }
	func getSocketDescriptor() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetSocketDescriptor") }
	func getHostName(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetHostName") }
	func getVerifyOption() throws -> NnSslSf_VerifyOption { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetVerifyOption") }
	func getIoMode() throws -> NnSslSf_IoMode { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetIoMode") }
	func doHandshake() throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#DoHandshake") }
	func doHandshakeGetServerCert(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#DoHandshakeGetServerCert") }
	func read(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Read") }
	func write(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Write") }
	func pending() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Pending") }
	func peek(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Peek") }
	func poll(_ _0: NnSslSf_PollEvent, _ _1: UInt32) throws -> NnSslSf_PollEvent { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Poll") }
	func getVerifyCertError() throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetVerifyCertError") }
	func getNeededServerCertBufferSize() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetNeededServerCertBufferSize") }
	func setSessionCacheMode(_ _0: NnSslSf_SessionCacheMode) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetSessionCacheMode") }
	func getSessionCacheMode() throws -> NnSslSf_SessionCacheMode { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetSessionCacheMode") }
	func flushSessionCache() throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#FlushSessionCache") }
	func setRenegotiationMode(_ _0: NnSslSf_RenegotiationMode) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetRenegotiationMode") }
	func getRenegotiationMode() throws -> NnSslSf_RenegotiationMode { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetRenegotiationMode") }
	func setOption(_ _0: UInt8, _ _1: NnSslSf_OptionType) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetOption") }
	func getOption(_ _0: NnSslSf_OptionType) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetOption") }
	func getVerifyCertErrors(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetVerifyCertErrors") }
	func getCipherInfo(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetCipherInfo") }
	
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

/*
class NnSslSf_ISslConnection_Impl: NnSslSf_ISslConnection {
	override func setSocketDescriptor(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetSocketDescriptor") }
	override func setHostName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetHostName") }
	override func setVerifyOption(_ _0: NnSslSf_VerifyOption) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetVerifyOption") }
	override func setIoMode(_ _0: NnSslSf_IoMode) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetIoMode") }
	override func getSocketDescriptor() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetSocketDescriptor") }
	override func getHostName(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetHostName") }
	override func getVerifyOption() throws -> NnSslSf_VerifyOption { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetVerifyOption") }
	override func getIoMode() throws -> NnSslSf_IoMode { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetIoMode") }
	override func doHandshake() throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#DoHandshake") }
	override func doHandshakeGetServerCert(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#DoHandshakeGetServerCert") }
	override func read(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Read") }
	override func write(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Write") }
	override func pending() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Pending") }
	override func peek(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Peek") }
	override func poll(_ _0: NnSslSf_PollEvent, _ _1: UInt32) throws -> NnSslSf_PollEvent { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#Poll") }
	override func getVerifyCertError() throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetVerifyCertError") }
	override func getNeededServerCertBufferSize() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetNeededServerCertBufferSize") }
	override func setSessionCacheMode(_ _0: NnSslSf_SessionCacheMode) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetSessionCacheMode") }
	override func getSessionCacheMode() throws -> NnSslSf_SessionCacheMode { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetSessionCacheMode") }
	override func flushSessionCache() throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#FlushSessionCache") }
	override func setRenegotiationMode(_ _0: NnSslSf_RenegotiationMode) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetRenegotiationMode") }
	override func getRenegotiationMode() throws -> NnSslSf_RenegotiationMode { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetRenegotiationMode") }
	override func setOption(_ _0: UInt8, _ _1: NnSslSf_OptionType) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#SetOption") }
	override func getOption(_ _0: NnSslSf_OptionType) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetOption") }
	override func getVerifyCertErrors(_ _0: Buffer<UInt8>) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetVerifyCertErrors") }
	override func getCipherInfo(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslConnection#GetCipherInfo") }
}
*/

class NnSslSf_ISslService: IpcService {
	func createContext(_ _0: NnSslSf_SslVersion, _ _1: UInt64, _ _2: Pid) throws -> NnSslSf_ISslContext { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#CreateContext") }
	func getContextCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#GetContextCount") }
	func getCertificates(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#GetCertificates") }
	func getCertificateBufSize(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#GetCertificateBufSize") }
	func debugIoctl(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#DebugIoctl") }
	func setInterfaceVersion(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#SetInterfaceVersion") }
	func flushSessionCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#FlushSessionCache") }
	
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

/*
class NnSslSf_ISslService_Impl: NnSslSf_ISslService {
	override func createContext(_ _0: NnSslSf_SslVersion, _ _1: UInt64, _ _2: Pid) throws -> NnSslSf_ISslContext { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#CreateContext") }
	override func getContextCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#GetContextCount") }
	override func getCertificates(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#GetCertificates") }
	override func getCertificateBufSize(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#GetCertificateBufSize") }
	override func debugIoctl(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#DebugIoctl") }
	override func setInterfaceVersion(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#SetInterfaceVersion") }
	override func flushSessionCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ssl::sf::nn::ssl::sf::ISslService#FlushSessionCache") }
}
*/
