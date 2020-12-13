//
//  NnAm_Service_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

class NnAmService_IApplicationProxyService_Impl: NnAmService_IApplicationProxyService {
    override func openApplicationProxy(_ _0: UInt64, _ _1: Pid, _ _2: KObject) throws -> NnAmService_IApplicationProxy { NnAmService_IApplicationProxy_Impl() }
}

class NnAmService_IApplicationProxy_Impl: NnAmService_IApplicationProxy {
    override func getCommonStateGetter() throws -> NnAmService_ICommonStateGetter { NnAmService_ICommonStateGetter_Impl() }
    override func getSelfController() throws -> NnAmService_ISelfController { NnAmService_ISelfController_Impl() }
    override func getWindowController() throws -> NnAmService_IWindowController { NnAmService_IWindowController_Impl() }
    override func getAudioController() throws -> NnAmService_IAudioController { NnAmService_IAudioController() }
    override func getDisplayController() throws -> NnAmService_IDisplayController { NnAmService_IDisplayController() }
    override func getProcessWindingController() throws -> NnAmService_IProcessWindingController { NnAmService_IProcessWindingController() }
    override func getLibraryAppletCreator() throws -> NnAmService_ILibraryAppletCreator { NnAmService_ILibraryAppletCreator() }
    override func getApplicationFunctions() throws -> NnAmService_IApplicationFunctions { NnAmService_IApplicationFunctions_Impl() }
    override func getDebugFunctions() throws -> NnAmService_IDebugFunctions { NnAmService_IDebugFunctions() }
}

class NnAmService_ICommonStateGetter_Impl: NnAmService_ICommonStateGetter {
    override func getEventHandle() throws -> KObject { KEvent() }
    override func receiveMessage() throws -> NnAm_AppletMessage { 0xF }
    override func getThisAppletKind() throws -> NnAmService_AppletKind { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetThisAppletKind") }
    override func allowToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#AllowToEnterSleep") }
    override func disallowToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#DisallowToEnterSleep") }
    override func getOperationMode() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetOperationMode") }
    override func getPerformanceMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetPerformanceMode") }
    override func getCradleStatus() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCradleStatus") }
    override func getBootMode() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetBootMode") }
    override func getCurrentFocusState() throws -> UInt8 { 1 }
    override func requestToAcquireSleepLock() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#RequestToAcquireSleepLock") }
    override func releaseSleepLock() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#ReleaseSleepLock") }
    override func releaseSleepLockTransiently() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#ReleaseSleepLockTransiently") }
    override func getAcquiredSleepLockEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetAcquiredSleepLockEvent") }
    override func pushToGeneralChannel(_ _0: NnAmService_IStorage) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#PushToGeneralChannel") }
    override func getHomeButtonReaderLockAccessor() throws -> NnAmService_ILockAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetHomeButtonReaderLockAccessor") }
    override func getReaderLockAccessorEx(_ _0: UInt32) throws -> NnAmService_ILockAccessor { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetReaderLockAccessorEx") }
    override func getCradleFwVersion() throws -> (UInt32, UInt32, UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCradleFwVersion") }
    override func isVrModeEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#IsVrModeEnabled") }
    override func setVrModeEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#SetVrModeEnabled") }
    override func setLcdBacklighOffEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#SetLcdBacklighOffEnabled") }
    override func isInControllerFirmwareUpdateSection() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#IsInControllerFirmwareUpdateSection") }
    override func getDefaultDisplayResolution() throws -> (UInt32, UInt32) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetDefaultDisplayResolution") }
    override func getDefaultDisplayResolutionChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetDefaultDisplayResolutionChangeEvent") }
    override func getHdcpAuthenticationState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetHdcpAuthenticationState") }
    override func getHdcpAuthenticationStateChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetHdcpAuthenticationStateChangeEvent") }
}

class NnAmService_IWindowController_Impl: NnAmService_IWindowController {
    override func createWindow(_ _0: NnAmService_WindowCreationOption) throws -> NnAmService_IWindow { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#CreateWindow") }
    override func getAppletResourceUserId() throws -> NnApplet_AppletResourceUserId { 0xdeadbeef }
    override func acquireForegroundRights() throws { }
    override func releaseForegroundRights() throws { }
    override func rejectToChangeIntoBackground() throws { }
}

class NnAmService_ISelfController_Impl: NnAmService_ISelfController {
    override func exit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#Exit") }
    override func lockExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#LockExit") }
    override func unlockExit() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#UnlockExit") }
    override func enterFatalSection() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#EnterFatalSection") }
    override func leaveFatalSection() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#LeaveFatalSection") }
    override func getLibraryAppletLaunchableEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetLibraryAppletLaunchableEvent") }
    override func setScreenShotPermission(_ _0: UInt32) throws { }
    override func setOperationModeChangedNotification(_ _0: UInt8) throws { }
    override func setPerformanceModeChangedNotification(_ _0: UInt8) throws { }
    override func setFocusHandlingMode(_ _0: UInt8, _ _1: UInt8, _ _2: UInt8) throws { }
    override func setRestartMessageEnabled(_ _0: UInt8) throws { }
    override func setScreenShotAppletIdentityInfo(_ _0: NnAmService_AppletIdentityInfo) throws { }
    override func setOutOfFocusSuspendingEnabled(_ _0: UInt8) throws { }
    override func setControllerFirmwareUpdateSection(_ _0: UInt8) throws { }
    override func setRequiresCaptureButtonShortPressedMessage(_ _0: UInt8) throws { }
    override func setScreenShotImageOrientation(_ _0: UInt32) throws { }
    override func setDesirableKeyboardLayout(_ _0: UInt32) throws { }
    override func createManagedDisplayLayer() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#CreateManagedDisplayLayer") }
    override func isSystemBufferSharingEnabled() throws { }
    override func getSystemSharedLayerHandle() throws -> (NnViFbshare_SharedBufferHandle, NnViFbshare_SharedLayerHandle) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetSystemSharedLayerHandle") }
    override func setHandlesRequestToDisplay(_ _0: UInt8) throws { }
    override func approveToDisplay() throws { }
    override func overrideAutoSleepTimeAndDimmingTime(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32, _ _3: UInt32) throws { }
    override func setMediaPlaybackState(_ _0: UInt8) throws { }
    override func setIdleTimeDetectionExtension(_ _0: UInt32) throws { }
    override func getIdleTimeDetectionExtension() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetIdleTimeDetectionExtension") }
    override func setInputDetectionSourceSet(_ _0: UInt32) throws { }
    override func reportUserIsActive() throws { }
    override func getCurrentIlluminance() throws -> Float32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#GetCurrentIlluminance") }
    override func isIlluminanceAvailable() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ISelfController#IsIlluminanceAvailable") }
    override func reportMultimediaError(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { }
    override func setWirelessPriorityMode(_ _0: UInt32) throws { }
}

class NnAmService_IApplicationFunctions_Impl: NnAmService_IApplicationFunctions {
    override func popLaunchParameter(_ _0: UInt32) throws -> NnAmService_IStorage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#PopLaunchParameter") }
    override func createApplicationAndPushAndRequestToStart(_ _0: NnNcm_ApplicationId, _ _1: NnAmService_IStorage) throws { }
    override func createApplicationAndPushAndRequestToStartForQuest(_ _0: UInt32, _ _1: UInt32, _ _2: NnNcm_ApplicationId, _ _3: NnAmService_IStorage) throws { }
    override func createApplicationAndRequestToStart(_ _0: NnNcm_ApplicationId) throws { }
    override func createApplicationAndRequestToStartForQuest(_ _0: UInt32, _ _1: UInt32, _ _2: NnNcm_ApplicationId) throws { }
    override func ensureSaveData(_ _0: NnAccount_Uid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#EnsureSaveData") }
    override func getDesiredLanguage() throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetDesiredLanguage") }
    override func setTerminateResult(_ _0: UInt32) throws { }
    override func getDisplayVersion() throws -> NnOe_DisplayVersion { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetDisplayVersion") }
    override func getLaunchStorageInfoForDebug() throws -> (NnNcm_StorageId, NnNcm_StorageId) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetLaunchStorageInfoForDebug") }
    override func extendSaveData(_ _0: UInt8, _ _1: NnAccount_Uid, _ _2: UInt64, _ _3: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#ExtendSaveData") }
    override func getSaveDataSize(_ _0: UInt8, _ _1: NnAccount_Uid) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetSaveDataSize") }
    override func beginBlockingHomeButtonShortAndLongPressed(_ _0: UInt64) throws { }
    override func endBlockingHomeButtonShortAndLongPressed() throws { }
    override func beginBlockingHomeButton(_ _0: UInt64) throws { }
    override func endBlockingHomeButton() throws { }
    override func notifyRunning() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#NotifyRunning") }
    override func getPseudoDeviceId() throws -> NnUtil_Uuid { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#GetPseudoDeviceId") }
    override func setMediaPlaybackStateForApplication(_ _0: UInt8) throws { }
    override func isGamePlayRecordingSupported() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#IsGamePlayRecordingSupported") }
    override func initializeGamePlayRecording(_ _0: UInt64, _ _1: KObject) throws { }
    override func setGamePlayRecordingState(_ _0: UInt32) throws { }
    override func requestFlushGamePlayingMovieForDebug() throws { }
    override func requestToShutdown() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#RequestToShutdown") }
    override func requestToReboot() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#RequestToReboot") }
    override func exitAndRequestToShowThanksMessage() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IApplicationFunctions#ExitAndRequestToShowThanksMessage") }
    override func enableApplicationCrashReport(_ _0: UInt8) throws { }
}
