class NnOmmDetail_IOperationModeManager: IpcService {
	func getOperationMode() throws -> Any? { throw IpcError.unimplemented }
	func getOperationModeChangeEvent() throws -> KObject { throw IpcError.unimplemented }
	func enableAudioVisual() throws { throw IpcError.unimplemented }
	func disableAudioVisual() throws { throw IpcError.unimplemented }
	func enterSleepAndWait(_ _0: KObject) throws { throw IpcError.unimplemented }
	func getCradleStatus() throws -> Any? { throw IpcError.unimplemented }
	func fadeInDisplay() throws { throw IpcError.unimplemented }
	func fadeOutDisplay() throws { throw IpcError.unimplemented }
	func unknown8() throws -> Any? { throw IpcError.unimplemented }
	func unknown9() throws { throw IpcError.unimplemented }
	func unknown10(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown11() throws -> Any? { throw IpcError.unimplemented }
	func unknown12() throws -> KObject { throw IpcError.unimplemented }
	func unknown13() throws { throw IpcError.unimplemented }
	func unknown14() throws -> Any? { throw IpcError.unimplemented }
	func unknown15() throws { throw IpcError.unimplemented }
	func unknown16() throws { throw IpcError.unimplemented }
	func unknown17() throws { throw IpcError.unimplemented }
	func unknown18() throws { throw IpcError.unimplemented }
	func unknown19() throws -> KObject { throw IpcError.unimplemented }
	func unknown20() throws -> Any? { throw IpcError.unimplemented }
	func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown22() throws -> KObject { throw IpcError.unimplemented }
	func unknown23() throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getOperationMode()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getOperationModeChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2:
			try enableAudioVisual()
			om.initialize(0, 0, 0)
		
		case 3:
			try disableAudioVisual()
			om.initialize(0, 0, 0)
		
		case 4:
			try enterSleepAndWait(try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getCradleStatus()
			om.initialize(0, 0, 0)
		
		case 6:
			try fadeInDisplay()
			om.initialize(0, 0, 0)
		
		case 7:
			try fadeOutDisplay()
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try unknown8()
			om.initialize(0, 0, 0)
		
		case 9:
			try unknown9()
			om.initialize(0, 0, 0)
		
		case 10:
			try unknown10(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try unknown11()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 13:
			try unknown13()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try unknown14()
			om.initialize(0, 0, 0)
		
		case 15:
			try unknown15()
			om.initialize(0, 0, 0)
		
		case 16:
			try unknown16()
			om.initialize(0, 0, 0)
		
		case 17:
			try unknown17()
			om.initialize(0, 0, 0)
		
		case 18:
			try unknown18()
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try unknown19()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 20:
			let ret = try unknown20()
			om.initialize(0, 0, 0)
		
		case 21:
			try unknown21(nil)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try unknown22()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 23:
			let ret = try unknown23()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::omm::detail::IOperationModeManager: \(im.commandId)")
			try! bailout()
		}
	}
}
