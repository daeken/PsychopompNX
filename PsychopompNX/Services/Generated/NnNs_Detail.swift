class NnNsDetail_IDevelopInterface: IpcService {
	func launchProgram(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func terminateProcess(_ _0: Any?) throws { throw IpcError.unimplemented }
	func terminateProgram(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getShellEventHandle() throws -> KObject { throw IpcError.unimplemented }
	func getShellEventInfo() throws -> Any? { throw IpcError.unimplemented }
	func terminateApplication() throws { throw IpcError.unimplemented }
	func prepareLaunchProgramFromHost(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func launchApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func launchApplicationWithStorageId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
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
	func listApplicationRecord(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func generateApplicationRecordCount() throws -> Any? { throw IpcError.unimplemented }
	func getApplicationRecordUpdateSystemEvent() throws -> KObject { throw IpcError.unimplemented }
	func getApplicationViewDeprecated(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteApplicationEntity(_ _0: Any?) throws { throw IpcError.unimplemented }
	func deleteApplicationCompletely(_ _0: Any?) throws { throw IpcError.unimplemented }
	func isAnyApplicationEntityRedundant() throws -> Any? { throw IpcError.unimplemented }
	func deleteRedundantApplicationEntity() throws { throw IpcError.unimplemented }
	func isApplicationEntityMovable(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func moveApplicationEntity(_ _0: Any?) throws { throw IpcError.unimplemented }
	func calculateApplicationOccupiedSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func pushApplicationRecord(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func listApplicationRecordContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func launchApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getApplicationContentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func terminateApplication(_ _0: Any?) throws { throw IpcError.unimplemented }
	func resolveApplicationContentPath(_ _0: Any?) throws { throw IpcError.unimplemented }
	func beginInstallApplication(_ _0: Any?) throws { throw IpcError.unimplemented }
	func deleteApplicationRecord(_ _0: Any?) throws { throw IpcError.unimplemented }
	func requestApplicationUpdateInfo(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func cancelApplicationDownload(_ _0: Any?) throws { throw IpcError.unimplemented }
	func resumeApplicationDownload(_ _0: Any?) throws { throw IpcError.unimplemented }
	func updateVersionList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func pushLaunchVersion(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listRequiredVersion(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func checkApplicationLaunchVersion(_ _0: Any?) throws { throw IpcError.unimplemented }
	func checkApplicationLaunchRights(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getApplicationLogoData(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func calculateApplicationDownloadRequiredSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func cleanupSdCard() throws { throw IpcError.unimplemented }
	func checkSdCardMountStatus() throws { throw IpcError.unimplemented }
	func getSdCardMountStatusChangedEvent() throws -> KObject { throw IpcError.unimplemented }
	func getGameCardAttachmentEvent() throws -> KObject { throw IpcError.unimplemented }
	func getGameCardAttachmentInfo() throws -> Any? { throw IpcError.unimplemented }
	func getTotalSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getFreeSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSdCardRemovedEvent() throws -> KObject { throw IpcError.unimplemented }
	func getGameCardUpdateDetectionEvent() throws -> KObject { throw IpcError.unimplemented }
	func disableApplicationAutoDelete(_ _0: Any?) throws { throw IpcError.unimplemented }
	func enableApplicationAutoDelete(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getApplicationDesiredLanguage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setApplicationTerminateResult(_ _0: Any?) throws { throw IpcError.unimplemented }
	func clearApplicationTerminateResult(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getLastSdCardMountUnexpectedResult() throws { throw IpcError.unimplemented }
	func convertApplicationLanguageToLanguageCode(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func convertLanguageCodeToApplicationLanguage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getBackgroundDownloadStressTaskInfo() throws -> Any? { throw IpcError.unimplemented }
	func getGameCardStopper() throws -> NnNsDetail_IGameCardStopper { throw IpcError.unimplemented }
	func isSystemProgramInstalled(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func startApplyDeltaTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getRequestServerStopper() throws -> NnNsDetail_IRequestServerStopper { throw IpcError.unimplemented }
	func getBackgroundApplyDeltaStressTaskInfo() throws -> Any? { throw IpcError.unimplemented }
	func cancelApplicationApplyDelta(_ _0: Any?) throws { throw IpcError.unimplemented }
	func resumeApplicationApplyDelta(_ _0: Any?) throws { throw IpcError.unimplemented }
	func calculateApplicationApplyDeltaRequiredSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func resumeAll() throws { throw IpcError.unimplemented }
	func getStorageSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestDownloadApplication(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestDownloadAddOnContent(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func downloadApplication(_ _0: Any?) throws { throw IpcError.unimplemented }
	func checkApplicationResumeRights(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getDynamicCommitEvent() throws -> KObject { throw IpcError.unimplemented }
	func requestUpdateApplication2(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func enableApplicationCrashReport(_ _0: Any?) throws { throw IpcError.unimplemented }
	func isApplicationCrashReportEnabled() throws -> Any? { throw IpcError.unimplemented }
	func boostSystemMemoryResourceLimit(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown91(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown92(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown93(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func launchApplication2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown95(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown96(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown97(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown98(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func resetToFactorySettings() throws { throw IpcError.unimplemented }
	func resetToFactorySettingsWithoutUserSaveData() throws { throw IpcError.unimplemented }
	func resetToFactorySettingsForRefurbishment() throws { throw IpcError.unimplemented }
	func calculateUserSaveDataStatistics(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func deleteUserSaveDataAll(_ _0: Any?) throws -> NnNsDetail_IProgressMonitorForDeleteUserSaveDataAll { throw IpcError.unimplemented }
	func deleteUserSystemSaveData(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown211(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unregisterNetworkServiceAccount(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown221(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getApplicationShellEvent() throws -> KObject { throw IpcError.unimplemented }
	func popApplicationShellEventInfo(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func launchLibraryApplet(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func terminateLibraryApplet(_ _0: Any?) throws { throw IpcError.unimplemented }
	func launchSystemApplet() throws -> Any? { throw IpcError.unimplemented }
	func terminateSystemApplet(_ _0: Any?) throws { throw IpcError.unimplemented }
	func launchOverlayApplet() throws -> Any? { throw IpcError.unimplemented }
	func terminateOverlayApplet(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getApplicationControlData(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func invalidateAllApplicationControlCache() throws { throw IpcError.unimplemented }
	func requestDownloadApplicationControlData(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getMaxApplicationControlCacheCount() throws -> Any? { throw IpcError.unimplemented }
	func invalidateApplicationControlCache(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listApplicationControlCacheEntryInfo(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown406(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestCheckGameCardRegistration(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestGameCardRegistrationGoldPoint(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestRegisterGameCard(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getGameCardMountFailureEvent() throws -> KObject { throw IpcError.unimplemented }
	func isGameCardInserted() throws -> Any? { throw IpcError.unimplemented }
	func ensureGameCardAccess() throws { throw IpcError.unimplemented }
	func getLastGameCardMountFailureResult() throws { throw IpcError.unimplemented }
	func listApplicationIdOnGameCard(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func countApplicationContentMeta(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func listApplicationContentMetaStatus(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listAvailableAddOnContent(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getOwnedApplicationContentMetaStatus(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func registerContentsExternalKey(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listApplicationContentMetaStatusWithRightsCheck(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getContentMetaStorage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown607(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func pushDownloadTaskList(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func clearTaskStatusList() throws { throw IpcError.unimplemented }
	func requestDownloadTaskList() throws { throw IpcError.unimplemented }
	func requestEnsureDownloadTask() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func listDownloadTaskStatus(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestDownloadTaskListData() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestVersionList() throws { throw IpcError.unimplemented }
	func listVersionList(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestVersionListData() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func getApplicationRecord(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getApplicationRecordProperty(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func enableApplicationAutoUpdate(_ _0: Any?) throws { throw IpcError.unimplemented }
	func disableApplicationAutoUpdate(_ _0: Any?) throws { throw IpcError.unimplemented }
	func touchApplication(_ _0: Any?) throws { throw IpcError.unimplemented }
	func requestApplicationUpdate(_ _0: Any?) throws { throw IpcError.unimplemented }
	func isApplicationUpdateRequested(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func withdrawApplicationUpdateRequest(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listApplicationRecordInstalledContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func withdrawCleanupAddOnContentsWithNoRightsRecommendation(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown910(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown911(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown912(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestVerifyApplicationDeprecated(_ _0: Any?, _ _1: KObject) throws -> (KObject, NnNsDetail_IProgressAsyncResult) { throw IpcError.unimplemented }
	func corruptApplicationForDebug(_ _0: Any?) throws { throw IpcError.unimplemented }
	func requestVerifyAddOnContentsRights(_ _0: Any?) throws -> (KObject, NnNsDetail_IProgressAsyncResult) { throw IpcError.unimplemented }
	func requestVerifyApplication(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func corruptContentForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func needsUpdateVulnerability() throws -> Any? { throw IpcError.unimplemented }
	func isAnyApplicationEntityInstalled(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func deleteApplicationContentEntities(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cleanupUnrecordedApplicationEntity(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cleanupAddOnContentsWithNoRights(_ _0: Any?) throws { throw IpcError.unimplemented }
	func deleteApplicationContentEntity(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown1308(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1309(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func prepareShutdown() throws { throw IpcError.unimplemented }
	func formatSdCard() throws { throw IpcError.unimplemented }
	func needsSystemUpdateToFormatSdCard() throws -> Any? { throw IpcError.unimplemented }
	func getLastSdCardFormatUnexpectedResult() throws { throw IpcError.unimplemented }
	func insertSdCard() throws { throw IpcError.unimplemented }
	func removeSdCard() throws { throw IpcError.unimplemented }
	func getSystemSeedForPseudoDeviceId() throws -> Any? { throw IpcError.unimplemented }
	func resetSystemSeedForPseudoDeviceId() throws { throw IpcError.unimplemented }
	func listApplicationDownloadingContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getApplicationView(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getApplicationDownloadTaskStatus(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getApplicationViewDownloadErrorContext(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func isNotificationSetupCompleted() throws -> Any? { throw IpcError.unimplemented }
	func getLastNotificationInfoCount() throws -> Any? { throw IpcError.unimplemented }
	func listLastNotificationInfo(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listNotificationTask(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func isActiveAccount(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestDownloadApplicationPrepurchasedRights(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getApplicationTicketInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSystemDeliveryInfo(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func selectLatestSystemDeliveryInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func verifyDeliveryProtocolVersion(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getApplicationDeliveryInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func hasAllContentsToDeliver(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func compareApplicationDeliveryInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func canDeliverApplication(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listContentMetaKeyToDeliverApplication(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func needsSystemUpdateToDeliverApplication(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func estimateRequiredSize(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestReceiveApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func commitReceiveApplication(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getReceiveApplicationProgress(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestSendApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getSendApplicationProgress(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func compareSystemDeliveryInfo(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listNotCommittedContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func createDownloadTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2018(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2050(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2100(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2101(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2150(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2151(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2152(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2153(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2154(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2160(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2161(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2170(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2171(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2180(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2181(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2182(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2190(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2199(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2200(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2201(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2250(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown2300(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
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
	func getBackgroundNetworkUpdateState() throws -> Any? { throw IpcError.unimplemented }
	func openSystemUpdateControl() throws -> NnNsDetail_ISystemUpdateControl { throw IpcError.unimplemented }
	func notifyExFatDriverRequired() throws { throw IpcError.unimplemented }
	func clearExFatDriverStatusForDebug() throws { throw IpcError.unimplemented }
	func requestBackgroundNetworkUpdate() throws { throw IpcError.unimplemented }
	func notifyBackgroundNetworkUpdate(_ _0: Any?) throws { throw IpcError.unimplemented }
	func notifyExFatDriverDownloadedForDebug() throws { throw IpcError.unimplemented }
	func getSystemUpdateNotificationEventForContentDelivery() throws -> KObject { throw IpcError.unimplemented }
	func notifySystemUpdateForContentDelivery() throws { throw IpcError.unimplemented }
	func prepareShutdown() throws { throw IpcError.unimplemented }
	func destroySystemUpdateTask() throws { throw IpcError.unimplemented }
	func requestSendSystemUpdate(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getSendSystemUpdateProgress() throws -> Any? { throw IpcError.unimplemented }
	
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
	func clearTaskStatusList() throws { throw IpcError.unimplemented }
	func requestDownloadTaskList() throws { throw IpcError.unimplemented }
	func requestEnsureDownloadTask() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func listDownloadTaskStatus(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestDownloadTaskListData() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func tryCommitCurrentApplicationDownloadTask() throws { throw IpcError.unimplemented }
	func enableAutoCommit() throws { throw IpcError.unimplemented }
	func disableAutoCommit() throws { throw IpcError.unimplemented }
	func triggerDynamicCommitEvent() throws { throw IpcError.unimplemented }
	
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
	func unknown0(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown35(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown36(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown37(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown800() throws { throw IpcError.unimplemented }
	func unknown801(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown802() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func unknown1000() throws { throw IpcError.unimplemented }
	
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
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown3() throws { throw IpcError.unimplemented }
	func unknown4(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
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
	func getApplicationContentPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func resolveApplicationContentPath(_ _0: Any?) throws { throw IpcError.unimplemented }
	
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
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1() throws -> (KObject, NnNsDetail_IAsyncValue) { throw IpcError.unimplemented }
	func unknown2() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func unknown3() throws -> Any? { throw IpcError.unimplemented }
	func unknown4() throws { throw IpcError.unimplemented }
	func unknown5() throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func unknown6() throws -> Any? { throw IpcError.unimplemented }
	func unknown7() throws -> Any? { throw IpcError.unimplemented }
	func unknown8() throws { throw IpcError.unimplemented }
	func unknown9(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown10(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown11(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented }
	func unknown12(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown13(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown14(_ _0: Any?, _ _1: KObject) throws { throw IpcError.unimplemented }
	func unknown15() throws -> Any? { throw IpcError.unimplemented }
	func unknown16(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	func unknown17() throws -> Any? { throw IpcError.unimplemented }
	func unknown18() throws { throw IpcError.unimplemented }
	func unknown19(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown20(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown21() throws { throw IpcError.unimplemented }
	
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
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
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
	func needsUpdateVulnerability() throws -> Any? { throw IpcError.unimplemented }
	func updateSafeSystemVersionForDebug(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getSafeSystemVersion() throws -> Any? { throw IpcError.unimplemented }
	
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
	func unknown0() throws -> KObject { throw IpcError.unimplemented }
	func unknown1() throws -> Any? { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown10() throws -> Any? { throw IpcError.unimplemented }
	
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
	func resetToFactorySettings() throws { throw IpcError.unimplemented }
	func resetToFactorySettingsWithoutUserSaveData() throws { throw IpcError.unimplemented }
	func resetToFactorySettingsForRefurbishment() throws { throw IpcError.unimplemented }
	
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
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
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
	func calculateApplicationOccupiedSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func checkSdCardMountStatus() throws { throw IpcError.unimplemented }
	func getTotalSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getFreeSpaceSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func countApplicationContentMeta(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func listApplicationContentMetaStatus(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listApplicationContentMetaStatusWithRightsCheck(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func isAnyApplicationRunning() throws -> Any? { throw IpcError.unimplemented }
	
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
	func unknown0(_ _0: Any?) throws -> (KObject, NnNsDetail_IAsyncResult) { throw IpcError.unimplemented }
	
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
	func createUserAccount(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
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
	func getECommerceInterface() throws -> NnNsDetail_IECommerceInterface { throw IpcError.unimplemented }
	func getApplicationVersionInterface() throws -> NnNsDetail_IApplicationVersionInterface { throw IpcError.unimplemented }
	func getFactoryResetInterface() throws -> NnNsDetail_IFactoryResetInterface { throw IpcError.unimplemented }
	func getAccountProxyInterface() throws -> NnNsDetail_IAccountProxyInterface { throw IpcError.unimplemented }
	func getApplicationManagerInterface() throws -> NnNsDetail_IApplicationManagerInterface { throw IpcError.unimplemented }
	func getDownloadTaskInterface() throws -> NnNsDetail_IDownloadTaskInterface { throw IpcError.unimplemented }
	func getContentManagementInterface() throws -> NnNsDetail_IContentManagementInterface { throw IpcError.unimplemented }
	func getDocumentInterface() throws -> NnNsDetail_IDocumentInterface { throw IpcError.unimplemented }
	
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
