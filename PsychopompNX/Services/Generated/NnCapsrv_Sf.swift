class NnCapsrvSf_IScreenShotControlService: IpcService {
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown2") }
	func unknown1001(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1001") }
	func unknown1002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1002") }
	func unknown1003(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1003") }
	func unknown1011(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1011") }
	func unknown1012(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1012") }
	func unknown1201(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1201") }
	func unknown1202() throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1202") }
	func unknown1203(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotControlService#Unknown1203") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try unknown1(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try unknown1001(nil)
			om.initialize(0, 0, 0)
		
		case 1002:
			try unknown1002(nil)
			om.initialize(0, 0, 0)
		
		case 1003:
			try unknown1003(nil)
			om.initialize(0, 0, 0)
		
		case 1011:
			try unknown1011(nil)
			om.initialize(0, 0, 0)
		
		case 1012:
			try unknown1012(nil)
			om.initialize(0, 0, 0)
		
		case 1201:
			let ret = try unknown1201(nil)
			om.initialize(0, 0, 0)
		
		case 1202:
			try unknown1202()
			om.initialize(0, 0, 0)
		
		case 1203:
			let ret = try unknown1203(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IScreenShotControlService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_ICaptureControllerService: IpcService {
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown2") }
	func unknown1001(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown1001") }
	func unknown1002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown1002") }
	func unknown1011(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown1011") }
	func unknown2001(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown2001") }
	func unknown2002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::ICaptureControllerService#Unknown2002") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try unknown1(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try unknown1001(nil)
			om.initialize(0, 0, 0)
		
		case 1002:
			try unknown1002(nil)
			om.initialize(0, 0, 0)
		
		case 1011:
			try unknown1011(nil)
			om.initialize(0, 0, 0)
		
		case 2001:
			try unknown2001(nil)
			om.initialize(0, 0, 0)
		
		case 2002:
			try unknown2002(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::ICaptureControllerService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IAlbumAccessorSession: IpcService {
	func unknown2001(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2001") }
	func unknown2002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2002") }
	func unknown2003(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2003") }
	func unknown2004(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2004") }
	func unknown2005(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2005") }
	func unknown2006(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2006") }
	func unknown2007(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2007") }
	func unknown2008(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorSession#Unknown2008") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2001:
			let ret = try unknown2001(nil)
			om.initialize(0, 0, 0)
		
		case 2002:
			try unknown2002(nil)
			om.initialize(0, 0, 0)
		
		case 2003:
			let ret = try unknown2003(nil)
			om.initialize(0, 0, 0)
		
		case 2004:
			let ret = try unknown2004(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2005:
			try unknown2005(nil)
			om.initialize(0, 0, 0)
		
		case 2006:
			let ret = try unknown2006(nil)
			om.initialize(0, 0, 0)
		
		case 2007:
			let ret = try unknown2007(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2008:
			let ret = try unknown2008(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IAlbumAccessorSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IAlbumControlService: IpcService {
	func unknown2001(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2001") }
	func unknown2002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2002") }
	func unknown2011(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2011") }
	func unknown2012(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2012") }
	func unknown2013(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2013") }
	func unknown2014(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2014") }
	func unknown2101(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2101") }
	func unknown2102(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2102") }
	func unknown2201(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2201") }
	func unknown2301(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlService#Unknown2301") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2001:
			try unknown2001(nil)
			om.initialize(0, 0, 0)
		
		case 2002:
			try unknown2002(nil)
			om.initialize(0, 0, 0)
		
		case 2011:
			try unknown2011(nil)
			om.initialize(0, 0, 0)
		
		case 2012:
			try unknown2012(nil)
			om.initialize(0, 0, 0)
		
		case 2013:
			let ret = try unknown2013(nil)
			om.initialize(0, 0, 0)
		
		case 2014:
			try unknown2014(nil)
			om.initialize(0, 0, 0)
		
		case 2101:
			let ret = try unknown2101(nil)
			om.initialize(0, 0, 0)
		
		case 2102:
			let ret = try unknown2102(nil)
			om.initialize(0, 0, 0)
		
		case 2201:
			try unknown2201(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2301:
			try unknown2301(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IAlbumControlService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IAlbumAccessorService: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown0") }
	func unknown1(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown1") }
	func unknown2(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown2") }
	func unknown3(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown3") }
	func unknown4(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown4") }
	func unknown5(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown5") }
	func unknown6(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown6") }
	func unknown7(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown7") }
	func unknown8(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown8") }
	func unknown9(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown9") }
	func unknown10(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown10") }
	func unknown11(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown11") }
	func unknown12(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown12") }
	func unknown13(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown13") }
	func unknown14(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown14") }
	func unknown301(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown301") }
	func unknown401() throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown401") }
	func unknown501(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown501") }
	func unknown1001(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown1001") }
	func unknown1002(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown1002") }
	func unknown8001(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown8001") }
	func unknown8002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown8002") }
	func unknown8011(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown8011") }
	func unknown8012(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown8012") }
	func unknown8021(_ _0: Any?, _ _1: Pid) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown8021") }
	func unknown10011(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorService#Unknown10011") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try unknown5(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try unknown6(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try unknown9(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try unknown13(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 301:
			let ret = try unknown301(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 401:
			let ret = try unknown401()
			om.initialize(0, 0, 0)
		
		case 501:
			let ret = try unknown501(nil)
			om.initialize(0, 0, 0)
		
		case 1001:
			let ret = try unknown1001(nil, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1002:
			try unknown1002(nil, im.getBuffer(0x16, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8001:
			try unknown8001(nil)
			om.initialize(0, 0, 0)
		
		case 8002:
			try unknown8002(nil)
			om.initialize(0, 0, 0)
		
		case 8011:
			try unknown8011(nil)
			om.initialize(0, 0, 0)
		
		case 8012:
			let ret = try unknown8012(nil)
			om.initialize(0, 0, 0)
		
		case 8021:
			let ret = try unknown8021(nil, im.pid)
			om.initialize(0, 0, 0)
		
		case 10011:
			try unknown10011(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IAlbumAccessorService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IAlbumAccessorApplicationSession: IpcService {
	func openAlbumMovieReadStream(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorApplicationSession#OpenAlbumMovieReadStream") }
	func closeAlbumMovieReadStream(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorApplicationSession#CloseAlbumMovieReadStream") }
	func getAlbumMovieReadStreamMovieDataSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorApplicationSession#GetAlbumMovieReadStreamMovieDataSize") }
	func readMovieDataFromAlbumMovieReadStream(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorApplicationSession#ReadMovieDataFromAlbumMovieReadStream") }
	func getAlbumMovieReadStreamBrokenReason(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumAccessorApplicationSession#GetAlbumMovieReadStreamBrokenReason") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2001:
			let ret = try openAlbumMovieReadStream(nil)
			om.initialize(0, 0, 0)
		
		case 2002:
			let ret = try closeAlbumMovieReadStream(nil)
			om.initialize(0, 0, 0)
		
		case 2003:
			let ret = try getAlbumMovieReadStreamMovieDataSize(nil)
			om.initialize(0, 0, 0)
		
		case 2004:
			let ret = try readMovieDataFromAlbumMovieReadStream(nil)
			om.initialize(0, 0, 0)
		
		case 2005:
			let ret = try getAlbumMovieReadStreamBrokenReason(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IAlbumAccessorApplicationSession: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IAlbumApplicationService: IpcService {
	func getAlbumFileListByAruid(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumApplicationService#GetAlbumFileListByAruid") }
	func deleteAlbumFileByAruid(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumApplicationService#DeleteAlbumFileByAruid") }
	func getAlbumFileSizeByAruid(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumApplicationService#GetAlbumFileSizeByAruid") }
	func loadAlbumScreenShotImageByAruid(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumApplicationService#LoadAlbumScreenShotImageByAruid") }
	func loadAlbumScreenShotThumbnailImageByAruid(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumApplicationService#LoadAlbumScreenShotThumbnailImageByAruid") }
	func openAccessorSessionForApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumApplicationService#OpenAccessorSessionForApplication") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 102:
			let ret = try getAlbumFileListByAruid(nil)
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try deleteAlbumFileByAruid(nil)
			om.initialize(0, 0, 0)
		
		case 104:
			let ret = try getAlbumFileSizeByAruid(nil)
			om.initialize(0, 0, 0)
		
		case 110:
			let ret = try loadAlbumScreenShotImageByAruid(nil)
			om.initialize(0, 0, 0)
		
		case 120:
			let ret = try loadAlbumScreenShotThumbnailImageByAruid(nil)
			om.initialize(0, 0, 0)
		
		case 60002:
			let ret = try openAccessorSessionForApplication(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IAlbumApplicationService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IScreenShotApplicationService: IpcService {
	func saveScreenShot(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ _4: Buffer<UInt8>) throws -> NnCapsrv_ApplicationAlbumEntry { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotApplicationService#SaveScreenShot") }
	func saveScreenShotEx0(_ _0: NnCapsrvDetail_ScreenShotAttributeEx0, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ _4: Buffer<UInt8>) throws -> NnCapsrv_ApplicationAlbumEntry { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotApplicationService#SaveScreenShotEx0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 201:
			let ret = try saveScreenShot(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 203:
			let ret = try saveScreenShotEx0(im.getBytes(8, 0x40), im.getData(72) as UInt32, im.getData(80) as UInt64, im.pid, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IScreenShotApplicationService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IScreenShotService: IpcService {
	func unknown201(_ _0: Any?, _ _1: Pid, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotService#Unknown201") }
	func unknown202(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotService#Unknown202") }
	func unknown203(_ _0: Any?, _ _1: Pid, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotService#Unknown203") }
	func unknown204(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IScreenShotService#Unknown204") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 201:
			let ret = try unknown201(nil, im.pid, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 202:
			let ret = try unknown202(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x45, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 203:
			let ret = try unknown203(nil, im.pid, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 204:
			let ret = try unknown204(nil, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x45, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IScreenShotService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnCapsrvSf_IAlbumControlSession: IpcService {
	func unknown2001(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2001") }
	func unknown2002(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2002") }
	func unknown2003(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2003") }
	func unknown2004(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2004") }
	func unknown2005(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2005") }
	func unknown2006(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2006") }
	func unknown2007(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2007") }
	func unknown2008(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2008") }
	func unknown2401(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2401") }
	func unknown2402(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2402") }
	func unknown2403(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2403") }
	func unknown2404(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2404") }
	func unknown2405(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2405") }
	func unknown2411(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2411") }
	func unknown2412(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2412") }
	func unknown2413(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2413") }
	func unknown2414(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2414") }
	func unknown2421(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2421") }
	func unknown2422(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2422") }
	func unknown2424(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2424") }
	func unknown2431(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2431") }
	func unknown2433(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2433") }
	func unknown2434(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::capsrv::sf::nn::capsrv::sf::IAlbumControlSession#Unknown2434") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2001:
			let ret = try unknown2001(nil)
			om.initialize(0, 0, 0)
		
		case 2002:
			try unknown2002(nil)
			om.initialize(0, 0, 0)
		
		case 2003:
			let ret = try unknown2003(nil)
			om.initialize(0, 0, 0)
		
		case 2004:
			let ret = try unknown2004(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2005:
			try unknown2005(nil)
			om.initialize(0, 0, 0)
		
		case 2006:
			let ret = try unknown2006(nil)
			om.initialize(0, 0, 0)
		
		case 2007:
			let ret = try unknown2007(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2008:
			let ret = try unknown2008(nil)
			om.initialize(0, 0, 0)
		
		case 2401:
			let ret = try unknown2401(nil)
			om.initialize(0, 0, 0)
		
		case 2402:
			try unknown2402(nil)
			om.initialize(0, 0, 0)
		
		case 2403:
			try unknown2403(nil)
			om.initialize(0, 0, 0)
		
		case 2404:
			try unknown2404(nil)
			om.initialize(0, 0, 0)
		
		case 2405:
			try unknown2405(nil)
			om.initialize(0, 0, 0)
		
		case 2411:
			try unknown2411(nil)
			om.initialize(0, 0, 0)
		
		case 2412:
			try unknown2412(nil)
			om.initialize(0, 0, 0)
		
		case 2413:
			try unknown2413(nil)
			om.initialize(0, 0, 0)
		
		case 2414:
			try unknown2414(nil)
			om.initialize(0, 0, 0)
		
		case 2421:
			let ret = try unknown2421(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2422:
			try unknown2422(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2424:
			try unknown2424(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2431:
			try unknown2431(nil)
			om.initialize(0, 0, 0)
		
		case 2433:
			let ret = try unknown2433(nil)
			om.initialize(0, 0, 0)
		
		case 2434:
			try unknown2434(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::capsrv::sf::IAlbumControlSession: \(im.commandId)")
			try! bailout()
		}
	}
}
