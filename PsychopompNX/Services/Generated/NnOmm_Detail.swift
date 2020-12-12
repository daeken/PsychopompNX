class NnOmmDetail_IOperationModeManager: IpcService {
	func getOperationMode() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#GetOperationMode") }
	func getOperationModeChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#GetOperationModeChangeEvent") }
	func enableAudioVisual() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#EnableAudioVisual") }
	func disableAudioVisual() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#DisableAudioVisual") }
	func enterSleepAndWait(_ _0: KObject) throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#EnterSleepAndWait") }
	func getCradleStatus() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#GetCradleStatus") }
	func fadeInDisplay() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#FadeInDisplay") }
	func fadeOutDisplay() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#FadeOutDisplay") }
	func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown8") }
	func unknown9() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown9") }
	func unknown10(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown10") }
	func unknown11() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown11") }
	func unknown12() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown12") }
	func unknown13() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown13") }
	func unknown14() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown14") }
	func unknown15() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown15") }
	func unknown16() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown16") }
	func unknown17() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown17") }
	func unknown18() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown18") }
	func unknown19() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown19") }
	func unknown20() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown20") }
	func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown21") }
	func unknown22() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown22") }
	func unknown23() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown23") }
	
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

/*
class NnOmmDetail_IOperationModeManager_Impl: NnOmmDetail_IOperationModeManager {
	override func getOperationMode() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#GetOperationMode") }
	override func getOperationModeChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#GetOperationModeChangeEvent") }
	override func enableAudioVisual() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#EnableAudioVisual") }
	override func disableAudioVisual() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#DisableAudioVisual") }
	override func enterSleepAndWait(_ _0: KObject) throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#EnterSleepAndWait") }
	override func getCradleStatus() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#GetCradleStatus") }
	override func fadeInDisplay() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#FadeInDisplay") }
	override func fadeOutDisplay() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#FadeOutDisplay") }
	override func unknown8() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown8") }
	override func unknown9() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown9") }
	override func unknown10(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown10") }
	override func unknown11() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown11") }
	override func unknown12() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown12") }
	override func unknown13() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown13") }
	override func unknown14() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown14") }
	override func unknown15() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown15") }
	override func unknown16() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown16") }
	override func unknown17() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown17") }
	override func unknown18() throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown18") }
	override func unknown19() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown19") }
	override func unknown20() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown20") }
	override func unknown21(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown21") }
	override func unknown22() throws -> KObject { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown22") }
	override func unknown23() throws -> Any? { throw IpcError.unimplemented(name: "nn::omm::detail::nn::omm::detail::IOperationModeManager#Unknown23") }
}
*/
