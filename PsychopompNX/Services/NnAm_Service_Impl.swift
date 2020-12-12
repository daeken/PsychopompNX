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
    override func getSelfController() throws -> NnAmService_ISelfController { NnAmService_ISelfController() }
    override func getWindowController() throws -> NnAmService_IWindowController { NnAmService_IWindowController_Impl() }
    override func getAudioController() throws -> NnAmService_IAudioController { NnAmService_IAudioController() }
    override func getDisplayController() throws -> NnAmService_IDisplayController { NnAmService_IDisplayController() }
    override func getProcessWindingController() throws -> NnAmService_IProcessWindingController { NnAmService_IProcessWindingController() }
    override func getLibraryAppletCreator() throws -> NnAmService_ILibraryAppletCreator { NnAmService_ILibraryAppletCreator() }
    override func getApplicationFunctions() throws -> NnAmService_IApplicationFunctions { NnAmService_IApplicationFunctions() }
    override func getDebugFunctions() throws -> NnAmService_IDebugFunctions { NnAmService_IDebugFunctions() }
}

class NnAmService_ICommonStateGetter_Impl: NnAmService_ICommonStateGetter {
    override func getEventHandle() throws -> KObject { KEvent() }
    override func receiveMessage() throws -> NnAm_AppletMessage { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#ReceiveMessage") }
    override func getThisAppletKind() throws -> NnAmService_AppletKind { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetThisAppletKind") }
    override func allowToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#AllowToEnterSleep") }
    override func disallowToEnterSleep() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#DisallowToEnterSleep") }
    override func getOperationMode() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetOperationMode") }
    override func getPerformanceMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetPerformanceMode") }
    override func getCradleStatus() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCradleStatus") }
    override func getBootMode() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetBootMode") }
    override func getCurrentFocusState() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::ICommonStateGetter#GetCurrentFocusState") }
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
    override func acquireForegroundRights() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#AcquireForegroundRights") }
    override func releaseForegroundRights() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#ReleaseForegroundRights") }
    override func rejectToChangeIntoBackground() throws { throw IpcError.unimplemented(name: "nn::am::service::nn::am::service::IWindowController#RejectToChangeIntoBackground") }
}
