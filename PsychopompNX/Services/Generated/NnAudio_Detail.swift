struct NnAudioDetail_AudioRendererParameterInternal {
    var sampleRate: Int32
    var sampleCount: Int32
    var unknown8: Int32
    var mixCount: Int32
    var voiceCount: Int32
    var sinkCount: Int32
    var effectCount: Int32
    var performanceManagerCount: Int32
    var voiceDropEnable: Int32
    var splitterCount: Int32
    var splitterDestinationDataCount: Int32
    var unknown2C: Int32
    var revision: Int32

    init(sampleRate: Int32, sampleCount: Int32, unknown8: Int32, mixCount: Int32, voiceCount: Int32, sinkCount: Int32, effectCount: Int32, performanceManagerCount: Int32, voiceDropEnable: Int32, splitterCount: Int32, splitterDestinationDataCount: Int32, unknown2C: Int32, revision: Int32) {
        self.sampleRate = sampleRate
        self.sampleCount = sampleCount
        self.unknown8 = unknown8
        self.mixCount = mixCount
        self.voiceCount = voiceCount
        self.sinkCount = sinkCount
        self.effectCount = effectCount
        self.performanceManagerCount = performanceManagerCount
        self.voiceDropEnable = voiceDropEnable
        self.splitterCount = splitterCount
        self.splitterDestinationDataCount = splitterDestinationDataCount
        self.unknown2C = unknown2C
        self.revision = revision
    }
}
struct NnAudioDetail_AudioRendererUpdateDataHeader {
    var revision: Int32
    var behaviorSize: Int32
    var memoryPoolSize: Int32
    var voiceSize: Int32
    var voiceResourceSize: Int32
    var effectSize: Int32
    var mixSize: Int32
    var sinkSize: Int32
    var performanceManagerSize: Int32
    var unknown24: Int32
    var unknown28: Int32
    var unknown2C: Int32
    var unknown30: Int32
    var unknown34: Int32
    var unknown38: Int32
    var totalSize: Int32

    init(revision: Int32, behaviorSize: Int32, memoryPoolSize: Int32, voiceSize: Int32, voiceResourceSize: Int32, effectSize: Int32, mixSize: Int32, sinkSize: Int32, performanceManagerSize: Int32, unknown24: Int32, unknown28: Int32, unknown2C: Int32, unknown30: Int32, unknown34: Int32, unknown38: Int32, totalSize: Int32) {
        self.revision = revision
        self.behaviorSize = behaviorSize
        self.memoryPoolSize = memoryPoolSize
        self.voiceSize = voiceSize
        self.voiceResourceSize = voiceResourceSize
        self.effectSize = effectSize
        self.mixSize = mixSize
        self.sinkSize = sinkSize
        self.performanceManagerSize = performanceManagerSize
        self.unknown24 = unknown24
        self.unknown28 = unknown28
        self.unknown2C = unknown2C
        self.unknown30 = unknown30
        self.unknown34 = unknown34
        self.unknown38 = unknown38
        self.totalSize = totalSize
    }
}

class NnAudioDetail_IAudioDevice: IpcService {
	func listAudioDeviceName(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#ListAudioDeviceName") }
	func setAudioDeviceOutputVolume(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#SetAudioDeviceOutputVolume") }
	func getAudioDeviceOutputVolume(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetAudioDeviceOutputVolume") }
	func getActiveAudioDeviceName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetActiveAudioDeviceName") }
	func queryAudioDeviceSystemEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#QueryAudioDeviceSystemEvent") }
	func getActiveChannelCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetActiveChannelCount") }
	func listAudioDeviceNameAuto(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#ListAudioDeviceNameAuto") }
	func setAudioDeviceOutputVolumeAuto(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#SetAudioDeviceOutputVolumeAuto") }
	func getAudioDeviceOutputVolumeAuto(_ _0: Buffer<UInt8>) throws -> Float32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetAudioDeviceOutputVolumeAuto") }
	func getActiveAudioDeviceNameAuto(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetActiveAudioDeviceNameAuto") }
	func queryAudioDeviceInputEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#QueryAudioDeviceInputEvent") }
	func queryAudioDeviceOutputEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#QueryAudioDeviceOutputEvent") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try listAudioDeviceName(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try setAudioDeviceOutputVolume(im.getData(8) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getAudioDeviceOutputVolume(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try getActiveAudioDeviceName(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try queryAudioDeviceSystemEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try getActiveChannelCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try listAudioDeviceNameAuto(im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			try setAudioDeviceOutputVolumeAuto(im.getData(8) as UInt32, im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getAudioDeviceOutputVolumeAuto(im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			try getActiveAudioDeviceNameAuto(im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try queryAudioDeviceInputEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 12:
			let ret = try queryAudioDeviceOutputEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioDevice: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioDevice_Impl: NnAudioDetail_IAudioDevice {
	override func listAudioDeviceName(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#ListAudioDeviceName") }
	override func setAudioDeviceOutputVolume(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#SetAudioDeviceOutputVolume") }
	override func getAudioDeviceOutputVolume(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetAudioDeviceOutputVolume") }
	override func getActiveAudioDeviceName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetActiveAudioDeviceName") }
	override func queryAudioDeviceSystemEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#QueryAudioDeviceSystemEvent") }
	override func getActiveChannelCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetActiveChannelCount") }
	override func listAudioDeviceNameAuto(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#ListAudioDeviceNameAuto") }
	override func setAudioDeviceOutputVolumeAuto(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#SetAudioDeviceOutputVolumeAuto") }
	override func getAudioDeviceOutputVolumeAuto(_ _0: Buffer<UInt8>) throws -> Float32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetAudioDeviceOutputVolumeAuto") }
	override func getActiveAudioDeviceNameAuto(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#GetActiveAudioDeviceNameAuto") }
	override func queryAudioDeviceInputEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#QueryAudioDeviceInputEvent") }
	override func queryAudioDeviceOutputEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDevice#QueryAudioDeviceOutputEvent") }
}
*/

class NnAudioDetail_IFinalOutputRecorderManager: IpcService {
	func openFinalOutputRecorder(_ _0: [UInt8], _ _1: UInt64, _ _2: KObject) throws -> ([UInt8], NnAudioDetail_IFinalOutputRecorder) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManager#OpenFinalOutputRecorder") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try openFinalOutputRecorder(im.getBytes(8, 0x8), im.getData(16) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 16)
			if _0.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.move(0, _1)
		
		default:
			print("Unhandled command to nn::audio::detail::IFinalOutputRecorderManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IFinalOutputRecorderManager_Impl: NnAudioDetail_IFinalOutputRecorderManager {
	override func openFinalOutputRecorder(_ _0: [UInt8], _ _1: UInt64, _ _2: KObject) throws -> ([UInt8], NnAudioDetail_IFinalOutputRecorder) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManager#OpenFinalOutputRecorder") }
}
*/

class NnAudioDetail_IAudioRenderer: IpcService {
	func getSampleRate() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetSampleRate") }
	func getSampleCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetSampleCount") }
	func getMixBufferCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetMixBufferCount") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetState") }
	func requestUpdateAudioRenderer(_ _0: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _1: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _2: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#RequestUpdateAudioRenderer") }
	func start() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#Start") }
	func stop() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#Stop") }
	func querySystemEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#QuerySystemEvent") }
	func setAudioRendererRenderingTimeLimit(_ limit: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#SetAudioRendererRenderingTimeLimit") }
	func getAudioRendererRenderingTimeLimit() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetAudioRendererRenderingTimeLimit") }
	func requestUpdateAudioRendererAuto(_ _0: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _1: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _2: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#RequestUpdateAudioRendererAuto") }
	func executeAudioRendererRendering() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#ExecuteAudioRendererRendering") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSampleRate()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let ret = try getSampleCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getMixBufferCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			try requestUpdateAudioRenderer(im.getBuffer(0x5, 0) as Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, im.getBuffer(0x6, 0) as Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, im.getBuffer(0x6, 1) as Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>)
			om.initialize(0, 0, 0)
		
		case 5:
			try start()
			om.initialize(0, 0, 0)
		
		case 6:
			try stop()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try querySystemEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 8:
			try setAudioRendererRenderingTimeLimit(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getAudioRendererRenderingTimeLimit()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			try requestUpdateAudioRendererAuto(im.getBuffer(0x21, 0) as Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, im.getBuffer(0x22, 0) as Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, im.getBuffer(0x22, 1) as Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>)
			om.initialize(0, 0, 0)
		
		case 11:
			try executeAudioRendererRendering()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioRenderer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioRenderer_Impl: NnAudioDetail_IAudioRenderer {
	override func getSampleRate() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetSampleRate") }
	override func getSampleCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetSampleCount") }
	override func getMixBufferCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetMixBufferCount") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetState") }
	override func requestUpdateAudioRenderer(_ _0: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _1: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _2: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#RequestUpdateAudioRenderer") }
	override func start() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#Start") }
	override func stop() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#Stop") }
	override func querySystemEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#QuerySystemEvent") }
	override func setAudioRendererRenderingTimeLimit(_ limit: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#SetAudioRendererRenderingTimeLimit") }
	override func getAudioRendererRenderingTimeLimit() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#GetAudioRendererRenderingTimeLimit") }
	override func requestUpdateAudioRendererAuto(_ _0: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _1: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>, _ _2: Buffer<NnAudioDetail_AudioRendererUpdateDataHeader>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#RequestUpdateAudioRendererAuto") }
	override func executeAudioRendererRendering() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRenderer#ExecuteAudioRendererRendering") }
}
*/

class NnAudioDetail_IAudioOutManager: IpcService {
	func listAudioOuts(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#ListAudioOuts") }
	func openAudioOut(_ sample_rate: UInt32, _ unused: UInt16, _ channel_count: UInt16, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: KObject, _ name_in: Buffer<UInt8>, _ name_out: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioOut) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#OpenAudioOut") }
	func listAudioOutsAuto(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#ListAudioOutsAuto") }
	func openAudioOutAuto(_ sample_rate: UInt32, _ unused: UInt16, _ channel_count: UInt16, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: KObject, _ _6: Buffer<UInt8>, _ name_out: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioOut) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#OpenAudioOutAuto") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try listAudioOuts(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let (_0, _1, _2, _3, _4) = try openAudioOut(im.getData(8) as UInt32, im.getData(12) as UInt16, im.getData(14) as UInt16, im.getData(16) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
			om.setData(20, _3)
			om.move(0, _4)
		
		case 2:
			let ret = try listAudioOutsAuto(im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let (_0, _1, _2, _3, _4) = try openAudioOutAuto(im.getData(8) as UInt32, im.getData(12) as UInt16, im.getData(14) as UInt16, im.getData(16) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x21, 0) as Buffer<UInt8>, im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
			om.setData(20, _3)
			om.move(0, _4)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioOutManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioOutManager_Impl: NnAudioDetail_IAudioOutManager {
	override func listAudioOuts(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#ListAudioOuts") }
	override func openAudioOut(_ sample_rate: UInt32, _ unused: UInt16, _ channel_count: UInt16, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: KObject, _ name_in: Buffer<UInt8>, _ name_out: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioOut) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#OpenAudioOut") }
	override func listAudioOutsAuto(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#ListAudioOutsAuto") }
	override func openAudioOutAuto(_ sample_rate: UInt32, _ unused: UInt16, _ channel_count: UInt16, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: KObject, _ _6: Buffer<UInt8>, _ name_out: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioOut) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManager#OpenAudioOutAuto") }
}
*/

class NnAudioDetail_IAudioRendererManagerForDebugger: IpcService {
	func requestSuspendForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForDebugger#RequestSuspendForDebug") }
	func requestResumeForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForDebugger#RequestResumeForDebug") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioRendererManagerForDebugger: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioRendererManagerForDebugger_Impl: NnAudioDetail_IAudioRendererManagerForDebugger {
	override func requestSuspendForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForDebugger#RequestSuspendForDebug") }
	override func requestResumeForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForDebugger#RequestResumeForDebug") }
}
*/

class NnAudioDetail_IAudioIn: IpcService {
	func getAudioInState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetAudioInState") }
	func startAudioIn() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#StartAudioIn") }
	func stopAudioIn() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#StopAudioIn") }
	func appendAudioInBuffer(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBuffer") }
	func registerBufferEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#RegisterBufferEvent") }
	func getReleasedAudioInBuffer(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetReleasedAudioInBuffer") }
	func containsAudioInBuffer(_ tag: UInt64) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#ContainsAudioInBuffer") }
	func appendAudioInBufferWithUserEvent(_ tag: UInt64, _ _1: KObject, _ _2: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBufferWithUserEvent") }
	func appendAudioInBufferAuto(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBufferAuto") }
	func getReleasedAudioInBufferAuto(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetReleasedAudioInBufferAuto") }
	func appendAudioInBufferWithUserEventAuto(_ tag: UInt64, _ _1: KObject, _ _2: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBufferWithUserEventAuto") }
	func getAudioInBufferCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetAudioInBufferCount") }
	func setAudioInDeviceGain(_ gain: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#SetAudioInDeviceGain") }
	func getAudioInDeviceGain() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetAudioInDeviceGain") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getAudioInState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try startAudioIn()
			om.initialize(0, 0, 0)
		
		case 2:
			try stopAudioIn()
			om.initialize(0, 0, 0)
		
		case 3:
			try appendAudioInBuffer(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try registerBufferEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try getReleasedAudioInBuffer(im.getBuffer(0x6, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try containsAudioInBuffer(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			try appendAudioInBufferWithUserEvent(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x5, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 0)
		
		case 8:
			try appendAudioInBufferAuto(im.getData(8) as UInt64, im.getBuffer(0x21, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getReleasedAudioInBufferAuto(im.getBuffer(0x22, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			try appendAudioInBufferWithUserEventAuto(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x21, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getAudioInBufferCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 12:
			try setAudioInDeviceGain(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try getAudioInDeviceGain()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioIn: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioIn_Impl: NnAudioDetail_IAudioIn {
	override func getAudioInState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetAudioInState") }
	override func startAudioIn() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#StartAudioIn") }
	override func stopAudioIn() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#StopAudioIn") }
	override func appendAudioInBuffer(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBuffer") }
	override func registerBufferEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#RegisterBufferEvent") }
	override func getReleasedAudioInBuffer(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetReleasedAudioInBuffer") }
	override func containsAudioInBuffer(_ tag: UInt64) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#ContainsAudioInBuffer") }
	override func appendAudioInBufferWithUserEvent(_ tag: UInt64, _ _1: KObject, _ _2: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBufferWithUserEvent") }
	override func appendAudioInBufferAuto(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBufferAuto") }
	override func getReleasedAudioInBufferAuto(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetReleasedAudioInBufferAuto") }
	override func appendAudioInBufferWithUserEventAuto(_ tag: UInt64, _ _1: KObject, _ _2: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#AppendAudioInBufferWithUserEventAuto") }
	override func getAudioInBufferCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetAudioInBufferCount") }
	override func setAudioInDeviceGain(_ gain: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#SetAudioInDeviceGain") }
	override func getAudioInDeviceGain() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioIn#GetAudioInDeviceGain") }
}
*/

class NnAudioDetail_IAudioInManagerForApplet: IpcService {
	func requestSuspendAudioIns(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#RequestSuspendAudioIns") }
	func requestResumeAudioIns(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#RequestResumeAudioIns") }
	func getAudioInsProcessMasterVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#GetAudioInsProcessMasterVolume") }
	func setAudioInsProcessMasterVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#SetAudioInsProcessMasterVolume") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendAudioIns(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeAudioIns(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getAudioInsProcessMasterVolume(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try setAudioInsProcessMasterVolume(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioInManagerForApplet: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioInManagerForApplet_Impl: NnAudioDetail_IAudioInManagerForApplet {
	override func requestSuspendAudioIns(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#RequestSuspendAudioIns") }
	override func requestResumeAudioIns(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#RequestResumeAudioIns") }
	override func getAudioInsProcessMasterVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#GetAudioInsProcessMasterVolume") }
	override func setAudioInsProcessMasterVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForApplet#SetAudioInsProcessMasterVolume") }
}
*/

class NnAudioDetail_IFinalOutputRecorder: IpcService {
	func getFinalOutputRecorderState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#GetFinalOutputRecorderState") }
	func startFinalOutputRecorder() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#StartFinalOutputRecorder") }
	func stopFinalOutputRecorder() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#StopFinalOutputRecorder") }
	func appendFinalOutputRecorderBuffer(_ _0: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#AppendFinalOutputRecorderBuffer") }
	func registerBufferEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#RegisterBufferEvent") }
	func getReleasedFinalOutputRecorderBuffer(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#GetReleasedFinalOutputRecorderBuffer") }
	func containsFinalOutputRecorderBuffer(_ _0: UInt64) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#ContainsFinalOutputRecorderBuffer") }
	func unknown7(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#Unknown7") }
	func appendFinalOutputRecorderBufferAuto(_ _0: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#AppendFinalOutputRecorderBufferAuto") }
	func getReleasedFinalOutputRecorderBufferAuto(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#GetReleasedFinalOutputRecorderBufferAuto") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getFinalOutputRecorderState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try startFinalOutputRecorder()
			om.initialize(0, 0, 0)
		
		case 2:
			try stopFinalOutputRecorder()
			om.initialize(0, 0, 0)
		
		case 3:
			try appendFinalOutputRecorderBuffer(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try registerBufferEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let (_0, _1) = try getReleasedFinalOutputRecorderBuffer(im.getBuffer(0x6, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 6:
			let ret = try containsFinalOutputRecorderBuffer(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			let ret = try unknown7(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8:
			try appendFinalOutputRecorderBufferAuto(im.getData(8) as UInt64, im.getBuffer(0x21, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 0)
		
		case 9:
			let (_0, _1) = try getReleasedFinalOutputRecorderBufferAuto(im.getBuffer(0x22, 0) as Buffer<NnAudio_AudioInBuffer>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		default:
			print("Unhandled command to nn::audio::detail::IFinalOutputRecorder: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IFinalOutputRecorder_Impl: NnAudioDetail_IFinalOutputRecorder {
	override func getFinalOutputRecorderState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#GetFinalOutputRecorderState") }
	override func startFinalOutputRecorder() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#StartFinalOutputRecorder") }
	override func stopFinalOutputRecorder() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#StopFinalOutputRecorder") }
	override func appendFinalOutputRecorderBuffer(_ _0: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#AppendFinalOutputRecorderBuffer") }
	override func registerBufferEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#RegisterBufferEvent") }
	override func getReleasedFinalOutputRecorderBuffer(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#GetReleasedFinalOutputRecorderBuffer") }
	override func containsFinalOutputRecorderBuffer(_ _0: UInt64) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#ContainsFinalOutputRecorderBuffer") }
	override func unknown7(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#Unknown7") }
	override func appendFinalOutputRecorderBufferAuto(_ _0: UInt64, _ _1: Buffer<NnAudio_AudioInBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#AppendFinalOutputRecorderBufferAuto") }
	override func getReleasedFinalOutputRecorderBufferAuto(_ _0: Buffer<NnAudio_AudioInBuffer>) throws -> (UInt32, UInt64) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorder#GetReleasedFinalOutputRecorderBufferAuto") }
}
*/

class NnAudioDetail_IAudioOutManagerForApplet: IpcService {
	func requestSuspendAudioOuts(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#RequestSuspendAudioOuts") }
	func requestResumeAudioOuts(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#RequestResumeAudioOuts") }
	func getAudioOutsProcessMasterVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#GetAudioOutsProcessMasterVolume") }
	func setAudioOutsProcessMasterVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#SetAudioOutsProcessMasterVolume") }
	func getAudioOutsProcessRecordVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#GetAudioOutsProcessRecordVolume") }
	func setAudioOutsProcessRecordVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#SetAudioOutsProcessRecordVolume") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendAudioOuts(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeAudioOuts(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getAudioOutsProcessMasterVolume(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try setAudioOutsProcessMasterVolume(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getAudioOutsProcessRecordVolume(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 5:
			try setAudioOutsProcessRecordVolume(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioOutManagerForApplet: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioOutManagerForApplet_Impl: NnAudioDetail_IAudioOutManagerForApplet {
	override func requestSuspendAudioOuts(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#RequestSuspendAudioOuts") }
	override func requestResumeAudioOuts(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#RequestResumeAudioOuts") }
	override func getAudioOutsProcessMasterVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#GetAudioOutsProcessMasterVolume") }
	override func setAudioOutsProcessMasterVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#SetAudioOutsProcessMasterVolume") }
	override func getAudioOutsProcessRecordVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#GetAudioOutsProcessRecordVolume") }
	override func setAudioOutsProcessRecordVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForApplet#SetAudioOutsProcessRecordVolume") }
}
*/

class NnAudioDetail_IFinalOutputRecorderManagerForApplet: IpcService {
	func requestSuspendFinalOutputRecorders(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForApplet#RequestSuspendFinalOutputRecorders") }
	func requestResumeFinalOutputRecorders(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForApplet#RequestResumeFinalOutputRecorders") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendFinalOutputRecorders(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeFinalOutputRecorders(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IFinalOutputRecorderManagerForApplet: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IFinalOutputRecorderManagerForApplet_Impl: NnAudioDetail_IFinalOutputRecorderManagerForApplet {
	override func requestSuspendFinalOutputRecorders(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForApplet#RequestSuspendFinalOutputRecorders") }
	override func requestResumeFinalOutputRecorders(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForApplet#RequestResumeFinalOutputRecorders") }
}
*/

class NnAudioDetail_IFinalOutputRecorderManagerForDebugger: IpcService {
	func requestSuspendForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForDebugger#RequestSuspendForDebug") }
	func requestResumeForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForDebugger#RequestResumeForDebug") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IFinalOutputRecorderManagerForDebugger: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IFinalOutputRecorderManagerForDebugger_Impl: NnAudioDetail_IFinalOutputRecorderManagerForDebugger {
	override func requestSuspendForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForDebugger#RequestSuspendForDebug") }
	override func requestResumeForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IFinalOutputRecorderManagerForDebugger#RequestResumeForDebug") }
}
*/

class NnAudioDetail_IAudioDebugManager: IpcService {
	func unknown0(_ _0: UInt32, _ _1: UInt64, _ _2: KObject) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown3") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getData(8) as UInt32, im.getData(16) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioDebugManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioDebugManager_Impl: NnAudioDetail_IAudioDebugManager {
	override func unknown0(_ _0: UInt32, _ _1: UInt64, _ _2: KObject) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown0") }
	override func unknown1() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown1") }
	override func unknown2() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown2") }
	override func unknown3() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioDebugManager#Unknown3") }
}
*/

class NnAudioDetail_IAudioRendererManager: IpcService {
	func openAudioRenderer(_ _0: NnAudioDetail_AudioRendererParameterInternal, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ _4: KObject, _ _5: KObject) throws -> NnAudioDetail_IAudioRenderer { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#OpenAudioRenderer") }
	func getWorkBufferSize(_ _0: NnAudioDetail_AudioRendererParameterInternal) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#GetWorkBufferSize") }
	func getAudioDeviceService(_ _0: NnApplet_AppletResourceUserId) throws -> NnAudioDetail_IAudioDevice { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#GetAudioDeviceService") }
	func openAudioRendererAuto(_ _0: NnAudioDetail_AudioRendererParameterInternal, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: Pid, _ _5: KObject) throws -> NnAudioDetail_IAudioRenderer { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#OpenAudioRendererAuto") }
	func getAudioDeviceServiceWithRevisionInfo(_ _0: NnApplet_AppletResourceUserId, _ _1: UInt32) throws -> NnAudioDetail_IAudioDevice { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#GetAudioDeviceServiceWithRevisionInfo") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openAudioRenderer(NnAudioDetail_AudioRendererParameterInternal(sampleRate: im.getData(8) as Int32, sampleCount: im.getData(12) as Int32, unknown8: im.getData(16) as Int32, mixCount: im.getData(20) as Int32, voiceCount: im.getData(24) as Int32, sinkCount: im.getData(28) as Int32, effectCount: im.getData(32) as Int32, performanceManagerCount: im.getData(36) as Int32, voiceDropEnable: im.getData(40) as Int32, splitterCount: im.getData(44) as Int32, splitterDestinationDataCount: im.getData(48) as Int32, unknown2C: im.getData(52) as Int32, revision: im.getData(56) as Int32), im.getData(64) as UInt64, im.getData(72) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(1)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getWorkBufferSize(NnAudioDetail_AudioRendererParameterInternal(sampleRate: im.getData(8) as Int32, sampleCount: im.getData(12) as Int32, unknown8: im.getData(16) as Int32, mixCount: im.getData(20) as Int32, voiceCount: im.getData(24) as Int32, sinkCount: im.getData(28) as Int32, effectCount: im.getData(32) as Int32, performanceManagerCount: im.getData(36) as Int32, voiceDropEnable: im.getData(40) as Int32, splitterCount: im.getData(44) as Int32, splitterDestinationDataCount: im.getData(48) as Int32, unknown2C: im.getData(52) as Int32, revision: im.getData(56) as Int32))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			let ret = try getAudioDeviceService(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try openAudioRendererAuto(NnAudioDetail_AudioRendererParameterInternal(sampleRate: im.getData(8) as Int32, sampleCount: im.getData(12) as Int32, unknown8: im.getData(16) as Int32, mixCount: im.getData(20) as Int32, voiceCount: im.getData(24) as Int32, sinkCount: im.getData(28) as Int32, effectCount: im.getData(32) as Int32, performanceManagerCount: im.getData(36) as Int32, voiceDropEnable: im.getData(40) as Int32, splitterCount: im.getData(44) as Int32, splitterDestinationDataCount: im.getData(48) as Int32, unknown2C: im.getData(52) as Int32, revision: im.getData(56) as Int32), im.getData(64) as UInt64, im.getData(72) as UInt64, im.getData(80) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try getAudioDeviceServiceWithRevisionInfo(im.getData(8) as UInt64, im.getData(16) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioRendererManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioRendererManager_Impl: NnAudioDetail_IAudioRendererManager {
	override func openAudioRenderer(_ _0: NnAudioDetail_AudioRendererParameterInternal, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ _4: KObject, _ _5: KObject) throws -> NnAudioDetail_IAudioRenderer { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#OpenAudioRenderer") }
	override func getWorkBufferSize(_ _0: NnAudioDetail_AudioRendererParameterInternal) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#GetWorkBufferSize") }
	override func getAudioDeviceService(_ _0: NnApplet_AppletResourceUserId) throws -> NnAudioDetail_IAudioDevice { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#GetAudioDeviceService") }
	override func openAudioRendererAuto(_ _0: NnAudioDetail_AudioRendererParameterInternal, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: Pid, _ _5: KObject) throws -> NnAudioDetail_IAudioRenderer { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#OpenAudioRendererAuto") }
	override func getAudioDeviceServiceWithRevisionInfo(_ _0: NnApplet_AppletResourceUserId, _ _1: UInt32) throws -> NnAudioDetail_IAudioDevice { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManager#GetAudioDeviceServiceWithRevisionInfo") }
}
*/

class NnAudioDetail_IAudioOut: IpcService {
	func getAudioOutState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetAudioOutState") }
	func startAudioOut() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#StartAudioOut") }
	func stopAudioOut() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#StopAudioOut") }
	func appendAudioOutBuffer(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioOutBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#AppendAudioOutBuffer") }
	func registerBufferEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#RegisterBufferEvent") }
	func getReleasedAudioOutBuffer(_ _0: Buffer<NnAudio_AudioOutBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetReleasedAudioOutBuffer") }
	func containsAudioOutBuffer(_ tag: UInt64) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#ContainsAudioOutBuffer") }
	func appendAudioOutBufferAuto(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioOutBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#AppendAudioOutBufferAuto") }
	func getReleasedAudioOutBufferAuto(_ _0: Buffer<NnAudio_AudioOutBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetReleasedAudioOutBufferAuto") }
	func getAudioOutBufferCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetAudioOutBufferCount") }
	func getAudioOutPlayedSampleCount() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetAudioOutPlayedSampleCount") }
	func flushAudioOutBuffers() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#FlushAudioOutBuffers") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getAudioOutState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try startAudioOut()
			om.initialize(0, 0, 0)
		
		case 2:
			try stopAudioOut()
			om.initialize(0, 0, 0)
		
		case 3:
			try appendAudioOutBuffer(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<NnAudio_AudioOutBuffer>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try registerBufferEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try getReleasedAudioOutBuffer(im.getBuffer(0x6, 0) as Buffer<NnAudio_AudioOutBuffer>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try containsAudioOutBuffer(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			try appendAudioOutBufferAuto(im.getData(8) as UInt64, im.getBuffer(0x21, 0) as Buffer<NnAudio_AudioOutBuffer>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getReleasedAudioOutBufferAuto(im.getBuffer(0x22, 0) as Buffer<NnAudio_AudioOutBuffer>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			let ret = try getAudioOutBufferCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			let ret = try getAudioOutPlayedSampleCount()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 11:
			let ret = try flushAudioOutBuffers()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioOut: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioOut_Impl: NnAudioDetail_IAudioOut {
	override func getAudioOutState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetAudioOutState") }
	override func startAudioOut() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#StartAudioOut") }
	override func stopAudioOut() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#StopAudioOut") }
	override func appendAudioOutBuffer(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioOutBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#AppendAudioOutBuffer") }
	override func registerBufferEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#RegisterBufferEvent") }
	override func getReleasedAudioOutBuffer(_ _0: Buffer<NnAudio_AudioOutBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetReleasedAudioOutBuffer") }
	override func containsAudioOutBuffer(_ tag: UInt64) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#ContainsAudioOutBuffer") }
	override func appendAudioOutBufferAuto(_ tag: UInt64, _ _1: Buffer<NnAudio_AudioOutBuffer>) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#AppendAudioOutBufferAuto") }
	override func getReleasedAudioOutBufferAuto(_ _0: Buffer<NnAudio_AudioOutBuffer>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetReleasedAudioOutBufferAuto") }
	override func getAudioOutBufferCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetAudioOutBufferCount") }
	override func getAudioOutPlayedSampleCount() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#GetAudioOutPlayedSampleCount") }
	override func flushAudioOutBuffers() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOut#FlushAudioOutBuffers") }
}
*/

class NnAudioDetail_IAudioOutManagerForDebugger: IpcService {
	func requestSuspendAudioOutsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForDebugger#RequestSuspendAudioOutsForDebug") }
	func requestResumeAudioOutsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForDebugger#RequestResumeAudioOutsForDebug") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendAudioOutsForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeAudioOutsForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioOutManagerForDebugger: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioOutManagerForDebugger_Impl: NnAudioDetail_IAudioOutManagerForDebugger {
	override func requestSuspendAudioOutsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForDebugger#RequestSuspendAudioOutsForDebug") }
	override func requestResumeAudioOutsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioOutManagerForDebugger#RequestResumeAudioOutsForDebug") }
}
*/

class NnAudioDetail_IAudioRendererManagerForApplet: IpcService {
	func requestSuspendAudioRenderers(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#RequestSuspendAudioRenderers") }
	func requestResumeAudioRenderers(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#RequestResumeAudioRenderers") }
	func getAudioRenderersProcessMasterVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#GetAudioRenderersProcessMasterVolume") }
	func setAudioRenderersProcessMasterVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#SetAudioRenderersProcessMasterVolume") }
	func registerAppletResourceUserId(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#RegisterAppletResourceUserId") }
	func unregisterAppletResourceUserId(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#UnregisterAppletResourceUserId") }
	func getAudioRenderersProcessRecordVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#GetAudioRenderersProcessRecordVolume") }
	func setAudioRenderersProcessRecordVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#SetAudioRenderersProcessRecordVolume") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendAudioRenderers(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeAudioRenderers(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getAudioRenderersProcessMasterVolume(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try setAudioRenderersProcessMasterVolume(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4:
			try registerAppletResourceUserId(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 5:
			try unregisterAppletResourceUserId(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getAudioRenderersProcessRecordVolume(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			try setAudioRenderersProcessRecordVolume(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioRendererManagerForApplet: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioRendererManagerForApplet_Impl: NnAudioDetail_IAudioRendererManagerForApplet {
	override func requestSuspendAudioRenderers(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#RequestSuspendAudioRenderers") }
	override func requestResumeAudioRenderers(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#RequestResumeAudioRenderers") }
	override func getAudioRenderersProcessMasterVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#GetAudioRenderersProcessMasterVolume") }
	override func setAudioRenderersProcessMasterVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#SetAudioRenderersProcessMasterVolume") }
	override func registerAppletResourceUserId(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#RegisterAppletResourceUserId") }
	override func unregisterAppletResourceUserId(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#UnregisterAppletResourceUserId") }
	override func getAudioRenderersProcessRecordVolume(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#GetAudioRenderersProcessRecordVolume") }
	override func setAudioRenderersProcessRecordVolume(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioRendererManagerForApplet#SetAudioRenderersProcessRecordVolume") }
}
*/

class NnAudioDetail_IAudioInManagerForDebugger: IpcService {
	func requestSuspendAudioInsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForDebugger#RequestSuspendAudioInsForDebug") }
	func requestResumeAudioInsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForDebugger#RequestResumeAudioInsForDebug") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestSuspendAudioInsForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1:
			try requestResumeAudioInsForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioInManagerForDebugger: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioInManagerForDebugger_Impl: NnAudioDetail_IAudioInManagerForDebugger {
	override func requestSuspendAudioInsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForDebugger#RequestSuspendAudioInsForDebug") }
	override func requestResumeAudioInsForDebug(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManagerForDebugger#RequestResumeAudioInsForDebug") }
}
*/

class NnAudioDetail_IAudioInManager: IpcService {
	func listAudioIns(_ names: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#ListAudioIns") }
	func openAudioIn(_ _0: UInt64, _ pid_copy: UInt64, _ _2: Pid, _ _3: KObject, _ nameIn: Buffer<UInt8>, _ nameOut: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioIn) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#OpenAudioIn") }
	func unknown2(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#Unknown2") }
	func openAudioInAuto(_ _0: UInt64, _ pid_copy: UInt64, _ _2: Pid, _ _3: KObject, _ _4: Buffer<UInt8>, _ name: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioIn) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#OpenAudioInAuto") }
	func listAudioInsAuto(_ names: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#ListAudioInsAuto") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try listAudioIns(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let (_0, _1, _2, _3, _4) = try openAudioIn(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
			om.setData(20, _3)
			om.move(0, _4)
		
		case 2:
			let ret = try unknown2(im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let (_0, _1, _2, _3, _4) = try openAudioInAuto(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x21, 0) as Buffer<UInt8>, im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
			om.setData(20, _3)
			om.move(0, _4)
		
		case 4:
			let ret = try listAudioInsAuto(im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::audio::detail::IAudioInManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_IAudioInManager_Impl: NnAudioDetail_IAudioInManager {
	override func listAudioIns(_ names: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#ListAudioIns") }
	override func openAudioIn(_ _0: UInt64, _ pid_copy: UInt64, _ _2: Pid, _ _3: KObject, _ nameIn: Buffer<UInt8>, _ nameOut: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioIn) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#OpenAudioIn") }
	override func unknown2(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#Unknown2") }
	override func openAudioInAuto(_ _0: UInt64, _ pid_copy: UInt64, _ _2: Pid, _ _3: KObject, _ _4: Buffer<UInt8>, _ name: Buffer<UInt8>) throws -> (sample_rate: UInt32, channel_count: UInt32, pcm_format: UInt32, UInt32, NnAudioDetail_IAudioIn) { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#OpenAudioInAuto") }
	override func listAudioInsAuto(_ names: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::IAudioInManager#ListAudioInsAuto") }
}
*/

class NnAudioDetail_ICodecController: IpcService {
	func initializeCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#InitializeCodecController") }
	func finalizeCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#FinalizeCodecController") }
	func sleepCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#SleepCodecController") }
	func wakeCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#WakeCodecController") }
	func setCodecVolume(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#SetCodecVolume") }
	func getCodecVolumeMax() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#GetCodecVolumeMax") }
	func getCodecVolumeMin() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#GetCodecVolumeMin") }
	func setCodecActiveTarget(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#SetCodecActiveTarget") }
	func getCodecActiveTarget() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#GetCodecActiveTarget") }
	func bindCodecHeadphoneMicJackInterrupt() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#BindCodecHeadphoneMicJackInterrupt") }
	func isCodecHeadphoneMicJackInserted() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#IsCodecHeadphoneMicJackInserted") }
	func clearCodecHeadphoneMicJackInterrupt() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#ClearCodecHeadphoneMicJackInterrupt") }
	func isCodecDeviceRequested() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#IsCodecDeviceRequested") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeCodecController()
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeCodecController()
			om.initialize(0, 0, 0)
		
		case 2:
			try sleepCodecController()
			om.initialize(0, 0, 0)
		
		case 3:
			try wakeCodecController()
			om.initialize(0, 0, 0)
		
		case 4:
			try setCodecVolume(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getCodecVolumeMax()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try getCodecVolumeMin()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			try setCodecActiveTarget(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getCodecActiveTarget()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			let ret = try bindCodecHeadphoneMicJackInterrupt()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 10:
			let ret = try isCodecHeadphoneMicJackInserted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 11:
			try clearCodecHeadphoneMicJackInterrupt()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try isCodecDeviceRequested()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::audio::detail::ICodecController: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioDetail_ICodecController_Impl: NnAudioDetail_ICodecController {
	override func initializeCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#InitializeCodecController") }
	override func finalizeCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#FinalizeCodecController") }
	override func sleepCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#SleepCodecController") }
	override func wakeCodecController() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#WakeCodecController") }
	override func setCodecVolume(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#SetCodecVolume") }
	override func getCodecVolumeMax() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#GetCodecVolumeMax") }
	override func getCodecVolumeMin() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#GetCodecVolumeMin") }
	override func setCodecActiveTarget(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#SetCodecActiveTarget") }
	override func getCodecActiveTarget() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#GetCodecActiveTarget") }
	override func bindCodecHeadphoneMicJackInterrupt() throws -> KObject { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#BindCodecHeadphoneMicJackInterrupt") }
	override func isCodecHeadphoneMicJackInserted() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#IsCodecHeadphoneMicJackInserted") }
	override func clearCodecHeadphoneMicJackInterrupt() throws { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#ClearCodecHeadphoneMicJackInterrupt") }
	override func isCodecDeviceRequested() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audio::detail::nn::audio::detail::ICodecController#IsCodecDeviceRequested") }
}
*/
