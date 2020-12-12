class NnVisrvSf_IApplicationDisplayService: IpcService {
	func getRelayService() throws -> NnsHosbinder_IHOSBinderDriver { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetRelayService") }
	func getSystemDisplayService() throws -> NnVisrvSf_ISystemDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetSystemDisplayService") }
	func getManagerDisplayService() throws -> NnVisrvSf_IManagerDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetManagerDisplayService") }
	func getIndirectDisplayTransactionService() throws -> NnsHosbinder_IHOSBinderDriver { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectDisplayTransactionService") }
	func listDisplays(_ _0: Buffer<NnVi_DisplayInfo>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#ListDisplays") }
	func openDisplay(_ _0: NnVi_DisplayName) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenDisplay") }
	func openDefaultDisplay() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenDefaultDisplay") }
	func closeDisplay(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CloseDisplay") }
	func setDisplayEnabled(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#SetDisplayEnabled") }
	func getDisplayResolution(_ _0: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayResolution") }
	func openLayer(_ _0: NnVi_DisplayName, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ _4: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenLayer") }
	func closeLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CloseLayer") }
	func createStrayLayer(_ _0: UInt32, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CreateStrayLayer") }
	func destroyStrayLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#DestroyStrayLayer") }
	func setLayerScalingMode(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#SetLayerScalingMode") }
	func convertScalingMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#ConvertScalingMode") }
	func getIndirectLayerImageMap(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageMap") }
	func getIndirectLayerImageCropMap(_ _0: Float32, _ _1: Float32, _ _2: Float32, _ _3: Float32, _ _4: UInt64, _ _5: UInt64, _ _6: UInt64, _ _7: NnApplet_AppletResourceUserId, _ _8: Pid, _ _9: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageCropMap") }
	func getIndirectLayerImageRequiredMemoryInfo(_ _0: UInt64, _ _1: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageRequiredMemoryInfo") }
	func getDisplayVsyncEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayVsyncEvent") }
	func getDisplayVsyncEventForDebug(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayVsyncEventForDebug") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 100:
			let ret = try getRelayService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try getSystemDisplayService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 102:
			let ret = try getManagerDisplayService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 103:
			let ret = try getIndirectDisplayTransactionService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1000:
			let ret = try listDisplays(im.getBuffer(0x6, 0) as Buffer<NnVi_DisplayInfo>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1010:
			let ret = try openDisplay(im.getBytes(8, 0x40))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1011:
			let ret = try openDefaultDisplay()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1020:
			try closeDisplay(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1101:
			try setDisplayEnabled(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1102:
			let (_0, _1) = try getDisplayResolution(im.getData(8) as UInt64)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 2020:
			let ret = try openLayer(im.getBytes(8, 0x40), im.getData(72) as UInt64, im.getData(80) as UInt64, im.pid, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2021:
			try closeLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2030:
			let (_0, _1) = try createStrayLayer(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 2031:
			try destroyStrayLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2101:
			try setLayerScalingMode(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2102:
			let ret = try convertScalingMode(nil)
			om.initialize(0, 0, 0)
		
		case 2450:
			let (_0, _1) = try getIndirectLayerImageMap(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64, im.pid, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 2451:
			let (_0, _1) = try getIndirectLayerImageCropMap(im.getData(8) as Float32, im.getData(12) as Float32, im.getData(16) as Float32, im.getData(20) as Float32, im.getData(24) as UInt64, im.getData(32) as UInt64, im.getData(40) as UInt64, im.getData(48) as UInt64, im.pid, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 2460:
			let (_0, _1) = try getIndirectLayerImageRequiredMemoryInfo(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 5202:
			let ret = try getDisplayVsyncEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5203:
			let ret = try getDisplayVsyncEventForDebug(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::visrv::sf::IApplicationDisplayService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnVisrvSf_IApplicationDisplayService_Impl: NnVisrvSf_IApplicationDisplayService {
	override func getRelayService() throws -> NnsHosbinder_IHOSBinderDriver { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetRelayService") }
	override func getSystemDisplayService() throws -> NnVisrvSf_ISystemDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetSystemDisplayService") }
	override func getManagerDisplayService() throws -> NnVisrvSf_IManagerDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetManagerDisplayService") }
	override func getIndirectDisplayTransactionService() throws -> NnsHosbinder_IHOSBinderDriver { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectDisplayTransactionService") }
	override func listDisplays(_ _0: Buffer<NnVi_DisplayInfo>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#ListDisplays") }
	override func openDisplay(_ _0: NnVi_DisplayName) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenDisplay") }
	override func openDefaultDisplay() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenDefaultDisplay") }
	override func closeDisplay(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CloseDisplay") }
	override func setDisplayEnabled(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#SetDisplayEnabled") }
	override func getDisplayResolution(_ _0: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayResolution") }
	override func openLayer(_ _0: NnVi_DisplayName, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid, _ _4: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#OpenLayer") }
	override func closeLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CloseLayer") }
	override func createStrayLayer(_ _0: UInt32, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#CreateStrayLayer") }
	override func destroyStrayLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#DestroyStrayLayer") }
	override func setLayerScalingMode(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#SetLayerScalingMode") }
	override func convertScalingMode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#ConvertScalingMode") }
	override func getIndirectLayerImageMap(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid, _ _5: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageMap") }
	override func getIndirectLayerImageCropMap(_ _0: Float32, _ _1: Float32, _ _2: Float32, _ _3: Float32, _ _4: UInt64, _ _5: UInt64, _ _6: UInt64, _ _7: NnApplet_AppletResourceUserId, _ _8: Pid, _ _9: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageCropMap") }
	override func getIndirectLayerImageRequiredMemoryInfo(_ _0: UInt64, _ _1: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetIndirectLayerImageRequiredMemoryInfo") }
	override func getDisplayVsyncEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayVsyncEvent") }
	override func getDisplayVsyncEventForDebug(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationDisplayService#GetDisplayVsyncEventForDebug") }
}
*/

class NnVisrvSf_IManagerDisplayService: IpcService {
	func allocateProcessHeapBlock(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AllocateProcessHeapBlock") }
	func freeProcessHeapBlock(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#FreeProcessHeapBlock") }
	func getDisplayResolution(_ _0: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayResolution") }
	func createManagedLayer(_ _0: UInt32, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateManagedLayer") }
	func destroyManagedLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyManagedLayer") }
	func createIndirectLayer() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateIndirectLayer") }
	func destroyIndirectLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyIndirectLayer") }
	func createIndirectProducerEndPoint(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateIndirectProducerEndPoint") }
	func destroyIndirectProducerEndPoint(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyIndirectProducerEndPoint") }
	func createIndirectConsumerEndPoint(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateIndirectConsumerEndPoint") }
	func destroyIndirectConsumerEndPoint(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyIndirectConsumerEndPoint") }
	func acquireLayerTexturePresentingEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AcquireLayerTexturePresentingEvent") }
	func releaseLayerTexturePresentingEvent(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ReleaseLayerTexturePresentingEvent") }
	func getDisplayHotplugEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayHotplugEvent") }
	func getDisplayHotplugState(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayHotplugState") }
	func getCompositorErrorInfo(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<NnVi_CompositorError>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetCompositorErrorInfo") }
	func getDisplayErrorEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayErrorEvent") }
	func setDisplayAlpha(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDisplayAlpha") }
	func setDisplayLayerStack(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDisplayLayerStack") }
	func setDisplayPowerState(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDisplayPowerState") }
	func setDefaultDisplay(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDefaultDisplay") }
	func addToLayerStack(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AddToLayerStack") }
	func removeFromLayerStack(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#RemoveFromLayerStack") }
	func setLayerVisibility(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetLayerVisibility") }
	func setLayerConfig(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetLayerConfig") }
	func attachLayerPresentationTracer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AttachLayerPresentationTracer") }
	func detachLayerPresentationTracer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DetachLayerPresentationTracer") }
	func startLayerPresentationRecording(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StartLayerPresentationRecording") }
	func stopLayerPresentationRecording(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StopLayerPresentationRecording") }
	func startLayerPresentationFenceWait(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StartLayerPresentationFenceWait") }
	func stopLayerPresentationFenceWait(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StopLayerPresentationFenceWait") }
	func getLayerPresentationAllFencesExpiredEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetLayerPresentationAllFencesExpiredEvent") }
	func setContentVisibility(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetContentVisibility") }
	func setConductorLayer(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetConductorLayer") }
	func setIndirectProducerFlipOffset(_ _0: UInt64, _ _1: UInt64, _ _2: Nn_TimeSpan) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetIndirectProducerFlipOffset") }
	func createSharedBufferStaticStorage(_ _0: UInt64, _ _1: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> NnViFbshare_SharedBufferHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedBufferStaticStorage") }
	func createSharedBufferTransferMemory(_ _0: UInt64, _ _1: KObject, _ _2: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> NnViFbshare_SharedBufferHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedBufferTransferMemory") }
	func destroySharedBuffer(_ _0: NnViFbshare_SharedBufferHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroySharedBuffer") }
	func bindSharedLowLevelLayerToManagedLayer(_ _0: NnVi_DisplayName, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#BindSharedLowLevelLayerToManagedLayer") }
	func bindSharedLowLevelLayerToIndirectLayer(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#BindSharedLowLevelLayerToIndirectLayer") }
	func unbindSharedLowLevelLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#UnbindSharedLowLevelLayer") }
	func connectSharedLowLevelLayerToSharedBuffer(_ _0: UInt64, _ _1: NnViFbshare_SharedBufferHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ConnectSharedLowLevelLayerToSharedBuffer") }
	func disconnectSharedLowLevelLayerFromSharedBuffer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DisconnectSharedLowLevelLayerFromSharedBuffer") }
	func createSharedLayer(_ _0: NnApplet_AppletResourceUserId) throws -> NnViFbshare_SharedLayerHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedLayer") }
	func destroySharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroySharedLayer") }
	func attachSharedLayerToLowLevelLayer(_ _0: NnViFbshare_SharedLayerTextureIndexList, _ _1: NnViFbshare_SharedLayerHandle, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AttachSharedLayerToLowLevelLayer") }
	func forceDetachSharedLayerFromLowLevelLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ForceDetachSharedLayerFromLowLevelLayer") }
	func startDetachSharedLayerFromLowLevelLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StartDetachSharedLayerFromLowLevelLayer") }
	func finishDetachSharedLayerFromLowLevelLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#FinishDetachSharedLayerFromLowLevelLayer") }
	func getSharedLayerDetachReadyEvent(_ _0: NnViFbshare_SharedLayerHandle) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedLayerDetachReadyEvent") }
	func getSharedLowLevelLayerSynchronizedEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedLowLevelLayerSynchronizedEvent") }
	func checkSharedLowLevelLayerSynchronized(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CheckSharedLowLevelLayerSynchronized") }
	func registerSharedBufferImporterAruid(_ _0: NnViFbshare_SharedBufferHandle, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#RegisterSharedBufferImporterAruid") }
	func unregisterSharedBufferImporterAruid(_ _0: NnViFbshare_SharedBufferHandle, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#UnregisterSharedBufferImporterAruid") }
	func createSharedBufferProcessHeap(_ _0: UInt64, _ _1: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> NnViFbshare_SharedBufferHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedBufferProcessHeap") }
	func getSharedLayerLayerStacks(_ _0: NnViFbshare_SharedLayerHandle) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedLayerLayerStacks") }
	func setSharedLayerLayerStacks(_ _0: UInt32, _ _1: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetSharedLayerLayerStacks") }
	func presentDetachedSharedFrameBufferToLowLevelLayer(_ _0: NnViFbshare_SharedBufferHandle, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#PresentDetachedSharedFrameBufferToLowLevelLayer") }
	func fillDetachedSharedFrameBufferColor(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: UInt32, _ _5: NnViFbshare_SharedBufferHandle, _ _6: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#FillDetachedSharedFrameBufferColor") }
	func getDetachedSharedFrameBufferImage(_ _0: NnViFbshare_SharedBufferHandle, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDetachedSharedFrameBufferImage") }
	func setDetachedSharedFrameBufferImage(_ _0: UInt32, _ _1: NnViFbshare_SharedBufferHandle, _ _2: UInt64, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDetachedSharedFrameBufferImage") }
	func copyDetachedSharedFrameBufferImage(_ _0: UInt32, _ _1: UInt32, _ _2: NnViFbshare_SharedBufferHandle, _ _3: UInt64, _ _4: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CopyDetachedSharedFrameBufferImage") }
	func setDetachedSharedFrameBufferSubImage(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: UInt32, _ _5: UInt32, _ _6: NnViFbshare_SharedBufferHandle, _ _7: UInt64, _ _8: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDetachedSharedFrameBufferSubImage") }
	func getSharedFrameBufferContentParameter(_ _0: NnViFbshare_SharedBufferHandle, _ _1: UInt64) throws -> (UInt32, NnVi_CropRegion, UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedFrameBufferContentParameter") }
	func expandStartupLogoOnSharedFrameBuffer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ExpandStartupLogoOnSharedFrameBuffer") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 200:
			let ret = try allocateProcessHeapBlock(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 201:
			try freeProcessHeapBlock(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1102:
			let (_0, _1) = try getDisplayResolution(im.getData(8) as UInt64)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 2010:
			let ret = try createManagedLayer(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2011:
			try destroyManagedLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2050:
			let ret = try createIndirectLayer()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2051:
			try destroyIndirectLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2052:
			let ret = try createIndirectProducerEndPoint(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2053:
			try destroyIndirectProducerEndPoint(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2054:
			let ret = try createIndirectConsumerEndPoint(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2055:
			try destroyIndirectConsumerEndPoint(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2300:
			let ret = try acquireLayerTexturePresentingEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2301:
			try releaseLayerTexturePresentingEvent(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2302:
			let ret = try getDisplayHotplugEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 2402:
			let ret = try getDisplayHotplugState(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2501:
			let ret = try getCompositorErrorInfo(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x16, 0) as Buffer<NnVi_CompositorError>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2601:
			let ret = try getDisplayErrorEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 4201:
			try setDisplayAlpha(im.getData(8) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4203:
			try setDisplayLayerStack(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4205:
			try setDisplayPowerState(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4206:
			try setDefaultDisplay(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6000:
			try addToLayerStack(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6001:
			try removeFromLayerStack(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6002:
			try setLayerVisibility(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6003:
			let ret = try setLayerConfig(nil)
			om.initialize(0, 0, 0)
		
		case 6004:
			let ret = try attachLayerPresentationTracer(nil)
			om.initialize(0, 0, 0)
		
		case 6005:
			let ret = try detachLayerPresentationTracer(nil)
			om.initialize(0, 0, 0)
		
		case 6006:
			let ret = try startLayerPresentationRecording(nil)
			om.initialize(0, 0, 0)
		
		case 6007:
			let ret = try stopLayerPresentationRecording(nil)
			om.initialize(0, 0, 0)
		
		case 6008:
			let ret = try startLayerPresentationFenceWait(nil)
			om.initialize(0, 0, 0)
		
		case 6009:
			let ret = try stopLayerPresentationFenceWait(nil)
			om.initialize(0, 0, 0)
		
		case 6010:
			let ret = try getLayerPresentationAllFencesExpiredEvent(nil)
			om.initialize(0, 0, 0)
		
		case 7000:
			try setContentVisibility(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 8000:
			try setConductorLayer(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8100:
			try setIndirectProducerFlipOffset(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8200:
			let ret = try createSharedBufferStaticStorage(im.getData(8) as UInt64, im.getBuffer(0x15, 0) as Buffer<NnViFbshare_SharedMemoryPoolLayout>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8201:
			let ret = try createSharedBufferTransferMemory(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x15, 0) as Buffer<NnViFbshare_SharedMemoryPoolLayout>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8202:
			try destroySharedBuffer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8203:
			try bindSharedLowLevelLayerToManagedLayer(im.getBytes(8, 0x40), im.getData(72) as UInt64, im.getData(80) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 8204:
			try bindSharedLowLevelLayerToIndirectLayer(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 8207:
			try unbindSharedLowLevelLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8208:
			try connectSharedLowLevelLayerToSharedBuffer(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8209:
			try disconnectSharedLowLevelLayerFromSharedBuffer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8210:
			let ret = try createSharedLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8211:
			try destroySharedLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8216:
			try attachSharedLayerToLowLevelLayer(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.getData(32) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8217:
			try forceDetachSharedLayerFromLowLevelLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8218:
			try startDetachSharedLayerFromLowLevelLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8219:
			try finishDetachSharedLayerFromLowLevelLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8220:
			let ret = try getSharedLayerDetachReadyEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 8221:
			let ret = try getSharedLowLevelLayerSynchronizedEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 8222:
			let ret = try checkSharedLowLevelLayerSynchronized(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8223:
			try registerSharedBufferImporterAruid(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8224:
			try unregisterSharedBufferImporterAruid(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8227:
			let ret = try createSharedBufferProcessHeap(im.getData(8) as UInt64, im.getBuffer(0x15, 0) as Buffer<NnViFbshare_SharedMemoryPoolLayout>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8228:
			let ret = try getSharedLayerLayerStacks(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 8229:
			try setSharedLayerLayerStacks(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8291:
			try presentDetachedSharedFrameBufferToLowLevelLayer(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8292:
			try fillDetachedSharedFrameBufferColor(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32, im.getData(24) as UInt32, im.getData(32) as UInt64, im.getData(40) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8293:
			let ret = try getDetachedSharedFrameBufferImage(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 8294:
			try setDetachedSharedFrameBufferImage(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8295:
			try copyDetachedSharedFrameBufferImage(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8296:
			try setDetachedSharedFrameBufferSubImage(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32, im.getData(24) as UInt32, im.getData(28) as UInt32, im.getData(32) as UInt64, im.getData(40) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8297:
			let (_0, _1, _2, _3, _4) = try getSharedFrameBufferContentParameter(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 32)
			om.setData(8, _0)
			if _1.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(12, _1)
			om.setData(28, _2)
			om.setData(32, _3)
			om.setData(36, _4)
		
		case 8298:
			let ret = try expandStartupLogoOnSharedFrameBuffer(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::visrv::sf::IManagerDisplayService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnVisrvSf_IManagerDisplayService_Impl: NnVisrvSf_IManagerDisplayService {
	override func allocateProcessHeapBlock(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AllocateProcessHeapBlock") }
	override func freeProcessHeapBlock(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#FreeProcessHeapBlock") }
	override func getDisplayResolution(_ _0: UInt64) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayResolution") }
	override func createManagedLayer(_ _0: UInt32, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateManagedLayer") }
	override func destroyManagedLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyManagedLayer") }
	override func createIndirectLayer() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateIndirectLayer") }
	override func destroyIndirectLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyIndirectLayer") }
	override func createIndirectProducerEndPoint(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateIndirectProducerEndPoint") }
	override func destroyIndirectProducerEndPoint(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyIndirectProducerEndPoint") }
	override func createIndirectConsumerEndPoint(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateIndirectConsumerEndPoint") }
	override func destroyIndirectConsumerEndPoint(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroyIndirectConsumerEndPoint") }
	override func acquireLayerTexturePresentingEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AcquireLayerTexturePresentingEvent") }
	override func releaseLayerTexturePresentingEvent(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ReleaseLayerTexturePresentingEvent") }
	override func getDisplayHotplugEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayHotplugEvent") }
	override func getDisplayHotplugState(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayHotplugState") }
	override func getCompositorErrorInfo(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<NnVi_CompositorError>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetCompositorErrorInfo") }
	override func getDisplayErrorEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDisplayErrorEvent") }
	override func setDisplayAlpha(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDisplayAlpha") }
	override func setDisplayLayerStack(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDisplayLayerStack") }
	override func setDisplayPowerState(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDisplayPowerState") }
	override func setDefaultDisplay(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDefaultDisplay") }
	override func addToLayerStack(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AddToLayerStack") }
	override func removeFromLayerStack(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#RemoveFromLayerStack") }
	override func setLayerVisibility(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetLayerVisibility") }
	override func setLayerConfig(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetLayerConfig") }
	override func attachLayerPresentationTracer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AttachLayerPresentationTracer") }
	override func detachLayerPresentationTracer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DetachLayerPresentationTracer") }
	override func startLayerPresentationRecording(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StartLayerPresentationRecording") }
	override func stopLayerPresentationRecording(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StopLayerPresentationRecording") }
	override func startLayerPresentationFenceWait(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StartLayerPresentationFenceWait") }
	override func stopLayerPresentationFenceWait(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StopLayerPresentationFenceWait") }
	override func getLayerPresentationAllFencesExpiredEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetLayerPresentationAllFencesExpiredEvent") }
	override func setContentVisibility(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetContentVisibility") }
	override func setConductorLayer(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetConductorLayer") }
	override func setIndirectProducerFlipOffset(_ _0: UInt64, _ _1: UInt64, _ _2: Nn_TimeSpan) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetIndirectProducerFlipOffset") }
	override func createSharedBufferStaticStorage(_ _0: UInt64, _ _1: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> NnViFbshare_SharedBufferHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedBufferStaticStorage") }
	override func createSharedBufferTransferMemory(_ _0: UInt64, _ _1: KObject, _ _2: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> NnViFbshare_SharedBufferHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedBufferTransferMemory") }
	override func destroySharedBuffer(_ _0: NnViFbshare_SharedBufferHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroySharedBuffer") }
	override func bindSharedLowLevelLayerToManagedLayer(_ _0: NnVi_DisplayName, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#BindSharedLowLevelLayerToManagedLayer") }
	override func bindSharedLowLevelLayerToIndirectLayer(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#BindSharedLowLevelLayerToIndirectLayer") }
	override func unbindSharedLowLevelLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#UnbindSharedLowLevelLayer") }
	override func connectSharedLowLevelLayerToSharedBuffer(_ _0: UInt64, _ _1: NnViFbshare_SharedBufferHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ConnectSharedLowLevelLayerToSharedBuffer") }
	override func disconnectSharedLowLevelLayerFromSharedBuffer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DisconnectSharedLowLevelLayerFromSharedBuffer") }
	override func createSharedLayer(_ _0: NnApplet_AppletResourceUserId) throws -> NnViFbshare_SharedLayerHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedLayer") }
	override func destroySharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#DestroySharedLayer") }
	override func attachSharedLayerToLowLevelLayer(_ _0: NnViFbshare_SharedLayerTextureIndexList, _ _1: NnViFbshare_SharedLayerHandle, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#AttachSharedLayerToLowLevelLayer") }
	override func forceDetachSharedLayerFromLowLevelLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ForceDetachSharedLayerFromLowLevelLayer") }
	override func startDetachSharedLayerFromLowLevelLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#StartDetachSharedLayerFromLowLevelLayer") }
	override func finishDetachSharedLayerFromLowLevelLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#FinishDetachSharedLayerFromLowLevelLayer") }
	override func getSharedLayerDetachReadyEvent(_ _0: NnViFbshare_SharedLayerHandle) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedLayerDetachReadyEvent") }
	override func getSharedLowLevelLayerSynchronizedEvent(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedLowLevelLayerSynchronizedEvent") }
	override func checkSharedLowLevelLayerSynchronized(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CheckSharedLowLevelLayerSynchronized") }
	override func registerSharedBufferImporterAruid(_ _0: NnViFbshare_SharedBufferHandle, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#RegisterSharedBufferImporterAruid") }
	override func unregisterSharedBufferImporterAruid(_ _0: NnViFbshare_SharedBufferHandle, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#UnregisterSharedBufferImporterAruid") }
	override func createSharedBufferProcessHeap(_ _0: UInt64, _ _1: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> NnViFbshare_SharedBufferHandle { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CreateSharedBufferProcessHeap") }
	override func getSharedLayerLayerStacks(_ _0: NnViFbshare_SharedLayerHandle) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedLayerLayerStacks") }
	override func setSharedLayerLayerStacks(_ _0: UInt32, _ _1: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetSharedLayerLayerStacks") }
	override func presentDetachedSharedFrameBufferToLowLevelLayer(_ _0: NnViFbshare_SharedBufferHandle, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#PresentDetachedSharedFrameBufferToLowLevelLayer") }
	override func fillDetachedSharedFrameBufferColor(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: UInt32, _ _5: NnViFbshare_SharedBufferHandle, _ _6: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#FillDetachedSharedFrameBufferColor") }
	override func getDetachedSharedFrameBufferImage(_ _0: NnViFbshare_SharedBufferHandle, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetDetachedSharedFrameBufferImage") }
	override func setDetachedSharedFrameBufferImage(_ _0: UInt32, _ _1: NnViFbshare_SharedBufferHandle, _ _2: UInt64, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDetachedSharedFrameBufferImage") }
	override func copyDetachedSharedFrameBufferImage(_ _0: UInt32, _ _1: UInt32, _ _2: NnViFbshare_SharedBufferHandle, _ _3: UInt64, _ _4: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#CopyDetachedSharedFrameBufferImage") }
	override func setDetachedSharedFrameBufferSubImage(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: UInt32, _ _5: UInt32, _ _6: NnViFbshare_SharedBufferHandle, _ _7: UInt64, _ _8: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#SetDetachedSharedFrameBufferSubImage") }
	override func getSharedFrameBufferContentParameter(_ _0: NnViFbshare_SharedBufferHandle, _ _1: UInt64) throws -> (UInt32, NnVi_CropRegion, UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#GetSharedFrameBufferContentParameter") }
	override func expandStartupLogoOnSharedFrameBuffer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerDisplayService#ExpandStartupLogoOnSharedFrameBuffer") }
}
*/

class NnVisrvSf_IApplicationRootService: IpcService {
	func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationRootService#GetDisplayService") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getDisplayService(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::visrv::sf::IApplicationRootService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnVisrvSf_IApplicationRootService_Impl: NnVisrvSf_IApplicationRootService {
	override func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IApplicationRootService#GetDisplayService") }
}
*/

class NnVisrvSf_ISystemDisplayService: IpcService {
	func getZOrderCountMin(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetZOrderCountMin") }
	func getZOrderCountMax(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetZOrderCountMax") }
	func getDisplayLogicalResolution(_ _0: UInt64) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayLogicalResolution") }
	func setDisplayMagnification(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayMagnification") }
	func setLayerPosition(_ _0: Float32, _ _1: Float32, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerPosition") }
	func setLayerSize(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerSize") }
	func getLayerZ(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetLayerZ") }
	func setLayerZ(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerZ") }
	func setLayerVisibility(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerVisibility") }
	func setLayerAlpha(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerAlpha") }
	func createStrayLayer(_ _0: UInt32, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CreateStrayLayer") }
	func openIndirectLayer(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid, _ _3: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#OpenIndirectLayer") }
	func closeIndirectLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CloseIndirectLayer") }
	func flipIndirectLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#FlipIndirectLayer") }
	func listDisplayModes(_ _0: UInt64, _ _1: Buffer<NnVi_DisplayModeInfo>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ListDisplayModes") }
	func listDisplayRgbRanges(_ _0: UInt64, _ _1: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ListDisplayRgbRanges") }
	func listDisplayContentTypes(_ _0: UInt64, _ _1: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ListDisplayContentTypes") }
	func getDisplayMode(_ _0: UInt64) throws -> NnVi_DisplayModeInfo { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayMode") }
	func setDisplayMode(_ _0: UInt64, _ _1: NnVi_DisplayModeInfo) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayMode") }
	func getDisplayUnderscan(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayUnderscan") }
	func setDisplayUnderscan(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayUnderscan") }
	func getDisplayContentType(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayContentType") }
	func setDisplayContentType(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayContentType") }
	func getDisplayRgbRange(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayRgbRange") }
	func setDisplayRgbRange(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayRgbRange") }
	func getDisplayCmuMode(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayCmuMode") }
	func setDisplayCmuMode(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayCmuMode") }
	func getDisplayContrastRatio(_ _0: UInt64) throws -> Float32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayContrastRatio") }
	func setDisplayContrastRatio(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayContrastRatio") }
	func getDisplayGamma(_ _0: UInt64) throws -> Float32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayGamma") }
	func setDisplayGamma(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayGamma") }
	func getDisplayCmuLuma(_ _0: UInt64) throws -> Float32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayCmuLuma") }
	func setDisplayCmuLuma(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayCmuLuma") }
	func getSharedBufferMemoryHandleId(_ _0: NnViFbshare_SharedBufferHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid, _ _3: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> (NnViNative_NativeMemoryHandleId, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetSharedBufferMemoryHandleId") }
	func openSharedLayer(_ _0: NnViFbshare_SharedLayerHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#OpenSharedLayer") }
	func closeSharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CloseSharedLayer") }
	func connectSharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ConnectSharedLayer") }
	func disconnectSharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#DisconnectSharedLayer") }
	func acquireSharedFrameBuffer(_ _0: NnViFbshare_SharedLayerHandle) throws -> (NnViNative_NativeSync, NnViFbshare_SharedLayerTextureIndexList, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#AcquireSharedFrameBuffer") }
	func presentSharedFrameBuffer(_ _0: NnViNative_NativeSync, _ _1: NnVi_CropRegion, _ _2: UInt32, _ _3: UInt32, _ _4: NnViFbshare_SharedLayerHandle, _ _5: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#PresentSharedFrameBuffer") }
	func getSharedFrameBufferAcquirableEvent(_ _0: NnViFbshare_SharedLayerHandle) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetSharedFrameBufferAcquirableEvent") }
	func fillSharedFrameBufferColor(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: NnViFbshare_SharedLayerHandle, _ _5: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#FillSharedFrameBufferColor") }
	func cancelSharedFrameBuffer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CancelSharedFrameBuffer") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1200:
			let ret = try getZOrderCountMin(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1202:
			let ret = try getZOrderCountMax(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1203:
			let (_0, _1) = try getDisplayLogicalResolution(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 1204:
			try setDisplayMagnification(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2201:
			try setLayerPosition(im.getData(8) as Float32, im.getData(12) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2203:
			try setLayerSize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2204:
			let ret = try getLayerZ(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2205:
			try setLayerZ(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2207:
			try setLayerVisibility(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2209:
			try setLayerAlpha(im.getData(8) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2312:
			let (_0, _1) = try createStrayLayer(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 2400:
			let ret = try openIndirectLayer(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2401:
			try closeIndirectLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2402:
			try flipIndirectLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3000:
			let ret = try listDisplayModes(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<NnVi_DisplayModeInfo>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3001:
			let ret = try listDisplayRgbRanges(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt32>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3002:
			let ret = try listDisplayContentTypes(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt32>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3200:
			let ret = try getDisplayMode(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3201:
			try setDisplayMode(im.getData(8) as UInt64, nil)
			om.initialize(0, 0, 0)
		
		case 3202:
			let ret = try getDisplayUnderscan(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3203:
			try setDisplayUnderscan(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3204:
			let ret = try getDisplayContentType(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3205:
			try setDisplayContentType(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3206:
			let ret = try getDisplayRgbRange(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3207:
			try setDisplayRgbRange(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3208:
			let ret = try getDisplayCmuMode(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3209:
			try setDisplayCmuMode(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3210:
			let ret = try getDisplayContrastRatio(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3211:
			try setDisplayContrastRatio(im.getData(8) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3214:
			let ret = try getDisplayGamma(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3215:
			try setDisplayGamma(im.getData(8) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 3216:
			let ret = try getDisplayCmuLuma(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3217:
			try setDisplayCmuLuma(im.getData(8) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8225:
			let (_0, _1) = try getSharedBufferMemoryHandleId(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x16, 0) as Buffer<NnViFbshare_SharedMemoryPoolLayout>)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 8250:
			try openSharedLayer(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 8251:
			try closeSharedLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8252:
			try connectSharedLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8253:
			try disconnectSharedLayer(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8254:
			let (_0, _1, _2) = try acquireSharedFrameBuffer(im.getData(8) as UInt64)
			om.initialize(0, 0, 64)
			if _0.count != 0x24 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			if _1.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(44, _1)
			om.setData(64, _2)
		
		case 8255:
			try presentSharedFrameBuffer(im.getBytes(8, 0x24), im.getBytes(44, 0x10), im.getData(60) as UInt32, im.getData(64) as UInt32, im.getData(72) as UInt64, im.getData(80) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8256:
			let ret = try getSharedFrameBufferAcquirableEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 8257:
			try fillSharedFrameBufferColor(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32, im.getData(24) as UInt64, im.getData(32) as UInt64)
			om.initialize(0, 0, 0)
		
		case 8258:
			let ret = try cancelSharedFrameBuffer(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::visrv::sf::ISystemDisplayService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnVisrvSf_ISystemDisplayService_Impl: NnVisrvSf_ISystemDisplayService {
	override func getZOrderCountMin(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetZOrderCountMin") }
	override func getZOrderCountMax(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetZOrderCountMax") }
	override func getDisplayLogicalResolution(_ _0: UInt64) throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayLogicalResolution") }
	override func setDisplayMagnification(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayMagnification") }
	override func setLayerPosition(_ _0: Float32, _ _1: Float32, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerPosition") }
	override func setLayerSize(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerSize") }
	override func getLayerZ(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetLayerZ") }
	override func setLayerZ(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerZ") }
	override func setLayerVisibility(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerVisibility") }
	override func setLayerAlpha(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetLayerAlpha") }
	override func createStrayLayer(_ _0: UInt32, _ _1: UInt64, _ _2: Buffer<UInt8>) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CreateStrayLayer") }
	override func openIndirectLayer(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid, _ _3: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#OpenIndirectLayer") }
	override func closeIndirectLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CloseIndirectLayer") }
	override func flipIndirectLayer(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#FlipIndirectLayer") }
	override func listDisplayModes(_ _0: UInt64, _ _1: Buffer<NnVi_DisplayModeInfo>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ListDisplayModes") }
	override func listDisplayRgbRanges(_ _0: UInt64, _ _1: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ListDisplayRgbRanges") }
	override func listDisplayContentTypes(_ _0: UInt64, _ _1: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ListDisplayContentTypes") }
	override func getDisplayMode(_ _0: UInt64) throws -> NnVi_DisplayModeInfo { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayMode") }
	override func setDisplayMode(_ _0: UInt64, _ _1: NnVi_DisplayModeInfo) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayMode") }
	override func getDisplayUnderscan(_ _0: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayUnderscan") }
	override func setDisplayUnderscan(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayUnderscan") }
	override func getDisplayContentType(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayContentType") }
	override func setDisplayContentType(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayContentType") }
	override func getDisplayRgbRange(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayRgbRange") }
	override func setDisplayRgbRange(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayRgbRange") }
	override func getDisplayCmuMode(_ _0: UInt64) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayCmuMode") }
	override func setDisplayCmuMode(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayCmuMode") }
	override func getDisplayContrastRatio(_ _0: UInt64) throws -> Float32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayContrastRatio") }
	override func setDisplayContrastRatio(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayContrastRatio") }
	override func getDisplayGamma(_ _0: UInt64) throws -> Float32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayGamma") }
	override func setDisplayGamma(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayGamma") }
	override func getDisplayCmuLuma(_ _0: UInt64) throws -> Float32 { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetDisplayCmuLuma") }
	override func setDisplayCmuLuma(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#SetDisplayCmuLuma") }
	override func getSharedBufferMemoryHandleId(_ _0: NnViFbshare_SharedBufferHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid, _ _3: Buffer<NnViFbshare_SharedMemoryPoolLayout>) throws -> (NnViNative_NativeMemoryHandleId, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetSharedBufferMemoryHandleId") }
	override func openSharedLayer(_ _0: NnViFbshare_SharedLayerHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#OpenSharedLayer") }
	override func closeSharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CloseSharedLayer") }
	override func connectSharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#ConnectSharedLayer") }
	override func disconnectSharedLayer(_ _0: NnViFbshare_SharedLayerHandle) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#DisconnectSharedLayer") }
	override func acquireSharedFrameBuffer(_ _0: NnViFbshare_SharedLayerHandle) throws -> (NnViNative_NativeSync, NnViFbshare_SharedLayerTextureIndexList, UInt64) { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#AcquireSharedFrameBuffer") }
	override func presentSharedFrameBuffer(_ _0: NnViNative_NativeSync, _ _1: NnVi_CropRegion, _ _2: UInt32, _ _3: UInt32, _ _4: NnViFbshare_SharedLayerHandle, _ _5: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#PresentSharedFrameBuffer") }
	override func getSharedFrameBufferAcquirableEvent(_ _0: NnViFbshare_SharedLayerHandle) throws -> KObject { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#GetSharedFrameBufferAcquirableEvent") }
	override func fillSharedFrameBufferColor(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32, _ _4: NnViFbshare_SharedLayerHandle, _ _5: UInt64) throws { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#FillSharedFrameBufferColor") }
	override func cancelSharedFrameBuffer(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemDisplayService#CancelSharedFrameBuffer") }
}
*/

class NnVisrvSf_IManagerRootService: IpcService {
	func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerRootService#GetDisplayService") }
	func getDisplayServiceWithProxyNameExchange(_ _0: NnVi_ProxyName, _ _1: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerRootService#GetDisplayServiceWithProxyNameExchange") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2:
			let ret = try getDisplayService(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getDisplayServiceWithProxyNameExchange(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::visrv::sf::IManagerRootService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnVisrvSf_IManagerRootService_Impl: NnVisrvSf_IManagerRootService {
	override func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerRootService#GetDisplayService") }
	override func getDisplayServiceWithProxyNameExchange(_ _0: NnVi_ProxyName, _ _1: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::IManagerRootService#GetDisplayServiceWithProxyNameExchange") }
}
*/

class NnVisrvSf_ISystemRootService: IpcService {
	func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemRootService#GetDisplayService") }
	func getDisplayServiceWithProxyNameExchange(_ _0: NnVi_ProxyName, _ _1: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemRootService#GetDisplayServiceWithProxyNameExchange") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			let ret = try getDisplayService(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getDisplayServiceWithProxyNameExchange(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::visrv::sf::ISystemRootService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnVisrvSf_ISystemRootService_Impl: NnVisrvSf_ISystemRootService {
	override func getDisplayService(_ _0: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemRootService#GetDisplayService") }
	override func getDisplayServiceWithProxyNameExchange(_ _0: NnVi_ProxyName, _ _1: UInt32) throws -> NnVisrvSf_IApplicationDisplayService { throw IpcError.unimplemented(name: "nn::visrv::sf::nn::visrv::sf::ISystemRootService#GetDisplayServiceWithProxyNameExchange") }
}
*/
