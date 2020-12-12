typealias NnAmService_AppletIdentityInfo = Any?
typealias NnAmService_LibraryAppletInfo = [UInt8]
typealias NnAmService_AppletProcessLaunchReason = [UInt8]
typealias NnAmService_EmulatedButtonEvent = UInt32
typealias NnAmService_AppletKind = [UInt8]
typealias NnAmService_WindowCreationOption = UInt32

class NnAmService_IStorage: IpcService {
	func unknown0() throws -> NnAmService_IStorageAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IStorage#Unknown0") }
	func unknown1() throws -> NnAmService_ITransferStorageAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IStorage#Unknown1") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try unknown1()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IStorage: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IOverlayFunctions: IpcService {
	func beginToWatchShortHomeButtonMessage() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#BeginToWatchShortHomeButtonMessage") }
	func endToWatchShortHomeButtonMessage() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#EndToWatchShortHomeButtonMessage") }
	func getApplicationIdForLogo() throws -> NnNcm_ApplicationId { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#GetApplicationIdForLogo") }
	func setGpuTimeSliceBoost(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#SetGpuTimeSliceBoost") }
	func setAutoSleepTimeAndDimmingTimeEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#SetAutoSleepTimeAndDimmingTimeEnabled") }
	func terminateApplicationAndSetReason(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#TerminateApplicationAndSetReason") }
	func setScreenShotPermissionGlobally(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayFunctions#SetScreenShotPermissionGlobally") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try beginToWatchShortHomeButtonMessage()
			om.initialize(0, 0, 0)
		
		case 1:
			try endToWatchShortHomeButtonMessage()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getApplicationIdForLogo()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3:
			try setGpuTimeSliceBoost(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4:
			try setAutoSleepTimeAndDimmingTimeEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 5:
			try terminateApplicationAndSetReason(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try setScreenShotPermissionGlobally(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IOverlayFunctions: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ILibraryAppletSelfAccessor: IpcService {
	func popInData() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#PopInData") }
	func pushOutData(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#PushOutData") }
	func popInteractiveInData() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#PopInteractiveInData") }
	func pushInteractiveOutData(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#PushInteractiveOutData") }
	func getPopInDataEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetPopInDataEvent") }
	func getPopInteractiveInDataEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetPopInteractiveInDataEvent") }
	func exitProcessAndReturn() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#ExitProcessAndReturn") }
	func getLibraryAppletInfo() throws -> NnAmService_LibraryAppletInfo { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetLibraryAppletInfo") }
	func getMainAppletIdentityInfo() throws -> NnAmService_AppletIdentityInfo { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetMainAppletIdentityInfo") }
	func canUseApplicationCore() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#CanUseApplicationCore") }
	func getCallerAppletIdentityInfo() throws -> NnAmService_AppletIdentityInfo { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetCallerAppletIdentityInfo") }
	func getMainAppletApplicationControlProperty(_ _0: Buffer<NnNs_ApplicationControlProperty>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetMainAppletApplicationControlProperty") }
	func getMainAppletStorageId() throws -> NnNcm_StorageId { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetMainAppletStorageId") }
	func getCallerAppletIdentityInfoStack(_ _0: Buffer<NnAmService_AppletIdentityInfo>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetCallerAppletIdentityInfoStack") }
	func getNextReturnDestinationAppletIdentityInfo() throws -> NnAmService_AppletIdentityInfo { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetNextReturnDestinationAppletIdentityInfo") }
	func getDesirableKeyboardLayout() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetDesirableKeyboardLayout") }
	func popExtraStorage() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#PopExtraStorage") }
	func getPopExtraStorageEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetPopExtraStorageEvent") }
	func unpopInData(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#UnpopInData") }
	func unpopExtraStorage(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#UnpopExtraStorage") }
	func getIndirectLayerProducerHandle() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetIndirectLayerProducerHandle") }
	func reportVisibleError(_ _0: NnErr_ErrorCode) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#ReportVisibleError") }
	func reportVisibleErrorWithErrorContext(_ _0: NnErr_ErrorCode, _ _1: Buffer<NnErr_ErrorContext>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#ReportVisibleErrorWithErrorContext") }
	func getMainAppletApplicationDesiredLanguage() throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#GetMainAppletApplicationDesiredLanguage") }
	func createGameMovieTrimmer(_ _0: UInt64, _ _1: KObject) throws -> NnGrcsrv_IGameMovieTrimmer { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletSelfAccessor#CreateGameMovieTrimmer") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try popInData()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try pushOutData(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try popInteractiveInData()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			try pushInteractiveOutData(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getPopInDataEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 6:
			let ret = try getPopInteractiveInDataEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 10:
			try exitProcessAndReturn()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getLibraryAppletInfo()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 12:
			let ret = try getMainAppletIdentityInfo()
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try canUseApplicationCore()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 14:
			let ret = try getCallerAppletIdentityInfo()
			om.initialize(0, 0, 0)
		
		case 15:
			try getMainAppletApplicationControlProperty(im.getBuffer(0x16, 0) as Buffer<NnNs_ApplicationControlProperty>)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try getMainAppletStorageId()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 17:
			let ret = try getCallerAppletIdentityInfoStack(im.getBuffer(0x6, 0) as Buffer<NnAmService_AppletIdentityInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 18:
			let ret = try getNextReturnDestinationAppletIdentityInfo()
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getDesirableKeyboardLayout()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try popExtraStorage()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 25:
			let ret = try getPopExtraStorageEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 30:
			try unpopInData(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 31:
			try unpopExtraStorage(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try getIndirectLayerProducerHandle()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 50:
			try reportVisibleError(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 51:
			try reportVisibleErrorWithErrorContext(im.getBytes(8, 0x8), im.getBuffer(0x15, 0) as Buffer<NnErr_ErrorContext>)
			om.initialize(0, 0, 0)
		
		case 60:
			let ret = try getMainAppletApplicationDesiredLanguage()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			let ret = try createGameMovieTrimmer(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::ILibraryAppletSelfAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ICommonStateGetter: IpcService {
	func getEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetEventHandle") }
	func receiveMessage() throws -> NnAm_AppletMessage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#ReceiveMessage") }
	func getThisAppletKind() throws -> NnAmService_AppletKind { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetThisAppletKind") }
	func allowToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#AllowToEnterSleep") }
	func disallowToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#DisallowToEnterSleep") }
	func getOperationMode() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetOperationMode") }
	func getPerformanceMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetPerformanceMode") }
	func getCradleStatus() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCradleStatus") }
	func getBootMode() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetBootMode") }
	func getCurrentFocusState() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCurrentFocusState") }
	func requestToAcquireSleepLock() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#RequestToAcquireSleepLock") }
	func releaseSleepLock() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#ReleaseSleepLock") }
	func releaseSleepLockTransiently() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#ReleaseSleepLockTransiently") }
	func getAcquiredSleepLockEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetAcquiredSleepLockEvent") }
	func pushToGeneralChannel(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#PushToGeneralChannel") }
	func getHomeButtonReaderLockAccessor() throws -> NnAmService_ILockAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetHomeButtonReaderLockAccessor") }
	func getReaderLockAccessorEx(_ _0: UInt32) throws -> NnAmService_ILockAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetReaderLockAccessorEx") }
	func getCradleFwVersion() throws -> (UInt32, UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCradleFwVersion") }
	func isVrModeEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#IsVrModeEnabled") }
	func setVrModeEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#SetVrModeEnabled") }
	func setLcdBacklighOffEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#SetLcdBacklighOffEnabled") }
	func isInControllerFirmwareUpdateSection() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#IsInControllerFirmwareUpdateSection") }
	func getDefaultDisplayResolution() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetDefaultDisplayResolution") }
	func getDefaultDisplayResolutionChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetDefaultDisplayResolutionChangeEvent") }
	func getHdcpAuthenticationState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetHdcpAuthenticationState") }
	func getHdcpAuthenticationStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetHdcpAuthenticationStateChangeEvent") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let ret = try receiveMessage()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getThisAppletKind()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 3:
			try allowToEnterSleep()
			om.initialize(0, 0, 0)
		
		case 4:
			try disallowToEnterSleep()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getOperationMode()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 6:
			let ret = try getPerformanceMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			let ret = try getCradleStatus()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 8:
			let ret = try getBootMode()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 9:
			let ret = try getCurrentFocusState()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 10:
			try requestToAcquireSleepLock()
			om.initialize(0, 0, 0)
		
		case 11:
			try releaseSleepLock()
			om.initialize(0, 0, 0)
		
		case 12:
			try releaseSleepLockTransiently()
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try getAcquiredSleepLockEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 20:
			try pushToGeneralChannel(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 30:
			let ret = try getHomeButtonReaderLockAccessor()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 31:
			let ret = try getReaderLockAccessorEx(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 40:
			let (_0, _1, _2, _3) = try getCradleFwVersion()
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
			om.setData(20, _3)
		
		case 50:
			let ret = try isVrModeEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 51:
			try setVrModeEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 52:
			try setLcdBacklighOffEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 55:
			let ret = try isInControllerFirmwareUpdateSection()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 60:
			let (_0, _1) = try getDefaultDisplayResolution()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 61:
			let ret = try getDefaultDisplayResolutionChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 62:
			let ret = try getHdcpAuthenticationState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 63:
			let ret = try getHdcpAuthenticationStateChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::ICommonStateGetter: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IApplicationFunctions: IpcService {
	func popLaunchParameter(_ _0: UInt32) throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#PopLaunchParameter") }
	func createApplicationAndPushAndRequestToStart(_ _0: NnNcm_ApplicationId, _ _1: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#CreateApplicationAndPushAndRequestToStart") }
	func createApplicationAndPushAndRequestToStartForQuest(_ _0: UInt32, _ _1: UInt32, _ _2: NnNcm_ApplicationId, _ _3: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#CreateApplicationAndPushAndRequestToStartForQuest") }
	func createApplicationAndRequestToStart(_ _0: NnNcm_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#CreateApplicationAndRequestToStart") }
	func createApplicationAndRequestToStartForQuest(_ _0: UInt32, _ _1: UInt32, _ _2: NnNcm_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#CreateApplicationAndRequestToStartForQuest") }
	func ensureSaveData(_ _0: NnAccount_Uid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#EnsureSaveData") }
	func getDesiredLanguage() throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetDesiredLanguage") }
	func setTerminateResult(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#SetTerminateResult") }
	func getDisplayVersion() throws -> NnOe_DisplayVersion { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetDisplayVersion") }
	func getLaunchStorageInfoForDebug() throws -> (NnNcm_StorageId, NnNcm_StorageId) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetLaunchStorageInfoForDebug") }
	func extendSaveData(_ _0: UInt8, _ _1: NnAccount_Uid, _ _2: UInt64, _ _3: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#ExtendSaveData") }
	func getSaveDataSize(_ _0: UInt8, _ _1: NnAccount_Uid) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetSaveDataSize") }
	func beginBlockingHomeButtonShortAndLongPressed(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#BeginBlockingHomeButtonShortAndLongPressed") }
	func endBlockingHomeButtonShortAndLongPressed() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#EndBlockingHomeButtonShortAndLongPressed") }
	func beginBlockingHomeButton(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#BeginBlockingHomeButton") }
	func endBlockingHomeButton() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#EndBlockingHomeButton") }
	func notifyRunning() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#NotifyRunning") }
	func getPseudoDeviceId() throws -> NnUtil_Uuid { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetPseudoDeviceId") }
	func setMediaPlaybackStateForApplication(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#SetMediaPlaybackStateForApplication") }
	func isGamePlayRecordingSupported() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#IsGamePlayRecordingSupported") }
	func initializeGamePlayRecording(_ _0: UInt64, _ _1: KObject) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#InitializeGamePlayRecording") }
	func setGamePlayRecordingState(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#SetGamePlayRecordingState") }
	func requestFlushGamePlayingMovieForDebug() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#RequestFlushGamePlayingMovieForDebug") }
	func requestToShutdown() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#RequestToShutdown") }
	func requestToReboot() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#RequestToReboot") }
	func exitAndRequestToShowThanksMessage() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#ExitAndRequestToShowThanksMessage") }
	func enableApplicationCrashReport(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#EnableApplicationCrashReport") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			let ret = try popLaunchParameter(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			try createApplicationAndPushAndRequestToStart(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 11:
			try createApplicationAndPushAndRequestToStartForQuest(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 12:
			try createApplicationAndRequestToStart(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 13:
			try createApplicationAndRequestToStartForQuest(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try ensureSaveData(im.getBytes(8, 0x10))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 21:
			let ret = try getDesiredLanguage()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 22:
			try setTerminateResult(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getDisplayVersion()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 24:
			let (_0, _1) = try getLaunchStorageInfoForDebug()
			om.initialize(0, 0, 2)
			om.setData(8, _0)
			om.setData(9, _1)
		
		case 25:
			let ret = try extendSaveData(im.getData(8) as UInt8, im.getBytes(9, 0x10), im.getData(32) as UInt64, im.getData(40) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 26:
			let (_0, _1) = try getSaveDataSize(im.getData(8) as UInt8, im.getBytes(9, 0x10))
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 30:
			try beginBlockingHomeButtonShortAndLongPressed(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 31:
			try endBlockingHomeButtonShortAndLongPressed()
			om.initialize(0, 0, 0)
		
		case 32:
			try beginBlockingHomeButton(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 33:
			try endBlockingHomeButton()
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try notifyRunning()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 50:
			let ret = try getPseudoDeviceId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 60:
			try setMediaPlaybackStateForApplication(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 65:
			let ret = try isGamePlayRecordingSupported()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 66:
			try initializeGamePlayRecording(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 67:
			try setGamePlayRecordingState(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 68:
			try requestFlushGamePlayingMovieForDebug()
			om.initialize(0, 0, 0)
		
		case 70:
			try requestToShutdown()
			om.initialize(0, 0, 0)
		
		case 71:
			try requestToReboot()
			om.initialize(0, 0, 0)
		
		case 80:
			try exitAndRequestToShowThanksMessage()
			om.initialize(0, 0, 0)
		
		case 90:
			try enableApplicationCrashReport(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IApplicationFunctions: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IAppletAccessor: IpcService {
	func getAppletStateChangedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAppletAccessor#GetAppletStateChangedEvent") }
	func isCompleted() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAppletAccessor#IsCompleted") }
	func start() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAppletAccessor#Start") }
	func requestExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAppletAccessor#RequestExit") }
	func terminate() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAppletAccessor#Terminate") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAppletAccessor#GetResult") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getAppletStateChangedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let ret = try isCompleted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 10:
			try start()
			om.initialize(0, 0, 0)
		
		case 20:
			try requestExit()
			om.initialize(0, 0, 0)
		
		case 25:
			try terminate()
			om.initialize(0, 0, 0)
		
		case 30:
			try getResult()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IAppletAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ISystemAppletProxy: IpcService {
	func getCommonStateGetter() throws -> NnAmService_ICommonStateGetter { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetCommonStateGetter") }
	func getSelfController() throws -> NnAmService_ISelfController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetSelfController") }
	func getWindowController() throws -> NnAmService_IWindowController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetWindowController") }
	func getAudioController() throws -> NnAmService_IAudioController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetAudioController") }
	func getDisplayController() throws -> NnAmService_IDisplayController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetDisplayController") }
	func getProcessWindingController() throws -> NnAmService_IProcessWindingController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetProcessWindingController") }
	func getLibraryAppletCreator() throws -> NnAmService_ILibraryAppletCreator { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetLibraryAppletCreator") }
	func getHomeMenuFunctions() throws -> NnAmService_IHomeMenuFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetHomeMenuFunctions") }
	func getGlobalStateController() throws -> NnAmService_IGlobalStateController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetGlobalStateController") }
	func getApplicationCreator() throws -> NnAmService_IApplicationCreator { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetApplicationCreator") }
	func getDebugFunctions() throws -> NnAmService_IDebugFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISystemAppletProxy#GetDebugFunctions") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCommonStateGetter()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getSelfController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try getWindowController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getAudioController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try getDisplayController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try getProcessWindingController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 11:
			let ret = try getLibraryAppletCreator()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 20:
			let ret = try getHomeMenuFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 21:
			let ret = try getGlobalStateController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 22:
			let ret = try getApplicationCreator()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1000:
			let ret = try getDebugFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::ISystemAppletProxy: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ILibraryAppletCreator: IpcService {
	func createLibraryApplet(_ _0: UInt32, _ _1: UInt32) throws -> NnAmService_ILibraryAppletAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletCreator#CreateLibraryApplet") }
	func terminateAllLibraryApplets() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletCreator#TerminateAllLibraryApplets") }
	func areAnyLibraryAppletsLeft() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletCreator#AreAnyLibraryAppletsLeft") }
	func createStorage(_ _0: UInt64) throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletCreator#CreateStorage") }
	func createTransferMemoryStorage(_ _0: UInt8, _ _1: UInt64, _ _2: KObject) throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletCreator#CreateTransferMemoryStorage") }
	func createHandleStorage(_ _0: UInt64, _ _1: KObject) throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletCreator#CreateHandleStorage") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createLibraryApplet(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try terminateAllLibraryApplets()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try areAnyLibraryAppletsLeft()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 10:
			let ret = try createStorage(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 11:
			let ret = try createTransferMemoryStorage(im.getData(8) as UInt8, im.getData(16) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 12:
			let ret = try createHandleStorage(im.getData(8) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::ILibraryAppletCreator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IDebugFunctions: IpcService {
	func notifyMessageToHomeMenuForDebug(_ _0: NnAm_AppletMessage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDebugFunctions#NotifyMessageToHomeMenuForDebug") }
	func openMainApplication() throws -> NnAmService_IApplicationAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDebugFunctions#OpenMainApplication") }
	func emulateButtonEvent(_ _0: NnAmService_EmulatedButtonEvent) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDebugFunctions#EmulateButtonEvent") }
	func invalidateTransitionLayer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDebugFunctions#InvalidateTransitionLayer") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try notifyMessageToHomeMenuForDebug(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try openMainApplication()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			try emulateButtonEvent(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 20:
			try invalidateTransitionLayer()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IDebugFunctions: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IAllSystemAppletProxiesService: IpcService {
	func openSystemAppletProxy(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws -> NnAmService_ISystemAppletProxy { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAllSystemAppletProxiesService#OpenSystemAppletProxy") }
	func openLibraryAppletProxyOld(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws -> NnAmService_ILibraryAppletProxy { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAllSystemAppletProxiesService#OpenLibraryAppletProxyOld") }
	func openLibraryAppletProxy(_ _0: UInt64, _ _1: Pid, _ _2: KObject, _ _3: Buffer<NnAm_AppletAttribute>) throws -> NnAmService_ILibraryAppletProxy { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAllSystemAppletProxiesService#OpenLibraryAppletProxy") }
	func openOverlayAppletProxy(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws -> NnAmService_IOverlayAppletProxy { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAllSystemAppletProxiesService#OpenOverlayAppletProxy") }
	func openSystemApplicationProxy(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws -> NnAmService_IApplicationProxy { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAllSystemAppletProxiesService#OpenSystemApplicationProxy") }
	func createSelfLibraryAppletCreatorForDevelop(_ _0: UInt64, _ _1: Pid) throws -> NnAmService_ILibraryAppletCreator { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAllSystemAppletProxiesService#CreateSelfLibraryAppletCreatorForDevelop") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 100:
			let ret = try openSystemAppletProxy(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 200:
			let ret = try openLibraryAppletProxyOld(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 201:
			let ret = try openLibraryAppletProxy(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x15, 0) as Buffer<NnAm_AppletAttribute>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 300:
			let ret = try openOverlayAppletProxy(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 350:
			let ret = try openSystemApplicationProxy(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 400:
			let ret = try createSelfLibraryAppletCreatorForDevelop(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IAllSystemAppletProxiesService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ILibraryAppletAccessor: IpcService {
	func getAppletStateChangedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#GetAppletStateChangedEvent") }
	func isCompleted() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#IsCompleted") }
	func start() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#Start") }
	func requestExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#RequestExit") }
	func terminate() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#Terminate") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#GetResult") }
	func setOutOfFocusApplicationSuspendingEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#SetOutOfFocusApplicationSuspendingEnabled") }
	func pushInData(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#PushInData") }
	func popOutData() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#PopOutData") }
	func pushExtraStorage(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#PushExtraStorage") }
	func pushInteractiveInData(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#PushInteractiveInData") }
	func popInteractiveOutData() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#PopInteractiveOutData") }
	func getPopOutDataEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#GetPopOutDataEvent") }
	func getPopInteractiveOutDataEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#GetPopInteractiveOutDataEvent") }
	func needsToExitProcess() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#NeedsToExitProcess") }
	func getLibraryAppletInfo() throws -> NnAmService_LibraryAppletInfo { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#GetLibraryAppletInfo") }
	func requestForAppletToGetForeground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#RequestForAppletToGetForeground") }
	func getIndirectLayerConsumerHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletAccessor#GetIndirectLayerConsumerHandle") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getAppletStateChangedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let ret = try isCompleted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 10:
			try start()
			om.initialize(0, 0, 0)
		
		case 20:
			try requestExit()
			om.initialize(0, 0, 0)
		
		case 25:
			try terminate()
			om.initialize(0, 0, 0)
		
		case 30:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 50:
			try setOutOfFocusApplicationSuspendingEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 100:
			try pushInData(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try popOutData()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 102:
			try pushExtraStorage(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 103:
			try pushInteractiveInData(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 104:
			let ret = try popInteractiveOutData()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 105:
			let ret = try getPopOutDataEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 106:
			let ret = try getPopInteractiveOutDataEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 110:
			let ret = try needsToExitProcess()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 120:
			let ret = try getLibraryAppletInfo()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 150:
			try requestForAppletToGetForeground()
			om.initialize(0, 0, 0)
		
		case 160:
			let ret = try getIndirectLayerConsumerHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::am::service::ILibraryAppletAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ILibraryAppletProxy: IpcService {
	func getCommonStateGetter() throws -> NnAmService_ICommonStateGetter { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetCommonStateGetter") }
	func getSelfController() throws -> NnAmService_ISelfController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetSelfController") }
	func getWindowController() throws -> NnAmService_IWindowController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetWindowController") }
	func getAudioController() throws -> NnAmService_IAudioController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetAudioController") }
	func getDisplayController() throws -> NnAmService_IDisplayController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetDisplayController") }
	func getProcessWindingController() throws -> NnAmService_IProcessWindingController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetProcessWindingController") }
	func getLibraryAppletCreator() throws -> NnAmService_ILibraryAppletCreator { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetLibraryAppletCreator") }
	func openLibraryAppletSelfAccessor() throws -> NnAmService_ILibraryAppletSelfAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#OpenLibraryAppletSelfAccessor") }
	func getDebugFunctions() throws -> NnAmService_IDebugFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILibraryAppletProxy#GetDebugFunctions") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCommonStateGetter()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getSelfController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try getWindowController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getAudioController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try getDisplayController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try getProcessWindingController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 11:
			let ret = try getLibraryAppletCreator()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 20:
			let ret = try openLibraryAppletSelfAccessor()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1000:
			let ret = try getDebugFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::ILibraryAppletProxy: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IWindowController: IpcService {
	func createWindow(_ _0: NnAmService_WindowCreationOption) throws -> NnAmService_IWindow { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#CreateWindow") }
	func getAppletResourceUserId() throws -> NnApplet_AppletResourceUserId { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#GetAppletResourceUserId") }
	func acquireForegroundRights() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#AcquireForegroundRights") }
	func releaseForegroundRights() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#ReleaseForegroundRights") }
	func rejectToChangeIntoBackground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#RejectToChangeIntoBackground") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createWindow(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getAppletResourceUserId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 10:
			try acquireForegroundRights()
			om.initialize(0, 0, 0)
		
		case 11:
			try releaseForegroundRights()
			om.initialize(0, 0, 0)
		
		case 12:
			try rejectToChangeIntoBackground()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IWindowController: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IApplicationProxy: IpcService {
	func getCommonStateGetter() throws -> NnAmService_ICommonStateGetter { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetCommonStateGetter") }
	func getSelfController() throws -> NnAmService_ISelfController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetSelfController") }
	func getWindowController() throws -> NnAmService_IWindowController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetWindowController") }
	func getAudioController() throws -> NnAmService_IAudioController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetAudioController") }
	func getDisplayController() throws -> NnAmService_IDisplayController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetDisplayController") }
	func getProcessWindingController() throws -> NnAmService_IProcessWindingController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetProcessWindingController") }
	func getLibraryAppletCreator() throws -> NnAmService_ILibraryAppletCreator { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetLibraryAppletCreator") }
	func getApplicationFunctions() throws -> NnAmService_IApplicationFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetApplicationFunctions") }
	func getDebugFunctions() throws -> NnAmService_IDebugFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxy#GetDebugFunctions") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCommonStateGetter()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getSelfController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try getWindowController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getAudioController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try getDisplayController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try getProcessWindingController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 11:
			let ret = try getLibraryAppletCreator()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 20:
			let ret = try getApplicationFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1000:
			let ret = try getDebugFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IApplicationProxy: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IProcessWindingController: IpcService {
	func getLaunchReason() throws -> NnAmService_AppletProcessLaunchReason { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#GetLaunchReason") }
	func openCallingLibraryApplet() throws -> NnAmService_ILibraryAppletAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#OpenCallingLibraryApplet") }
	func pushContext(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#PushContext") }
	func popContext() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#PopContext") }
	func cancelWindingReservation() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#CancelWindingReservation") }
	func windAndDoReserved() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#WindAndDoReserved") }
	func reserveToStartAndWaitAndUnwindThis(_ _0: NnAmService_ILibraryAppletAccessor) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#ReserveToStartAndWaitAndUnwindThis") }
	func reserveToStartAndWait(_ _0: NnAmService_ILibraryAppletAccessor) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IProcessWindingController#ReserveToStartAndWait") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getLaunchReason()
			om.initialize(0, 0, 4)
			if ret.count != 0x4 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 11:
			let ret = try openCallingLibraryApplet()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 21:
			try pushContext(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try popContext()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 23:
			try cancelWindingReservation()
			om.initialize(0, 0, 0)
		
		case 30:
			try windAndDoReserved()
			om.initialize(0, 0, 0)
		
		case 40:
			try reserveToStartAndWaitAndUnwindThis(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_ILibraryAppletAccessor)
			om.initialize(0, 0, 0)
		
		case 41:
			try reserveToStartAndWait(try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_ILibraryAppletAccessor)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IProcessWindingController: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IGlobalStateController: IpcService {
	func requestToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#RequestToEnterSleep") }
	func enterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#EnterSleep") }
	func startSleepSequence(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#StartSleepSequence") }
	func startShutdownSequence() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#StartShutdownSequence") }
	func startRebootSequence() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#StartRebootSequence") }
	func loadAndApplyIdlePolicySettings() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#LoadAndApplyIdlePolicySettings") }
	func notifyCecSettingsChanged() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#NotifyCecSettingsChanged") }
	func setDefaultHomeButtonLongPressTime(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#SetDefaultHomeButtonLongPressTime") }
	func updateDefaultDisplayResolution() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#UpdateDefaultDisplayResolution") }
	func shouldSleepOnBoot() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#ShouldSleepOnBoot") }
	func getHdcpAuthenticationFailedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IGlobalStateController#GetHdcpAuthenticationFailedEvent") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try requestToEnterSleep()
			om.initialize(0, 0, 0)
		
		case 1:
			try enterSleep()
			om.initialize(0, 0, 0)
		
		case 2:
			try startSleepSequence(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 3:
			try startShutdownSequence()
			om.initialize(0, 0, 0)
		
		case 4:
			try startRebootSequence()
			om.initialize(0, 0, 0)
		
		case 10:
			try loadAndApplyIdlePolicySettings()
			om.initialize(0, 0, 0)
		
		case 11:
			try notifyCecSettingsChanged()
			om.initialize(0, 0, 0)
		
		case 12:
			try setDefaultHomeButtonLongPressTime(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 13:
			try updateDefaultDisplayResolution()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try shouldSleepOnBoot()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 15:
			let ret = try getHdcpAuthenticationFailedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IGlobalStateController: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IApplicationProxyService: IpcService {
	func openApplicationProxy(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws -> NnAmService_IApplicationProxy { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationProxyService#OpenApplicationProxy") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openApplicationProxy(im.getData(8) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IApplicationProxyService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IWindow: IpcService {
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		default:
			print("Unhandled command to nn::am::service::IWindow: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IApplicationCreator: IpcService {
	func createApplication(_ _0: NnNcm_ApplicationId) throws -> NnAmService_IApplicationAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationCreator#CreateApplication") }
	func popLaunchRequestedApplication() throws -> NnAmService_IApplicationAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationCreator#PopLaunchRequestedApplication") }
	func createSystemApplication(_ _0: NnNcm_SystemApplicationId) throws -> NnAmService_IApplicationAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationCreator#CreateSystemApplication") }
	func popFloatingApplicationForDevelopment() throws -> NnAmService_IApplicationAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationCreator#PopFloatingApplicationForDevelopment") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createApplication(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try popLaunchRequestedApplication()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try createSystemApplication(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 100:
			let ret = try popFloatingApplicationForDevelopment()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IApplicationCreator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ITransferStorageAccessor: IpcService {
	func getSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ITransferStorageAccessor#GetSize") }
	func getHandle() throws -> (UInt64, KObject) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ITransferStorageAccessor#GetHandle") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			let (_0, _1) = try getHandle()
			om.initialize(0, 1, 8)
			om.setData(8, _0)
			om.copy(0, _1)
		
		default:
			print("Unhandled command to nn::am::service::ITransferStorageAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IHomeMenuFunctions: IpcService {
	func requestToGetForeground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#RequestToGetForeground") }
	func lockForeground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#LockForeground") }
	func unlockForeground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#UnlockForeground") }
	func popFromGeneralChannel() throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#PopFromGeneralChannel") }
	func getPopFromGeneralChannelEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#GetPopFromGeneralChannelEvent") }
	func getHomeButtonWriterLockAccessor() throws -> NnAmService_ILockAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#GetHomeButtonWriterLockAccessor") }
	func getWriterLockAccessorEx(_ _0: UInt32) throws -> NnAmService_ILockAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IHomeMenuFunctions#GetWriterLockAccessorEx") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10:
			try requestToGetForeground()
			om.initialize(0, 0, 0)
		
		case 11:
			try lockForeground()
			om.initialize(0, 0, 0)
		
		case 12:
			try unlockForeground()
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try popFromGeneralChannel()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 21:
			let ret = try getPopFromGeneralChannelEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 30:
			let ret = try getHomeButtonWriterLockAccessor()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 31:
			let ret = try getWriterLockAccessorEx(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IHomeMenuFunctions: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IDisplayController: IpcService {
	func getLastForegroundCaptureImage(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#GetLastForegroundCaptureImage") }
	func updateLastForegroundCaptureImage() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#UpdateLastForegroundCaptureImage") }
	func getLastApplicationCaptureImage(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#GetLastApplicationCaptureImage") }
	func getCallerAppletCaptureImage(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#GetCallerAppletCaptureImage") }
	func updateCallerAppletCaptureImage() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#UpdateCallerAppletCaptureImage") }
	func getLastForegroundCaptureImageEx(_ _0: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#GetLastForegroundCaptureImageEx") }
	func getLastApplicationCaptureImageEx(_ _0: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#GetLastApplicationCaptureImageEx") }
	func getCallerAppletCaptureImageEx(_ _0: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#GetCallerAppletCaptureImageEx") }
	func takeScreenShotOfOwnLayer(_ _0: UInt8, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#TakeScreenShotOfOwnLayer") }
	func acquireLastApplicationCaptureBuffer() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireLastApplicationCaptureBuffer") }
	func releaseLastApplicationCaptureBuffer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ReleaseLastApplicationCaptureBuffer") }
	func acquireLastForegroundCaptureBuffer() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireLastForegroundCaptureBuffer") }
	func releaseLastForegroundCaptureBuffer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ReleaseLastForegroundCaptureBuffer") }
	func acquireCallerAppletCaptureBuffer() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireCallerAppletCaptureBuffer") }
	func releaseCallerAppletCaptureBuffer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ReleaseCallerAppletCaptureBuffer") }
	func acquireLastApplicationCaptureBufferEx() throws -> (UInt8, KObject) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireLastApplicationCaptureBufferEx") }
	func acquireLastForegroundCaptureBufferEx() throws -> (UInt8, KObject) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireLastForegroundCaptureBufferEx") }
	func acquireCallerAppletCaptureBufferEx() throws -> (UInt8, KObject) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireCallerAppletCaptureBufferEx") }
	func clearCaptureBuffer(_ _0: UInt8, _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ClearCaptureBuffer") }
	func clearAppletTransitionBuffer(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ClearAppletTransitionBuffer") }
	func acquireLastApplicationCaptureSharedBuffer() throws -> (UInt8, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireLastApplicationCaptureSharedBuffer") }
	func releaseLastApplicationCaptureSharedBuffer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ReleaseLastApplicationCaptureSharedBuffer") }
	func acquireLastForegroundCaptureSharedBuffer() throws -> (UInt8, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireLastForegroundCaptureSharedBuffer") }
	func releaseLastForegroundCaptureSharedBuffer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ReleaseLastForegroundCaptureSharedBuffer") }
	func acquireCallerAppletCaptureSharedBuffer() throws -> (UInt8, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#AcquireCallerAppletCaptureSharedBuffer") }
	func releaseCallerAppletCaptureSharedBuffer() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IDisplayController#ReleaseCallerAppletCaptureSharedBuffer") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try getLastForegroundCaptureImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try updateLastForegroundCaptureImage()
			om.initialize(0, 0, 0)
		
		case 2:
			try getLastApplicationCaptureImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try getCallerAppletCaptureImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try updateCallerAppletCaptureImage()
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getLastForegroundCaptureImageEx(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 6:
			let ret = try getLastApplicationCaptureImageEx(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			let ret = try getCallerAppletCaptureImageEx(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 8:
			try takeScreenShotOfOwnLayer(im.getData(8) as UInt8, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try acquireLastApplicationCaptureBuffer()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 11:
			try releaseLastApplicationCaptureBuffer()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try acquireLastForegroundCaptureBuffer()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 13:
			try releaseLastForegroundCaptureBuffer()
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try acquireCallerAppletCaptureBuffer()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 15:
			try releaseCallerAppletCaptureBuffer()
			om.initialize(0, 0, 0)
		
		case 16:
			let (_0, _1) = try acquireLastApplicationCaptureBufferEx()
			om.initialize(0, 1, 1)
			om.setData(8, _0)
			om.copy(0, _1)
		
		case 17:
			let (_0, _1) = try acquireLastForegroundCaptureBufferEx()
			om.initialize(0, 1, 1)
			om.setData(8, _0)
			om.copy(0, _1)
		
		case 18:
			let (_0, _1) = try acquireCallerAppletCaptureBufferEx()
			om.initialize(0, 1, 1)
			om.setData(8, _0)
			om.copy(0, _1)
		
		case 20:
			try clearCaptureBuffer(im.getData(8) as UInt8, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 21:
			try clearAppletTransitionBuffer(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 22:
			let (_0, _1) = try acquireLastApplicationCaptureSharedBuffer()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 23:
			try releaseLastApplicationCaptureSharedBuffer()
			om.initialize(0, 0, 0)
		
		case 24:
			let (_0, _1) = try acquireLastForegroundCaptureSharedBuffer()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 25:
			try releaseLastForegroundCaptureSharedBuffer()
			om.initialize(0, 0, 0)
		
		case 26:
			let (_0, _1) = try acquireCallerAppletCaptureSharedBuffer()
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 27:
			try releaseCallerAppletCaptureSharedBuffer()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IDisplayController: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IAudioController: IpcService {
	func setExpectedMasterVolume(_ _0: Float32, _ _1: Float32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAudioController#SetExpectedMasterVolume") }
	func getMainAppletExpectedMasterVolume() throws -> Float32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAudioController#GetMainAppletExpectedMasterVolume") }
	func getLibraryAppletExpectedMasterVolume() throws -> Float32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAudioController#GetLibraryAppletExpectedMasterVolume") }
	func changeMainAppletMasterVolume(_ _0: Float32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAudioController#ChangeMainAppletMasterVolume") }
	func setTransparentVolumeRate(_ _0: Float32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IAudioController#SetTransparentVolumeRate") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setExpectedMasterVolume(im.getData(8) as Float32, im.getData(12) as Float32)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getMainAppletExpectedMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getLibraryAppletExpectedMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try changeMainAppletMasterVolume(im.getData(8) as Float32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4:
			try setTransparentVolumeRate(im.getData(8) as Float32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IAudioController: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IStorageAccessor: IpcService {
	func getSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IStorageAccessor#GetSize") }
	func write(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IStorageAccessor#Write") }
	func read(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IStorageAccessor#Read") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 10:
			try write(im.getData(8) as UInt64, im.getBuffer(0x21, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			try read(im.getData(8) as UInt64, im.getBuffer(0x22, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IStorageAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IOverlayAppletProxy: IpcService {
	func getCommonStateGetter() throws -> NnAmService_ICommonStateGetter { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetCommonStateGetter") }
	func getSelfController() throws -> NnAmService_ISelfController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetSelfController") }
	func getWindowController() throws -> NnAmService_IWindowController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetWindowController") }
	func getAudioController() throws -> NnAmService_IAudioController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetAudioController") }
	func getDisplayController() throws -> NnAmService_IDisplayController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetDisplayController") }
	func getProcessWindingController() throws -> NnAmService_IProcessWindingController { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetProcessWindingController") }
	func getLibraryAppletCreator() throws -> NnAmService_ILibraryAppletCreator { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetLibraryAppletCreator") }
	func getOverlayFunctions() throws -> NnAmService_IOverlayFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetOverlayFunctions") }
	func getDebugFunctions() throws -> NnAmService_IDebugFunctions { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IOverlayAppletProxy#GetDebugFunctions") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getCommonStateGetter()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try getSelfController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try getWindowController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try getAudioController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try getDisplayController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try getProcessWindingController()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 11:
			let ret = try getLibraryAppletCreator()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 20:
			let ret = try getOverlayFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1000:
			let ret = try getDebugFunctions()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::IOverlayAppletProxy: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ISelfController: IpcService {
	func exit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#Exit") }
	func lockExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#LockExit") }
	func unlockExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#UnlockExit") }
	func enterFatalSection() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#EnterFatalSection") }
	func leaveFatalSection() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#LeaveFatalSection") }
	func getLibraryAppletLaunchableEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetLibraryAppletLaunchableEvent") }
	func setScreenShotPermission(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetScreenShotPermission") }
	func setOperationModeChangedNotification(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetOperationModeChangedNotification") }
	func setPerformanceModeChangedNotification(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetPerformanceModeChangedNotification") }
	func setFocusHandlingMode(_ _0: UInt8, _ _1: UInt8, _ _2: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetFocusHandlingMode") }
	func setRestartMessageEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetRestartMessageEnabled") }
	func setScreenShotAppletIdentityInfo(_ _0: NnAmService_AppletIdentityInfo) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetScreenShotAppletIdentityInfo") }
	func setOutOfFocusSuspendingEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetOutOfFocusSuspendingEnabled") }
	func setControllerFirmwareUpdateSection(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetControllerFirmwareUpdateSection") }
	func setRequiresCaptureButtonShortPressedMessage(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetRequiresCaptureButtonShortPressedMessage") }
	func setScreenShotImageOrientation(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetScreenShotImageOrientation") }
	func setDesirableKeyboardLayout(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetDesirableKeyboardLayout") }
	func createManagedDisplayLayer() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#CreateManagedDisplayLayer") }
	func isSystemBufferSharingEnabled() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#IsSystemBufferSharingEnabled") }
	func getSystemSharedLayerHandle() throws -> (NnViFbshare_SharedBufferHandle, NnViFbshare_SharedLayerHandle) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetSystemSharedLayerHandle") }
	func setHandlesRequestToDisplay(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetHandlesRequestToDisplay") }
	func approveToDisplay() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#ApproveToDisplay") }
	func overrideAutoSleepTimeAndDimmingTime(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#OverrideAutoSleepTimeAndDimmingTime") }
	func setMediaPlaybackState(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetMediaPlaybackState") }
	func setIdleTimeDetectionExtension(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetIdleTimeDetectionExtension") }
	func getIdleTimeDetectionExtension() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetIdleTimeDetectionExtension") }
	func setInputDetectionSourceSet(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetInputDetectionSourceSet") }
	func reportUserIsActive() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#ReportUserIsActive") }
	func getCurrentIlluminance() throws -> Float32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetCurrentIlluminance") }
	func isIlluminanceAvailable() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#IsIlluminanceAvailable") }
	func reportMultimediaError(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#ReportMultimediaError") }
	func setWirelessPriorityMode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#SetWirelessPriorityMode") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try exit()
			om.initialize(0, 0, 0)
		
		case 1:
			try lockExit()
			om.initialize(0, 0, 0)
		
		case 2:
			try unlockExit()
			om.initialize(0, 0, 0)
		
		case 3:
			try enterFatalSection()
			om.initialize(0, 0, 0)
		
		case 4:
			try leaveFatalSection()
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getLibraryAppletLaunchableEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 10:
			try setScreenShotPermission(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 11:
			try setOperationModeChangedNotification(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 12:
			try setPerformanceModeChangedNotification(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 13:
			try setFocusHandlingMode(im.getData(8) as UInt8, im.getData(9) as UInt8, im.getData(10) as UInt8)
			om.initialize(0, 0, 0)
		
		case 14:
			try setRestartMessageEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 15:
			try setScreenShotAppletIdentityInfo(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			try setOutOfFocusSuspendingEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 17:
			try setControllerFirmwareUpdateSection(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 18:
			try setRequiresCaptureButtonShortPressedMessage(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 19:
			try setScreenShotImageOrientation(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 20:
			try setDesirableKeyboardLayout(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try createManagedDisplayLayer()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 41:
			try isSystemBufferSharingEnabled()
			om.initialize(0, 0, 0)
		
		case 42:
			let (_0, _1) = try getSystemSharedLayerHandle()
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 50:
			try setHandlesRequestToDisplay(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 51:
			try approveToDisplay()
			om.initialize(0, 0, 0)
		
		case 60:
			try overrideAutoSleepTimeAndDimmingTime(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 61:
			try setMediaPlaybackState(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 62:
			try setIdleTimeDetectionExtension(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 63:
			let ret = try getIdleTimeDetectionExtension()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 64:
			try setInputDetectionSourceSet(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 65:
			try reportUserIsActive()
			om.initialize(0, 0, 0)
		
		case 66:
			let ret = try getCurrentIlluminance()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 67:
			let ret = try isIlluminanceAvailable()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 70:
			try reportMultimediaError(im.getData(8) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 80:
			try setWirelessPriorityMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::ISelfController: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_ILockAccessor: IpcService {
	func tryLock(_ _0: UInt8) throws -> (UInt8, KObject) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILockAccessor#TryLock") }
	func unlock() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILockAccessor#Unlock") }
	func getEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ILockAccessor#GetEvent") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			let (_0, _1) = try tryLock(im.getData(8) as UInt8)
			om.initialize(0, 1, 1)
			om.setData(8, _0)
			om.copy(0, _1)
		
		case 2:
			try unlock()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::am::service::ILockAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAmService_IApplicationAccessor: IpcService {
	func getAppletStateChangedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#GetAppletStateChangedEvent") }
	func isCompleted() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#IsCompleted") }
	func start() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#Start") }
	func requestExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#RequestExit") }
	func terminate() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#Terminate") }
	func getResult() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#GetResult") }
	func requestForApplicationToGetForeground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#RequestForApplicationToGetForeground") }
	func terminateAllLibraryApplets() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#TerminateAllLibraryApplets") }
	func areAnyLibraryAppletsLeft() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#AreAnyLibraryAppletsLeft") }
	func getCurrentLibraryApplet() throws -> NnAmService_IAppletAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#GetCurrentLibraryApplet") }
	func getApplicationId() throws -> NnNcm_ApplicationId { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#GetApplicationId") }
	func pushLaunchParameter(_ _0: UInt32, _ _1: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#PushLaunchParameter") }
	func getApplicationControlProperty(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#GetApplicationControlProperty") }
	func getApplicationLaunchProperty(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationAccessor#GetApplicationLaunchProperty") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getAppletStateChangedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let ret = try isCompleted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 10:
			try start()
			om.initialize(0, 0, 0)
		
		case 20:
			try requestExit()
			om.initialize(0, 0, 0)
		
		case 25:
			try terminate()
			om.initialize(0, 0, 0)
		
		case 30:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 101:
			try requestForApplicationToGetForeground()
			om.initialize(0, 0, 0)
		
		case 110:
			try terminateAllLibraryApplets()
			om.initialize(0, 0, 0)
		
		case 111:
			let ret = try areAnyLibraryAppletsLeft()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 112:
			let ret = try getCurrentLibraryApplet()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 120:
			let ret = try getApplicationId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 121:
			try pushLaunchParameter(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getMove(0)) as NnAmService_IStorage)
			om.initialize(0, 0, 0)
		
		case 122:
			try getApplicationControlProperty(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 123:
			try getApplicationLaunchProperty(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::am::service::IApplicationAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}
