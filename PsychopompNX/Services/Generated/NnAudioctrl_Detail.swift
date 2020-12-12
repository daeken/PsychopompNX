class NnAudioctrlDetail_IAudioController: IpcService {
	func getTargetVolume(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func setTargetVolume(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getTargetVolumeMin() throws -> UInt32 { throw IpcError.unimplemented }
	func getTargetVolumeMax() throws -> UInt32 { throw IpcError.unimplemented }
	func isTargetMute(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func setTargetMute(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func isTargetConnected(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func setDefaultTarget(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getDefaultTarget() throws -> UInt32 { throw IpcError.unimplemented }
	func getAudioOutputMode(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func setAudioOutputMode(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func setForceMutePolicy(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getForceMutePolicy() throws -> UInt32 { throw IpcError.unimplemented }
	func getOutputModeSetting(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func setOutputModeSetting(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func setOutputTarget(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setInputTargetForceEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setHeadphoneOutputLevelMode(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getHeadphoneOutputLevelMode() throws -> UInt32 { throw IpcError.unimplemented }
	func acquireAudioVolumeUpdateEventForPlayReport() throws -> KObject { throw IpcError.unimplemented }
	func acquireAudioOutputDeviceUpdateEventForPlayReport() throws -> KObject { throw IpcError.unimplemented }
	func getAudioOutputTargetForPlayReport() throws -> UInt32 { throw IpcError.unimplemented }
	func notifyHeadphoneVolumeWarningDisplayedEvent() throws { throw IpcError.unimplemented }
	func setSystemOutputMasterVolume(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getSystemOutputMasterVolume() throws -> UInt32 { throw IpcError.unimplemented }
	func getAudioVolumeDataForPlayReport() throws -> Any? { throw IpcError.unimplemented }
	func updateHeadphoneSettings(_ _0: Any?) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getTargetVolume(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try setTargetVolume(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getTargetVolumeMin()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try getTargetVolumeMax()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try isTargetMute(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 5:
			try setTargetMute(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try isTargetConnected(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			try setDefaultTarget(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getDefaultTarget()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			let ret = try getAudioOutputMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			try setAudioOutputMode(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 11:
			try setForceMutePolicy(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getForceMutePolicy()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			let ret = try getOutputModeSetting(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 14:
			try setOutputModeSetting(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 15:
			try setOutputTarget(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 16:
			try setInputTargetForceEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 17:
			try setHeadphoneOutputLevelMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try getHeadphoneOutputLevelMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 19:
			let ret = try acquireAudioVolumeUpdateEventForPlayReport()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 20:
			let ret = try acquireAudioOutputDeviceUpdateEventForPlayReport()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 21:
			let ret = try getAudioOutputTargetForPlayReport()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			try notifyHeadphoneVolumeWarningDisplayedEvent()
			om.initialize(0, 0, 0)
		
		case 23:
			try setSystemOutputMasterVolume(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 24:
			let ret = try getSystemOutputMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 25:
			let ret = try getAudioVolumeDataForPlayReport()
			om.initialize(0, 0, 0)
		
		case 26:
			try updateHeadphoneSettings(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audioctrl::detail::IAudioController: \(im.commandId)")
			try! bailout()
		}
	}
}
