typealias NnGrcsrv_GameMovieId = [UInt8]

class NnGrcsrv_IContinuousRecorder: IpcService {
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IContinuousRecorder#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IContinuousRecorder#Unknown2") }
	func unknown10() throws -> KObject { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IContinuousRecorder#Unknown10") }
	func unknown11() throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IContinuousRecorder#Unknown11") }
	func unknown12() throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IContinuousRecorder#Unknown12") }
	func unknown13(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IContinuousRecorder#Unknown13") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 11:
			try unknown11()
			om.initialize(0, 0, 0)
		
		case 12:
			try unknown12()
			om.initialize(0, 0, 0)
		
		case 13:
			try unknown13(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::grcsrv::IContinuousRecorder: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnGrcsrv_IGameMovieTrimmer: IpcService {
	func beginTrim(_ _0: UInt32, _ _1: UInt32, _ _2: NnGrcsrv_GameMovieId) throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IGameMovieTrimmer#BeginTrim") }
	func endTrim() throws -> NnGrcsrv_GameMovieId { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IGameMovieTrimmer#EndTrim") }
	func getNotTrimmingEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IGameMovieTrimmer#GetNotTrimmingEvent") }
	func setThumbnailRgba(_ _0: UInt32, _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IGameMovieTrimmer#SetThumbnailRgba") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try beginTrim(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBytes(16, 0x40))
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try endTrim()
			om.initialize(0, 0, 64)
			if ret.count != 0x40 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			let ret = try getNotTrimmingEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 20:
			try setThumbnailRgba(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::grcsrv::IGameMovieTrimmer: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnGrcsrv_IGrcService: IpcService {
	func openContinuousRecorder(_ _0: Any?, _ _1: KObject) throws -> NnGrcsrv_IContinuousRecorder { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IGrcService#OpenContinuousRecorder") }
	func openGameMovieTrimmer(_ _0: Any?, _ _1: KObject) throws -> NnGrcsrv_IGameMovieTrimmer { throw IpcError.unimplemented(name: "nn::grcsrv::nn::grcsrv::IGrcService#OpenGameMovieTrimmer") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			let ret = try openContinuousRecorder(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try openGameMovieTrimmer(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::grcsrv::IGrcService: \(im.commandId)")
			try! bailout()
		}
	}
}
