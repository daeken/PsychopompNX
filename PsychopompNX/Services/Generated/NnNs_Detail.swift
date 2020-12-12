class NnNsDetail_IDevelopInterface: IpcService {
	func launchProgram(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#LaunchProgram") }
	func terminateProcess(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#TerminateProcess") }
	func terminateProgram(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#TerminateProgram") }
	func getShellEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#GetShellEventHandle") }
	func getShellEventInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#GetShellEventInfo") }
	func terminateApplication() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#TerminateApplication") }
	func prepareLaunchProgramFromHost(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#PrepareLaunchProgramFromHost") }
	func launchApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#LaunchApplication") }
	func launchApplicationWithStorageId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDevelopInterface#LaunchApplicationWithStorageId") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try launchProgram(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try terminateProcess(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try terminateProgram(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getShellEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 5:
			let ret = try getShellEventInfo()
			om.initialize(0, 0, 0)
		
		case 6:
			try terminateApplication()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try prepareLaunchProgramFromHost(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try launchApplication(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try launchApplicationWithStorageId(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IDevelopInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IGameCardStopper: IpcService {
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		default:
			print("Unhandled command to nn::ns::detail::IGameCardStopper: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IApplicationManagerInterface: IpcService {
	func listApplicationRecord(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationRecord") }
	func generateApplicationRecordCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GenerateApplicationRecordCount") }
	func getApplicationRecordUpdateSystemEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationRecordUpdateSystemEvent") }
	func getApplicationViewDeprecated(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationViewDeprecated") }
	func deleteApplicationEntity(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteApplicationEntity") }
	func deleteApplicationCompletely(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteApplicationCompletely") }
	func isAnyApplicationEntityRedundant() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsAnyApplicationEntityRedundant") }
	func deleteRedundantApplicationEntity() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteRedundantApplicationEntity") }
	func isApplicationEntityMovable(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsApplicationEntityMovable") }
	func moveApplicationEntity(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#MoveApplicationEntity") }
	func calculateApplicationOccupiedSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CalculateApplicationOccupiedSize") }
	func pushApplicationRecord(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#PushApplicationRecord") }
	func listApplicationRecordContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationRecordContentMeta") }
	func launchApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#LaunchApplication") }
	func getApplicationContentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationContentPath") }
	func terminateApplication(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#TerminateApplication") }
	func resolveApplicationContentPath(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResolveApplicationContentPath") }
	func beginInstallApplication(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#BeginInstallApplication") }
	func deleteApplicationRecord(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteApplicationRecord") }
	func requestApplicationUpdateInfo(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestApplicationUpdateInfo") }
	func cancelApplicationDownload(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CancelApplicationDownload") }
	func resumeApplicationDownload(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResumeApplicationDownload") }
	func updateVersionList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#UpdateVersionList") }
	func pushLaunchVersion(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#PushLaunchVersion") }
	func listRequiredVersion(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListRequiredVersion") }
	func checkApplicationLaunchVersion(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CheckApplicationLaunchVersion") }
	func checkApplicationLaunchRights(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CheckApplicationLaunchRights") }
	func getApplicationLogoData(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationLogoData") }
	func calculateApplicationDownloadRequiredSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CalculateApplicationDownloadRequiredSize") }
	func cleanupSdCard() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CleanupSdCard") }
	func checkSdCardMountStatus() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CheckSdCardMountStatus") }
	func getSdCardMountStatusChangedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetSdCardMountStatusChangedEvent") }
	func getGameCardAttachmentEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetGameCardAttachmentEvent") }
	func getGameCardAttachmentInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetGameCardAttachmentInfo") }
	func getTotalSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetTotalSpaceSize") }
	func getFreeSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetFreeSpaceSize") }
	func getSdCardRemovedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetSdCardRemovedEvent") }
	func getGameCardUpdateDetectionEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetGameCardUpdateDetectionEvent") }
	func disableApplicationAutoDelete(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DisableApplicationAutoDelete") }
	func enableApplicationAutoDelete(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#EnableApplicationAutoDelete") }
	func getApplicationDesiredLanguage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationDesiredLanguage") }
	func setApplicationTerminateResult(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#SetApplicationTerminateResult") }
	func clearApplicationTerminateResult(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ClearApplicationTerminateResult") }
	func getLastSdCardMountUnexpectedResult() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetLastSdCardMountUnexpectedResult") }
	func convertApplicationLanguageToLanguageCode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ConvertApplicationLanguageToLanguageCode") }
	func convertLanguageCodeToApplicationLanguage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ConvertLanguageCodeToApplicationLanguage") }
	func getBackgroundDownloadStressTaskInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetBackgroundDownloadStressTaskInfo") }
	func getGameCardStopper() throws -> NnNsDetail_IGameCardStopper { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetGameCardStopper") }
	func isSystemProgramInstalled(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsSystemProgramInstalled") }
	func startApplyDeltaTask(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#StartApplyDeltaTask") }
	func getRequestServerStopper() throws -> NnNsDetail_IRequestServerStopper { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetRequestServerStopper") }
	func getBackgroundApplyDeltaStressTaskInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetBackgroundApplyDeltaStressTaskInfo") }
	func cancelApplicationApplyDelta(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CancelApplicationApplyDelta") }
	func resumeApplicationApplyDelta(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResumeApplicationApplyDelta") }
	func calculateApplicationApplyDeltaRequiredSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CalculateApplicationApplyDeltaRequiredSize") }
	func resumeAll() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResumeAll") }
	func getStorageSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetStorageSize") }
	func requestDownloadApplication(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestDownloadApplication") }
	func requestDownloadAddOnContent(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestDownloadAddOnContent") }
	func downloadApplication(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DownloadApplication") }
	func checkApplicationResumeRights(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CheckApplicationResumeRights") }
	func getDynamicCommitEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetDynamicCommitEvent") }
	func requestUpdateApplication2(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestUpdateApplication2") }
	func enableApplicationCrashReport(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#EnableApplicationCrashReport") }
	func isApplicationCrashReportEnabled() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsApplicationCrashReportEnabled") }
	func boostSystemMemoryResourceLimit(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#BoostSystemMemoryResourceLimit") }
	func unknown91(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown91") }
	func unknown92(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown92") }
	func unknown93(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown93") }
	func launchApplication2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#LaunchApplication2") }
	func unknown95(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown95") }
	func unknown96(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown96") }
	func unknown97(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown97") }
	func unknown98(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown98") }
	func resetToFactorySettings() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResetToFactorySettings") }
	func resetToFactorySettingsWithoutUserSaveData() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResetToFactorySettingsWithoutUserSaveData") }
	func resetToFactorySettingsForRefurbishment() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResetToFactorySettingsForRefurbishment") }
	func calculateUserSaveDataStatistics(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CalculateUserSaveDataStatistics") }
	func deleteUserSaveDataAll(_ _0: Any?) throws -> NnNsDetail_IProgressMonitorForDeleteUserSaveDataAll { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteUserSaveDataAll") }
	func deleteUserSystemSaveData(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteUserSystemSaveData") }
	func unknown211(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown211") }
	func unregisterNetworkServiceAccount(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#UnregisterNetworkServiceAccount") }
	func unknown221(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown221") }
	func getApplicationShellEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationShellEvent") }
	func popApplicationShellEventInfo(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#PopApplicationShellEventInfo") }
	func launchLibraryApplet(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#LaunchLibraryApplet") }
	func terminateLibraryApplet(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#TerminateLibraryApplet") }
	func launchSystemApplet() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#LaunchSystemApplet") }
	func terminateSystemApplet(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#TerminateSystemApplet") }
	func launchOverlayApplet() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#LaunchOverlayApplet") }
	func terminateOverlayApplet(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#TerminateOverlayApplet") }
	func getApplicationControlData(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationControlData") }
	func invalidateAllApplicationControlCache() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#InvalidateAllApplicationControlCache") }
	func requestDownloadApplicationControlData(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestDownloadApplicationControlData") }
	func getMaxApplicationControlCacheCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetMaxApplicationControlCacheCount") }
	func invalidateApplicationControlCache(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#InvalidateApplicationControlCache") }
	func listApplicationControlCacheEntryInfo(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationControlCacheEntryInfo") }
	func unknown406(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown406") }
	func requestCheckGameCardRegistration(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestCheckGameCardRegistration") }
	func requestGameCardRegistrationGoldPoint(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestGameCardRegistrationGoldPoint") }
	func requestRegisterGameCard(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestRegisterGameCard") }
	func getGameCardMountFailureEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetGameCardMountFailureEvent") }
	func isGameCardInserted() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsGameCardInserted") }
	func ensureGameCardAccess() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#EnsureGameCardAccess") }
	func getLastGameCardMountFailureResult() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetLastGameCardMountFailureResult") }
	func listApplicationIdOnGameCard(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationIdOnGameCard") }
	func countApplicationContentMeta(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CountApplicationContentMeta") }
	func listApplicationContentMetaStatus(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationContentMetaStatus") }
	func listAvailableAddOnContent(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListAvailableAddOnContent") }
	func getOwnedApplicationContentMetaStatus(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetOwnedApplicationContentMetaStatus") }
	func registerContentsExternalKey(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RegisterContentsExternalKey") }
	func listApplicationContentMetaStatusWithRightsCheck(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationContentMetaStatusWithRightsCheck") }
	func getContentMetaStorage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetContentMetaStorage") }
	func unknown607(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown607") }
	func pushDownloadTaskList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#PushDownloadTaskList") }
	func clearTaskStatusList() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ClearTaskStatusList") }
	func requestDownloadTaskList() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestDownloadTaskList") }
	func requestEnsureDownloadTask() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestEnsureDownloadTask") }
	func listDownloadTaskStatus(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListDownloadTaskStatus") }
	func requestDownloadTaskListData() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestDownloadTaskListData") }
	func requestVersionList() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestVersionList") }
	func listVersionList(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListVersionList") }
	func requestVersionListData() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestVersionListData") }
	func getApplicationRecord(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationRecord") }
	func getApplicationRecordProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationRecordProperty") }
	func enableApplicationAutoUpdate(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#EnableApplicationAutoUpdate") }
	func disableApplicationAutoUpdate(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DisableApplicationAutoUpdate") }
	func touchApplication(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#TouchApplication") }
	func requestApplicationUpdate(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestApplicationUpdate") }
	func isApplicationUpdateRequested(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsApplicationUpdateRequested") }
	func withdrawApplicationUpdateRequest(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#WithdrawApplicationUpdateRequest") }
	func listApplicationRecordInstalledContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationRecordInstalledContentMeta") }
	func withdrawCleanupAddOnContentsWithNoRightsRecommendation(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#WithdrawCleanupAddOnContentsWithNoRightsRecommendation") }
	func unknown910(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown910") }
	func unknown911(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown911") }
	func unknown912(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown912") }
	func requestVerifyApplicationDeprecated(_ _0: Any?, _ _1: KObject) throws -> (KObject, NnNsDetail_IProgressAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestVerifyApplicationDeprecated") }
	func corruptApplicationForDebug(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CorruptApplicationForDebug") }
	func requestVerifyAddOnContentsRights(_ _0: Any?) throws -> (KObject, NnNsDetail_IProgressAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestVerifyAddOnContentsRights") }
	func requestVerifyApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestVerifyApplication") }
	func corruptContentForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CorruptContentForDebug") }
	func needsUpdateVulnerability() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#NeedsUpdateVulnerability") }
	func isAnyApplicationEntityInstalled(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsAnyApplicationEntityInstalled") }
	func deleteApplicationContentEntities(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteApplicationContentEntities") }
	func cleanupUnrecordedApplicationEntity(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CleanupUnrecordedApplicationEntity") }
	func cleanupAddOnContentsWithNoRights(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CleanupAddOnContentsWithNoRights") }
	func deleteApplicationContentEntity(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#DeleteApplicationContentEntity") }
	func unknown1308(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown1308") }
	func unknown1309(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown1309") }
	func prepareShutdown() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#PrepareShutdown") }
	func formatSdCard() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#FormatSdCard") }
	func needsSystemUpdateToFormatSdCard() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#NeedsSystemUpdateToFormatSdCard") }
	func getLastSdCardFormatUnexpectedResult() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetLastSdCardFormatUnexpectedResult") }
	func insertSdCard() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#InsertSdCard") }
	func removeSdCard() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RemoveSdCard") }
	func getSystemSeedForPseudoDeviceId() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetSystemSeedForPseudoDeviceId") }
	func resetSystemSeedForPseudoDeviceId() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ResetSystemSeedForPseudoDeviceId") }
	func listApplicationDownloadingContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListApplicationDownloadingContentMeta") }
	func getApplicationView(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationView") }
	func getApplicationDownloadTaskStatus(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationDownloadTaskStatus") }
	func getApplicationViewDownloadErrorContext(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationViewDownloadErrorContext") }
	func isNotificationSetupCompleted() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsNotificationSetupCompleted") }
	func getLastNotificationInfoCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetLastNotificationInfoCount") }
	func listLastNotificationInfo(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListLastNotificationInfo") }
	func listNotificationTask(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListNotificationTask") }
	func isActiveAccount(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#IsActiveAccount") }
	func requestDownloadApplicationPrepurchasedRights(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestDownloadApplicationPrepurchasedRights") }
	func getApplicationTicketInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationTicketInfo") }
	func getSystemDeliveryInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetSystemDeliveryInfo") }
	func selectLatestSystemDeliveryInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#SelectLatestSystemDeliveryInfo") }
	func verifyDeliveryProtocolVersion(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#VerifyDeliveryProtocolVersion") }
	func getApplicationDeliveryInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetApplicationDeliveryInfo") }
	func hasAllContentsToDeliver(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#HasAllContentsToDeliver") }
	func compareApplicationDeliveryInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CompareApplicationDeliveryInfo") }
	func canDeliverApplication(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CanDeliverApplication") }
	func listContentMetaKeyToDeliverApplication(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListContentMetaKeyToDeliverApplication") }
	func needsSystemUpdateToDeliverApplication(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#NeedsSystemUpdateToDeliverApplication") }
	func estimateRequiredSize(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#EstimateRequiredSize") }
	func requestReceiveApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestReceiveApplication") }
	func commitReceiveApplication(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CommitReceiveApplication") }
	func getReceiveApplicationProgress(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetReceiveApplicationProgress") }
	func requestSendApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#RequestSendApplication") }
	func getSendApplicationProgress(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#GetSendApplicationProgress") }
	func compareSystemDeliveryInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CompareSystemDeliveryInfo") }
	func listNotCommittedContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#ListNotCommittedContentMeta") }
	func createDownloadTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#CreateDownloadTask") }
	func unknown2018(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2018") }
	func unknown2050(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2050") }
	func unknown2100(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2100") }
	func unknown2101(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2101") }
	func unknown2150(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2150") }
	func unknown2151(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2151") }
	func unknown2152(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2152") }
	func unknown2153(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2153") }
	func unknown2154(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2154") }
	func unknown2160(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2160") }
	func unknown2161(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2161") }
	func unknown2170(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2170") }
	func unknown2171(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2171") }
	func unknown2180(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2180") }
	func unknown2181(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2181") }
	func unknown2182(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2182") }
	func unknown2190(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2190") }
	func unknown2199(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2199") }
	func unknown2200(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2200") }
	func unknown2201(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2201") }
	func unknown2250(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2250") }
	func unknown2300(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationManagerInterface#Unknown2300") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try listApplicationRecord(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try generateApplicationRecordCount()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getApplicationRecordUpdateSystemEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 3:
			try getApplicationViewDeprecated(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try deleteApplicationEntity(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try deleteApplicationCompletely(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try isAnyApplicationEntityRedundant()
			om.initialize(0, 0, 0)
		
		case 7:
			try deleteRedundantApplicationEntity()
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try isApplicationEntityMovable(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			try moveApplicationEntity(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try calculateApplicationOccupiedSize(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			try pushApplicationRecord(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try listApplicationRecordContentMeta(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try launchApplication(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			try getApplicationContentPath(nil, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			try terminateApplication(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			try resolveApplicationContentPath(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			try beginInstallApplication(nil)
			om.initialize(0, 0, 0)
		
		case 27:
			try deleteApplicationRecord(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			let (_0, _1) = try requestApplicationUpdateInfo(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 32:
			try cancelApplicationDownload(nil)
			om.initialize(0, 0, 0)
		
		case 33:
			try resumeApplicationDownload(nil)
			om.initialize(0, 0, 0)
		
		case 35:
			try updateVersionList(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 36:
			try pushLaunchVersion(nil)
			om.initialize(0, 0, 0)
		
		case 37:
			let ret = try listRequiredVersion(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 38:
			try checkApplicationLaunchVersion(nil)
			om.initialize(0, 0, 0)
		
		case 39:
			try checkApplicationLaunchRights(nil)
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try getApplicationLogoData(nil, im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 41:
			let ret = try calculateApplicationDownloadRequiredSize(nil)
			om.initialize(0, 0, 0)
		
		case 42:
			try cleanupSdCard()
			om.initialize(0, 0, 0)
		
		case 43:
			try checkSdCardMountStatus()
			om.initialize(0, 0, 0)
		
		case 44:
			let ret = try getSdCardMountStatusChangedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 45:
			let ret = try getGameCardAttachmentEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 46:
			let ret = try getGameCardAttachmentInfo()
			om.initialize(0, 0, 0)
		
		case 47:
			let ret = try getTotalSpaceSize(nil)
			om.initialize(0, 0, 0)
		
		case 48:
			let ret = try getFreeSpaceSize(nil)
			om.initialize(0, 0, 0)
		
		case 49:
			let ret = try getSdCardRemovedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 52:
			let ret = try getGameCardUpdateDetectionEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 53:
			try disableApplicationAutoDelete(nil)
			om.initialize(0, 0, 0)
		
		case 54:
			try enableApplicationAutoDelete(nil)
			om.initialize(0, 0, 0)
		
		case 55:
			let ret = try getApplicationDesiredLanguage(nil)
			om.initialize(0, 0, 0)
		
		case 56:
			try setApplicationTerminateResult(nil)
			om.initialize(0, 0, 0)
		
		case 57:
			try clearApplicationTerminateResult(nil)
			om.initialize(0, 0, 0)
		
		case 58:
			try getLastSdCardMountUnexpectedResult()
			om.initialize(0, 0, 0)
		
		case 59:
			let ret = try convertApplicationLanguageToLanguageCode(nil)
			om.initialize(0, 0, 0)
		
		case 60:
			let ret = try convertLanguageCodeToApplicationLanguage(nil)
			om.initialize(0, 0, 0)
		
		case 61:
			let ret = try getBackgroundDownloadStressTaskInfo()
			om.initialize(0, 0, 0)
		
		case 62:
			let ret = try getGameCardStopper()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 63:
			let ret = try isSystemProgramInstalled(nil)
			om.initialize(0, 0, 0)
		
		case 64:
			try startApplyDeltaTask(nil)
			om.initialize(0, 0, 0)
		
		case 65:
			let ret = try getRequestServerStopper()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 66:
			let ret = try getBackgroundApplyDeltaStressTaskInfo()
			om.initialize(0, 0, 0)
		
		case 67:
			try cancelApplicationApplyDelta(nil)
			om.initialize(0, 0, 0)
		
		case 68:
			try resumeApplicationApplyDelta(nil)
			om.initialize(0, 0, 0)
		
		case 69:
			let ret = try calculateApplicationApplyDeltaRequiredSize(nil)
			om.initialize(0, 0, 0)
		
		case 70:
			try resumeAll()
			om.initialize(0, 0, 0)
		
		case 71:
			let ret = try getStorageSize(nil)
			om.initialize(0, 0, 0)
		
		case 80:
			let (_0, _1) = try requestDownloadApplication(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 81:
			let (_0, _1) = try requestDownloadAddOnContent(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 82:
			try downloadApplication(nil)
			om.initialize(0, 0, 0)
		
		case 83:
			try checkApplicationResumeRights(nil)
			om.initialize(0, 0, 0)
		
		case 84:
			let ret = try getDynamicCommitEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 85:
			let (_0, _1) = try requestUpdateApplication2(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 86:
			try enableApplicationCrashReport(nil)
			om.initialize(0, 0, 0)
		
		case 87:
			let ret = try isApplicationCrashReportEnabled()
			om.initialize(0, 0, 0)
		
		case 90:
			try boostSystemMemoryResourceLimit(nil)
			om.initialize(0, 0, 0)
		
		case 91:
			let ret = try unknown91(nil)
			om.initialize(0, 0, 0)
		
		case 92:
			let ret = try unknown92(nil)
			om.initialize(0, 0, 0)
		
		case 93:
			let ret = try unknown93(nil)
			om.initialize(0, 0, 0)
		
		case 94:
			let ret = try launchApplication2(nil)
			om.initialize(0, 0, 0)
		
		case 95:
			let ret = try unknown95(nil)
			om.initialize(0, 0, 0)
		
		case 96:
			let ret = try unknown96(nil)
			om.initialize(0, 0, 0)
		
		case 97:
			let ret = try unknown97(nil)
			om.initialize(0, 0, 0)
		
		case 98:
			let ret = try unknown98(nil)
			om.initialize(0, 0, 0)
		
		case 100:
			try resetToFactorySettings()
			om.initialize(0, 0, 0)
		
		case 101:
			try resetToFactorySettingsWithoutUserSaveData()
			om.initialize(0, 0, 0)
		
		case 102:
			try resetToFactorySettingsForRefurbishment()
			om.initialize(0, 0, 0)
		
		case 200:
			let ret = try calculateUserSaveDataStatistics(nil)
			om.initialize(0, 0, 0)
		
		case 201:
			let ret = try deleteUserSaveDataAll(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 210:
			try deleteUserSystemSaveData(nil)
			om.initialize(0, 0, 0)
		
		case 211:
			let ret = try unknown211(nil)
			om.initialize(0, 0, 0)
		
		case 220:
			try unregisterNetworkServiceAccount(nil)
			om.initialize(0, 0, 0)
		
		case 221:
			let ret = try unknown221(nil)
			om.initialize(0, 0, 0)
		
		case 300:
			let ret = try getApplicationShellEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 301:
			let ret = try popApplicationShellEventInfo(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 302:
			let ret = try launchLibraryApplet(nil)
			om.initialize(0, 0, 0)
		
		case 303:
			try terminateLibraryApplet(nil)
			om.initialize(0, 0, 0)
		
		case 304:
			let ret = try launchSystemApplet()
			om.initialize(0, 0, 0)
		
		case 305:
			try terminateSystemApplet(nil)
			om.initialize(0, 0, 0)
		
		case 306:
			let ret = try launchOverlayApplet()
			om.initialize(0, 0, 0)
		
		case 307:
			try terminateOverlayApplet(nil)
			om.initialize(0, 0, 0)
		
		case 400:
			let ret = try getApplicationControlData(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 401:
			try invalidateAllApplicationControlCache()
			om.initialize(0, 0, 0)
		
		case 402:
			let (_0, _1) = try requestDownloadApplicationControlData(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 403:
			let ret = try getMaxApplicationControlCacheCount()
			om.initialize(0, 0, 0)
		
		case 404:
			try invalidateApplicationControlCache(nil)
			om.initialize(0, 0, 0)
		
		case 405:
			let ret = try listApplicationControlCacheEntryInfo(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 406:
			let ret = try unknown406(nil)
			om.initialize(0, 0, 0)
		
		case 502:
			let (_0, _1) = try requestCheckGameCardRegistration(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 503:
			let (_0, _1) = try requestGameCardRegistrationGoldPoint(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 504:
			let (_0, _1) = try requestRegisterGameCard(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 505:
			let ret = try getGameCardMountFailureEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 506:
			let ret = try isGameCardInserted()
			om.initialize(0, 0, 0)
		
		case 507:
			try ensureGameCardAccess()
			om.initialize(0, 0, 0)
		
		case 508:
			try getLastGameCardMountFailureResult()
			om.initialize(0, 0, 0)
		
		case 509:
			let ret = try listApplicationIdOnGameCard(nil)
			om.initialize(0, 0, 0)
		
		case 600:
			let ret = try countApplicationContentMeta(nil)
			om.initialize(0, 0, 0)
		
		case 601:
			let ret = try listApplicationContentMetaStatus(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 602:
			let ret = try listAvailableAddOnContent(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 603:
			let ret = try getOwnedApplicationContentMetaStatus(nil)
			om.initialize(0, 0, 0)
		
		case 604:
			try registerContentsExternalKey(nil)
			om.initialize(0, 0, 0)
		
		case 605:
			let ret = try listApplicationContentMetaStatusWithRightsCheck(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 606:
			let ret = try getContentMetaStorage(nil)
			om.initialize(0, 0, 0)
		
		case 607:
			let ret = try unknown607(nil)
			om.initialize(0, 0, 0)
		
		case 700:
			try pushDownloadTaskList(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 701:
			try clearTaskStatusList()
			om.initialize(0, 0, 0)
		
		case 702:
			try requestDownloadTaskList()
			om.initialize(0, 0, 0)
		
		case 703:
			let (_0, _1) = try requestEnsureDownloadTask()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 704:
			let ret = try listDownloadTaskStatus(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 705:
			let (_0, _1) = try requestDownloadTaskListData()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 800:
			try requestVersionList()
			om.initialize(0, 0, 0)
		
		case 801:
			let ret = try listVersionList(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 802:
			let (_0, _1) = try requestVersionListData()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 900:
			let ret = try getApplicationRecord(nil)
			om.initialize(0, 0, 0)
		
		case 901:
			try getApplicationRecordProperty(nil, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 902:
			try enableApplicationAutoUpdate(nil)
			om.initialize(0, 0, 0)
		
		case 903:
			try disableApplicationAutoUpdate(nil)
			om.initialize(0, 0, 0)
		
		case 904:
			try touchApplication(nil)
			om.initialize(0, 0, 0)
		
		case 905:
			try requestApplicationUpdate(nil)
			om.initialize(0, 0, 0)
		
		case 906:
			let ret = try isApplicationUpdateRequested(nil)
			om.initialize(0, 0, 0)
		
		case 907:
			try withdrawApplicationUpdateRequest(nil)
			om.initialize(0, 0, 0)
		
		case 908:
			let ret = try listApplicationRecordInstalledContentMeta(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 909:
			try withdrawCleanupAddOnContentsWithNoRightsRecommendation(nil)
			om.initialize(0, 0, 0)
		
		case 910:
			let ret = try unknown910(nil)
			om.initialize(0, 0, 0)
		
		case 911:
			let ret = try unknown911(nil)
			om.initialize(0, 0, 0)
		
		case 912:
			let ret = try unknown912(nil)
			om.initialize(0, 0, 0)
		
		case 1000:
			let (_0, _1) = try requestVerifyApplicationDeprecated(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 1001:
			try corruptApplicationForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1002:
			let (_0, _1) = try requestVerifyAddOnContentsRights(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 1003:
			let ret = try requestVerifyApplication(nil)
			om.initialize(0, 0, 0)
		
		case 1004:
			let ret = try corruptContentForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1200:
			let ret = try needsUpdateVulnerability()
			om.initialize(0, 0, 0)
		
		case 1300:
			let ret = try isAnyApplicationEntityInstalled(nil)
			om.initialize(0, 0, 0)
		
		case 1301:
			try deleteApplicationContentEntities(nil)
			om.initialize(0, 0, 0)
		
		case 1302:
			try cleanupUnrecordedApplicationEntity(nil)
			om.initialize(0, 0, 0)
		
		case 1303:
			try cleanupAddOnContentsWithNoRights(nil)
			om.initialize(0, 0, 0)
		
		case 1304:
			try deleteApplicationContentEntity(nil)
			om.initialize(0, 0, 0)
		
		case 1308:
			let ret = try unknown1308(nil)
			om.initialize(0, 0, 0)
		
		case 1309:
			let ret = try unknown1309(nil)
			om.initialize(0, 0, 0)
		
		case 1400:
			try prepareShutdown()
			om.initialize(0, 0, 0)
		
		case 1500:
			try formatSdCard()
			om.initialize(0, 0, 0)
		
		case 1501:
			let ret = try needsSystemUpdateToFormatSdCard()
			om.initialize(0, 0, 0)
		
		case 1502:
			try getLastSdCardFormatUnexpectedResult()
			om.initialize(0, 0, 0)
		
		case 1504:
			try insertSdCard()
			om.initialize(0, 0, 0)
		
		case 1505:
			try removeSdCard()
			om.initialize(0, 0, 0)
		
		case 1600:
			let ret = try getSystemSeedForPseudoDeviceId()
			om.initialize(0, 0, 0)
		
		case 1601:
			try resetSystemSeedForPseudoDeviceId()
			om.initialize(0, 0, 0)
		
		case 1700:
			let ret = try listApplicationDownloadingContentMeta(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1701:
			try getApplicationView(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1702:
			let ret = try getApplicationDownloadTaskStatus(nil)
			om.initialize(0, 0, 0)
		
		case 1703:
			try getApplicationViewDownloadErrorContext(nil, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1800:
			let ret = try isNotificationSetupCompleted()
			om.initialize(0, 0, 0)
		
		case 1801:
			let ret = try getLastNotificationInfoCount()
			om.initialize(0, 0, 0)
		
		case 1802:
			let ret = try listLastNotificationInfo(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1803:
			let ret = try listNotificationTask(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1900:
			let ret = try isActiveAccount(nil)
			om.initialize(0, 0, 0)
		
		case 1901:
			let (_0, _1) = try requestDownloadApplicationPrepurchasedRights(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 1902:
			let ret = try getApplicationTicketInfo(nil)
			om.initialize(0, 0, 0)
		
		case 2000:
			try getSystemDeliveryInfo(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2001:
			let ret = try selectLatestSystemDeliveryInfo(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2002:
			try verifyDeliveryProtocolVersion(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2003:
			let ret = try getApplicationDeliveryInfo(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2004:
			let ret = try hasAllContentsToDeliver(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2005:
			let ret = try compareApplicationDeliveryInfo(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2006:
			let ret = try canDeliverApplication(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2007:
			let ret = try listContentMetaKeyToDeliverApplication(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2008:
			let ret = try needsSystemUpdateToDeliverApplication(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2009:
			let ret = try estimateRequiredSize(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2010:
			let (_0, _1) = try requestReceiveApplication(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 2011:
			try commitReceiveApplication(nil)
			om.initialize(0, 0, 0)
		
		case 2012:
			let ret = try getReceiveApplicationProgress(nil)
			om.initialize(0, 0, 0)
		
		case 2013:
			let (_0, _1) = try requestSendApplication(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 2014:
			let ret = try getSendApplicationProgress(nil)
			om.initialize(0, 0, 0)
		
		case 2015:
			let ret = try compareSystemDeliveryInfo(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x15, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2016:
			let ret = try listNotCommittedContentMeta(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2017:
			try createDownloadTask(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2018:
			let ret = try unknown2018(nil)
			om.initialize(0, 0, 0)
		
		case 2050:
			let ret = try unknown2050(nil)
			om.initialize(0, 0, 0)
		
		case 2100:
			let ret = try unknown2100(nil)
			om.initialize(0, 0, 0)
		
		case 2101:
			let ret = try unknown2101(nil)
			om.initialize(0, 0, 0)
		
		case 2150:
			let ret = try unknown2150(nil)
			om.initialize(0, 0, 0)
		
		case 2151:
			let ret = try unknown2151(nil)
			om.initialize(0, 0, 0)
		
		case 2152:
			let ret = try unknown2152(nil)
			om.initialize(0, 0, 0)
		
		case 2153:
			let ret = try unknown2153(nil)
			om.initialize(0, 0, 0)
		
		case 2154:
			let ret = try unknown2154(nil)
			om.initialize(0, 0, 0)
		
		case 2160:
			let ret = try unknown2160(nil)
			om.initialize(0, 0, 0)
		
		case 2161:
			let ret = try unknown2161(nil)
			om.initialize(0, 0, 0)
		
		case 2170:
			let ret = try unknown2170(nil)
			om.initialize(0, 0, 0)
		
		case 2171:
			let ret = try unknown2171(nil)
			om.initialize(0, 0, 0)
		
		case 2180:
			let ret = try unknown2180(nil)
			om.initialize(0, 0, 0)
		
		case 2181:
			let ret = try unknown2181(nil)
			om.initialize(0, 0, 0)
		
		case 2182:
			let ret = try unknown2182(nil)
			om.initialize(0, 0, 0)
		
		case 2190:
			let ret = try unknown2190(nil)
			om.initialize(0, 0, 0)
		
		case 2199:
			let ret = try unknown2199(nil)
			om.initialize(0, 0, 0)
		
		case 2200:
			let ret = try unknown2200(nil)
			om.initialize(0, 0, 0)
		
		case 2201:
			let ret = try unknown2201(nil)
			om.initialize(0, 0, 0)
		
		case 2250:
			let ret = try unknown2250(nil)
			om.initialize(0, 0, 0)
		
		case 2300:
			let ret = try unknown2300(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IApplicationManagerInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_ISystemUpdateInterface: IpcService {
	func getBackgroundNetworkUpdateState() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#GetBackgroundNetworkUpdateState") }
	func openSystemUpdateControl() throws -> NnNsDetail_ISystemUpdateControl { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#OpenSystemUpdateControl") }
	func notifyExFatDriverRequired() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#NotifyExFatDriverRequired") }
	func clearExFatDriverStatusForDebug() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#ClearExFatDriverStatusForDebug") }
	func requestBackgroundNetworkUpdate() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#RequestBackgroundNetworkUpdate") }
	func notifyBackgroundNetworkUpdate(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#NotifyBackgroundNetworkUpdate") }
	func notifyExFatDriverDownloadedForDebug() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#NotifyExFatDriverDownloadedForDebug") }
	func getSystemUpdateNotificationEventForContentDelivery() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#GetSystemUpdateNotificationEventForContentDelivery") }
	func notifySystemUpdateForContentDelivery() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#NotifySystemUpdateForContentDelivery") }
	func prepareShutdown() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#PrepareShutdown") }
	func destroySystemUpdateTask() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#DestroySystemUpdateTask") }
	func requestSendSystemUpdate(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#RequestSendSystemUpdate") }
	func getSendSystemUpdateProgress() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateInterface#GetSendSystemUpdateProgress") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getBackgroundNetworkUpdateState()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try openSystemUpdateControl()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			try notifyExFatDriverRequired()
			om.initialize(0, 0, 0)
		
		case 3:
			try clearExFatDriverStatusForDebug()
			om.initialize(0, 0, 0)
		
		case 4:
			try requestBackgroundNetworkUpdate()
			om.initialize(0, 0, 0)
		
		case 5:
			try notifyBackgroundNetworkUpdate(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try notifyExFatDriverDownloadedForDebug()
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getSystemUpdateNotificationEventForContentDelivery()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 10:
			try notifySystemUpdateForContentDelivery()
			om.initialize(0, 0, 0)
		
		case 11:
			try prepareShutdown()
			om.initialize(0, 0, 0)
		
		case 16:
			try destroySystemUpdateTask()
			om.initialize(0, 0, 0)
		
		case 17:
			let (_0, _1) = try requestSendSystemUpdate(nil, im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 18:
			let ret = try getSendSystemUpdateProgress()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::ISystemUpdateInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IDownloadTaskInterface: IpcService {
	func clearTaskStatusList() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#ClearTaskStatusList") }
	func requestDownloadTaskList() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#RequestDownloadTaskList") }
	func requestEnsureDownloadTask() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#RequestEnsureDownloadTask") }
	func listDownloadTaskStatus(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#ListDownloadTaskStatus") }
	func requestDownloadTaskListData() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#RequestDownloadTaskListData") }
	func tryCommitCurrentApplicationDownloadTask() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#TryCommitCurrentApplicationDownloadTask") }
	func enableAutoCommit() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#EnableAutoCommit") }
	func disableAutoCommit() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#DisableAutoCommit") }
	func triggerDynamicCommitEvent() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDownloadTaskInterface#TriggerDynamicCommitEvent") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 701:
			try clearTaskStatusList()
			om.initialize(0, 0, 0)
		
		case 702:
			try requestDownloadTaskList()
			om.initialize(0, 0, 0)
		
		case 703:
			let (_0, _1) = try requestEnsureDownloadTask()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 704:
			let ret = try listDownloadTaskStatus(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 705:
			let (_0, _1) = try requestDownloadTaskListData()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 706:
			try tryCommitCurrentApplicationDownloadTask()
			om.initialize(0, 0, 0)
		
		case 707:
			try enableAutoCommit()
			om.initialize(0, 0, 0)
		
		case 708:
			try disableAutoCommit()
			om.initialize(0, 0, 0)
		
		case 709:
			try triggerDynamicCommitEvent()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IDownloadTaskInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IApplicationVersionInterface: IpcService {
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown0") }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown1") }
	func unknown35(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown35") }
	func unknown36(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown36") }
	func unknown37(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown37") }
	func unknown800() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown800") }
	func unknown801(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown801") }
	func unknown802() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown802") }
	func unknown1000() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IApplicationVersionInterface#Unknown1000") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(nil)
			om.initialize(0, 0, 0)
		
		case 35:
			try unknown35(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 36:
			try unknown36(nil)
			om.initialize(0, 0, 0)
		
		case 37:
			let ret = try unknown37(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 800:
			try unknown800()
			om.initialize(0, 0, 0)
		
		case 801:
			let ret = try unknown801(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 802:
			let (_0, _1) = try unknown802()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 1000:
			try unknown1000()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IApplicationVersionInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IProgressAsyncResult: IpcService {
	func unknown0() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressAsyncResult#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressAsyncResult#Unknown1") }
	func unknown2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressAsyncResult#Unknown2") }
	func unknown3() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressAsyncResult#Unknown3") }
	func unknown4(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressAsyncResult#Unknown4") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IProgressAsyncResult: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IDocumentInterface: IpcService {
	func getApplicationContentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDocumentInterface#GetApplicationContentPath") }
	func resolveApplicationContentPath(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IDocumentInterface#ResolveApplicationContentPath") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 21:
			try getApplicationContentPath(nil, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 23:
			try resolveApplicationContentPath(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IDocumentInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_ISystemUpdateControl: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown0") }
	func unknown1() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown1") }
	func unknown2() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown2") }
	func unknown3() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown3") }
	func unknown4() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown4") }
	func unknown5() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown5") }
	func unknown6() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown6") }
	func unknown7() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown7") }
	func unknown8() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown8") }
	func unknown9(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown9") }
	func unknown10(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown10") }
	func unknown11(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown11") }
	func unknown12(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown12") }
	func unknown13(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown13") }
	func unknown14(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown14") }
	func unknown15() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown15") }
	func unknown16(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown16") }
	func unknown17() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown17") }
	func unknown18() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown18") }
	func unknown19(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown19") }
	func unknown20(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown20") }
	func unknown21() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::ISystemUpdateControl#Unknown21") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			let (_0, _1) = try unknown1()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 2:
			let (_0, _1) = try unknown2()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 3:
			let ret = try unknown3()
			om.initialize(0, 0, 0)
		
		case 4:
			try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			let (_0, _1) = try unknown5()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 6:
			let ret = try unknown6()
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try unknown7()
			om.initialize(0, 0, 0)
		
		case 8:
			try unknown8()
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try unknown9(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			try unknown11(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try unknown12(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try unknown13(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try unknown14(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try unknown15()
			om.initialize(0, 0, 0)
		
		case 16:
			let (_0, _1) = try unknown16(nil, im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 17:
			let ret = try unknown17()
			om.initialize(0, 0, 0)
		
		case 18:
			try unknown18()
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try unknown19(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try unknown20(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			try unknown21()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::ISystemUpdateControl: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IAsyncValue: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncValue#Unknown0") }
	func unknown1(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncValue#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncValue#Unknown2") }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncValue#Unknown3") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IAsyncValue: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IVulnerabilityManagerInterface: IpcService {
	func needsUpdateVulnerability() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IVulnerabilityManagerInterface#NeedsUpdateVulnerability") }
	func updateSafeSystemVersionForDebug(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IVulnerabilityManagerInterface#UpdateSafeSystemVersionForDebug") }
	func getSafeSystemVersion() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IVulnerabilityManagerInterface#GetSafeSystemVersion") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1200:
			let ret = try needsUpdateVulnerability()
			om.initialize(0, 0, 0)
		
		case 1201:
			try updateSafeSystemVersionForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1202:
			let ret = try getSafeSystemVersion()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IVulnerabilityManagerInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IProgressMonitorForDeleteUserSaveDataAll: IpcService {
	func unknown0() throws -> KObject { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressMonitorForDeleteUserSaveDataAll#Unknown0") }
	func unknown1() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressMonitorForDeleteUserSaveDataAll#Unknown1") }
	func unknown2() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressMonitorForDeleteUserSaveDataAll#Unknown2") }
	func unknown10() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IProgressMonitorForDeleteUserSaveDataAll#Unknown10") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try unknown10()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IProgressMonitorForDeleteUserSaveDataAll: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IRequestServerStopper: IpcService {
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		default:
			print("Unhandled command to nn::ns::detail::IRequestServerStopper: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IFactoryResetInterface: IpcService {
	func resetToFactorySettings() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IFactoryResetInterface#ResetToFactorySettings") }
	func resetToFactorySettingsWithoutUserSaveData() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IFactoryResetInterface#ResetToFactorySettingsWithoutUserSaveData") }
	func resetToFactorySettingsForRefurbishment() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IFactoryResetInterface#ResetToFactorySettingsForRefurbishment") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 100:
			try resetToFactorySettings()
			om.initialize(0, 0, 0)
		
		case 101:
			try resetToFactorySettingsWithoutUserSaveData()
			om.initialize(0, 0, 0)
		
		case 102:
			try resetToFactorySettingsForRefurbishment()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IFactoryResetInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IAsyncResult: IpcService {
	func unknown0() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncResult#Unknown0") }
	func unknown1() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncResult#Unknown1") }
	func unknown2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAsyncResult#Unknown2") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IAsyncResult: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IContentManagementInterface: IpcService {
	func calculateApplicationOccupiedSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#CalculateApplicationOccupiedSize") }
	func checkSdCardMountStatus() throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#CheckSdCardMountStatus") }
	func getTotalSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#GetTotalSpaceSize") }
	func getFreeSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#GetFreeSpaceSize") }
	func countApplicationContentMeta(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#CountApplicationContentMeta") }
	func listApplicationContentMetaStatus(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#ListApplicationContentMetaStatus") }
	func listApplicationContentMetaStatusWithRightsCheck(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#ListApplicationContentMetaStatusWithRightsCheck") }
	func isAnyApplicationRunning() throws -> Any? { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IContentManagementInterface#IsAnyApplicationRunning") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 11:
			let ret = try calculateApplicationOccupiedSize(nil)
			om.initialize(0, 0, 0)
		
		case 43:
			try checkSdCardMountStatus()
			om.initialize(0, 0, 0)
		
		case 47:
			let ret = try getTotalSpaceSize(nil)
			om.initialize(0, 0, 0)
		
		case 48:
			let ret = try getFreeSpaceSize(nil)
			om.initialize(0, 0, 0)
		
		case 600:
			let ret = try countApplicationContentMeta(nil)
			om.initialize(0, 0, 0)
		
		case 601:
			let ret = try listApplicationContentMetaStatus(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 605:
			let ret = try listApplicationContentMetaStatusWithRightsCheck(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 607:
			let ret = try isAnyApplicationRunning()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IContentManagementInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IECommerceInterface: IpcService {
	func unknown0(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IECommerceInterface#Unknown0") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try unknown0(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		default:
			print("Unhandled command to nn::ns::detail::IECommerceInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IAccountProxyInterface: IpcService {
	func createUserAccount(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IAccountProxyInterface#CreateUserAccount") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try createUserAccount(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ns::detail::IAccountProxyInterface: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNsDetail_IServiceGetterInterface: IpcService {
	func getECommerceInterface() throws -> NnNsDetail_IECommerceInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetECommerceInterface") }
	func getApplicationVersionInterface() throws -> NnNsDetail_IApplicationVersionInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetApplicationVersionInterface") }
	func getFactoryResetInterface() throws -> NnNsDetail_IFactoryResetInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetFactoryResetInterface") }
	func getAccountProxyInterface() throws -> NnNsDetail_IAccountProxyInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetAccountProxyInterface") }
	func getApplicationManagerInterface() throws -> NnNsDetail_IApplicationManagerInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetApplicationManagerInterface") }
	func getDownloadTaskInterface() throws -> NnNsDetail_IDownloadTaskInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetDownloadTaskInterface") }
	func getContentManagementInterface() throws -> NnNsDetail_IContentManagementInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetContentManagementInterface") }
	func getDocumentInterface() throws -> NnNsDetail_IDocumentInterface { throw IpcError.unimplemented(name: "nn::ns::detail::nn::ns::detail::IServiceGetterInterface#GetDocumentInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 7992:
			let ret = try getECommerceInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7993:
			let ret = try getApplicationVersionInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7994:
			let ret = try getFactoryResetInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7995:
			let ret = try getAccountProxyInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7996:
			let ret = try getApplicationManagerInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7997:
			let ret = try getDownloadTaskInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7998:
			let ret = try getContentManagementInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7999:
			let ret = try getDocumentInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::ns::detail::IServiceGetterInterface: \(im.commandId)")
			try! bailout()
		}
	}
}
