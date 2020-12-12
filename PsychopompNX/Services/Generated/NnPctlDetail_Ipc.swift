class NnPctlDetailIpc_IParentalControlService: IpcService {
	func initialize() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#Initialize") }
	func checkFreeCommunicationPermission() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#CheckFreeCommunicationPermission") }
	func confirmLaunchApplicationPermission(_ _0: UInt8, _ _1: NnNcm_ApplicationId, _ _2: Buffer<Int8>) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmLaunchApplicationPermission") }
	func confirmResumeApplicationPermission(_ _0: UInt8, _ _1: NnNcm_ApplicationId, _ _2: Buffer<Int8>) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmResumeApplicationPermission") }
	func confirmSnsPostPermission() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmSnsPostPermission") }
	func confirmSystemSettingsPermission() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmSystemSettingsPermission") }
	func isRestrictionTemporaryUnlocked() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsRestrictionTemporaryUnlocked") }
	func revertRestrictionTemporaryUnlocked() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#RevertRestrictionTemporaryUnlocked") }
	func enterRestrictedSystemSettings() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#EnterRestrictedSystemSettings") }
	func leaveRestrictedSystemSettings() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#LeaveRestrictedSystemSettings") }
	func isRestrictedSystemSettingsEntered() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsRestrictedSystemSettingsEntered") }
	func revertRestrictedSystemSettingsEntered() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#RevertRestrictedSystemSettingsEntered") }
	func getRestrictedFeatures() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetRestrictedFeatures") }
	func confirmStereoVisionPermission() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmStereoVisionPermission") }
	func confirmPlayableApplicationVideoOld(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmPlayableApplicationVideoOld") }
	func confirmPlayableApplicationVideo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmPlayableApplicationVideo") }
	func isRestrictionEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsRestrictionEnabled") }
	func getSafetyLevel() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetSafetyLevel") }
	func setSafetyLevel(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetSafetyLevel") }
	func getSafetyLevelSettings(_ _0: UInt32) throws -> NnPctl_RestrictionSettings { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetSafetyLevelSettings") }
	func getCurrentSettings() throws -> NnPctl_RestrictionSettings { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetCurrentSettings") }
	func setCustomSafetyLevelSettings(_ _0: NnPctl_RestrictionSettings) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetCustomSafetyLevelSettings") }
	func getDefaultRatingOrganization() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetDefaultRatingOrganization") }
	func setDefaultRatingOrganization(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetDefaultRatingOrganization") }
	func getFreeCommunicationApplicationListCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetFreeCommunicationApplicationListCount") }
	func addToFreeCommunicationApplicationList(_ _0: NnNcm_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#AddToFreeCommunicationApplicationList") }
	func deleteSettings() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#DeleteSettings") }
	func getFreeCommunicationApplicationList(_ _0: UInt32, _ _1: Buffer<NnPctl_FreeCommunicationApplicationInfo>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetFreeCommunicationApplicationList") }
	func updateFreeCommunicationApplicationList(_ _0: Buffer<NnPctl_FreeCommunicationApplicationInfo>) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#UpdateFreeCommunicationApplicationList") }
	func disableFeaturesForReset() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#DisableFeaturesForReset") }
	func notifyApplicationDownloadStarted(_ _0: NnNcm_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#NotifyApplicationDownloadStarted") }
	func confirmStereoVisionRestrictionConfigurable() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ConfirmStereoVisionRestrictionConfigurable") }
	func getStereoVisionRestriction() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetStereoVisionRestriction") }
	func setStereoVisionRestriction(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetStereoVisionRestriction") }
	func resetConfirmedStereoVisionPermission(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ResetConfirmedStereoVisionPermission") }
	func isStereoVisionPermitted(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsStereoVisionPermitted") }
	func unlockRestrictionTemporarily(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#UnlockRestrictionTemporarily") }
	func unlockSystemSettingsRestriction(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#UnlockSystemSettingsRestriction") }
	func setPinCode(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetPinCode") }
	func generateInquiryCode() throws -> NnPctl_InquiryCode { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GenerateInquiryCode") }
	func checkMasterKey(_ _0: NnPctl_InquiryCode, _ _1: Buffer<UInt8>) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#CheckMasterKey") }
	func getPinCodeLength() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPinCodeLength") }
	func getPinCodeChangedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPinCodeChangedEvent") }
	func getPinCode(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPinCode") }
	func isPairingActive() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsPairingActive") }
	func getSettingsLastUpdated() throws -> NnTime_PosixTime { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetSettingsLastUpdated") }
	func getPairingAccountInfo(_ _0: NnPctlDetail_PairingInfoBase) throws -> NnPctlDetail_PairingAccountInfoBase { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPairingAccountInfo") }
	func getAccountNickname(_ _0: NnPctlDetail_PairingAccountInfoBase, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetAccountNickname") }
	func getAccountState(_ _0: NnPctlDetail_PairingAccountInfoBase) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetAccountState") }
	func getSynchronizationEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetSynchronizationEvent") }
	func startPlayTimer() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#StartPlayTimer") }
	func stopPlayTimer() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#StopPlayTimer") }
	func isPlayTimerEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsPlayTimerEnabled") }
	func getPlayTimerRemainingTime() throws -> Nn_TimeSpanType { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPlayTimerRemainingTime") }
	func isRestrictedByPlayTimer() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsRestrictedByPlayTimer") }
	func getPlayTimerSettings() throws -> NnPctl_PlayTimerSettings { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPlayTimerSettings") }
	func getPlayTimerEventToRequestSuspension() throws -> KObject { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPlayTimerEventToRequestSuspension") }
	func isPlayTimerAlarmDisabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsPlayTimerAlarmDisabled") }
	func notifyWrongPinCodeInputManyTimes() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#NotifyWrongPinCodeInputManyTimes") }
	func cancelNetworkRequest() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#CancelNetworkRequest") }
	func getUnlinkedEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetUnlinkedEvent") }
	func clearUnlinkedEvent() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ClearUnlinkedEvent") }
	func disableAllFeatures() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#DisableAllFeatures") }
	func postEnableAllFeatures() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#PostEnableAllFeatures") }
	func isAllFeaturesDisabled() throws -> (UInt8, UInt8) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#IsAllFeaturesDisabled") }
	func deleteFromFreeCommunicationApplicationListForDebug(_ _0: NnNcm_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#DeleteFromFreeCommunicationApplicationListForDebug") }
	func clearFreeCommunicationApplicationListForDebug() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ClearFreeCommunicationApplicationListForDebug") }
	func getExemptApplicationListCountForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetExemptApplicationListCountForDebug") }
	func getExemptApplicationListForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetExemptApplicationListForDebug") }
	func updateExemptApplicationListForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#UpdateExemptApplicationListForDebug") }
	func addToExemptApplicationListForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#AddToExemptApplicationListForDebug") }
	func deleteFromExemptApplicationListForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#DeleteFromExemptApplicationListForDebug") }
	func clearExemptApplicationListForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#ClearExemptApplicationListForDebug") }
	func deletePairing() throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#DeletePairing") }
	func setPlayTimerSettingsForDebug(_ _0: NnPctl_PlayTimerSettings) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetPlayTimerSettingsForDebug") }
	func getPlayTimerSpentTimeForTest() throws -> Nn_TimeSpanType { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetPlayTimerSpentTimeForTest") }
	func setPlayTimerAlarmDisabledForDebug(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SetPlayTimerAlarmDisabledForDebug") }
	func requestPairingAsync(_ _0: Buffer<UInt8>) throws -> (NnPctlDetail_AsyncData, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#RequestPairingAsync") }
	func finishRequestPairing(_ _0: NnPctlDetail_AsyncData) throws -> NnPctlDetail_PairingInfoBase { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishRequestPairing") }
	func authorizePairingAsync(_ _0: NnPctlDetail_PairingInfoBase) throws -> (NnPctlDetail_AsyncData, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#AuthorizePairingAsync") }
	func finishAuthorizePairing(_ _0: NnPctlDetail_AsyncData) throws -> NnPctlDetail_PairingInfoBase { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishAuthorizePairing") }
	func retrievePairingInfoAsync() throws -> (NnPctlDetail_AsyncData, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#RetrievePairingInfoAsync") }
	func finishRetrievePairingInfo(_ _0: NnPctlDetail_AsyncData) throws -> NnPctlDetail_PairingInfoBase { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishRetrievePairingInfo") }
	func unlinkPairingAsync(_ _0: UInt8) throws -> (NnPctlDetail_AsyncData, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#UnlinkPairingAsync") }
	func finishUnlinkPairing(_ _0: UInt8, _ _1: NnPctlDetail_AsyncData) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishUnlinkPairing") }
	func getAccountMiiImageAsync(_ _0: NnPctlDetail_PairingAccountInfoBase, _ _1: Buffer<UInt8>) throws -> (NnPctlDetail_AsyncData, UInt32, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetAccountMiiImageAsync") }
	func finishGetAccountMiiImage(_ _0: NnPctlDetail_AsyncData, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishGetAccountMiiImage") }
	func getAccountMiiImageContentTypeAsync(_ _0: NnPctlDetail_PairingAccountInfoBase, _ _1: Buffer<UInt8>) throws -> (NnPctlDetail_AsyncData, UInt32, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#GetAccountMiiImageContentTypeAsync") }
	func finishGetAccountMiiImageContentType(_ _0: NnPctlDetail_AsyncData, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishGetAccountMiiImageContentType") }
	func synchronizeParentalControlSettingsAsync() throws -> (NnPctlDetail_AsyncData, KObject) { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#SynchronizeParentalControlSettingsAsync") }
	func finishSynchronizeParentalControlSettings(_ _0: NnPctlDetail_AsyncData) throws { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishSynchronizeParentalControlSettings") }
	func finishSynchronizeParentalControlSettingsWithLastUpdated(_ _0: NnPctlDetail_AsyncData) throws -> NnTime_PosixTime { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#FinishSynchronizeParentalControlSettingsWithLastUpdated") }
	func requestUpdateExemptionListAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlService#RequestUpdateExemptionListAsync") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try initialize()
			om.initialize(0, 0, 0)
		
		case 1001:
			try checkFreeCommunicationPermission()
			om.initialize(0, 0, 0)
		
		case 1002:
			try confirmLaunchApplicationPermission(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getBuffer(0x9, 0) as Buffer<Int8>)
			om.initialize(0, 0, 0)
		
		case 1003:
			try confirmResumeApplicationPermission(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getBuffer(0x9, 0) as Buffer<Int8>)
			om.initialize(0, 0, 0)
		
		case 1004:
			try confirmSnsPostPermission()
			om.initialize(0, 0, 0)
		
		case 1005:
			try confirmSystemSettingsPermission()
			om.initialize(0, 0, 0)
		
		case 1006:
			let ret = try isRestrictionTemporaryUnlocked()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1007:
			try revertRestrictionTemporaryUnlocked()
			om.initialize(0, 0, 0)
		
		case 1008:
			try enterRestrictedSystemSettings()
			om.initialize(0, 0, 0)
		
		case 1009:
			try leaveRestrictedSystemSettings()
			om.initialize(0, 0, 0)
		
		case 1010:
			let ret = try isRestrictedSystemSettingsEntered()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1011:
			try revertRestrictedSystemSettingsEntered()
			om.initialize(0, 0, 0)
		
		case 1012:
			let ret = try getRestrictedFeatures()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1013:
			try confirmStereoVisionPermission()
			om.initialize(0, 0, 0)
		
		case 1014:
			let ret = try confirmPlayableApplicationVideoOld(nil)
			om.initialize(0, 0, 0)
		
		case 1015:
			let ret = try confirmPlayableApplicationVideo(nil)
			om.initialize(0, 0, 0)
		
		case 1031:
			let ret = try isRestrictionEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1032:
			let ret = try getSafetyLevel()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1033:
			try setSafetyLevel(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1034:
			let ret = try getSafetyLevelSettings(im.getData(8) as UInt32)
			om.initialize(0, 0, 3)
			if ret.count != 0x3 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1035:
			let ret = try getCurrentSettings()
			om.initialize(0, 0, 3)
			if ret.count != 0x3 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1036:
			try setCustomSafetyLevelSettings(im.getBytes(8, 0x3))
			om.initialize(0, 0, 0)
		
		case 1037:
			let ret = try getDefaultRatingOrganization()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1038:
			try setDefaultRatingOrganization(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1039:
			let ret = try getFreeCommunicationApplicationListCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1042:
			try addToFreeCommunicationApplicationList(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1043:
			try deleteSettings()
			om.initialize(0, 0, 0)
		
		case 1044:
			let ret = try getFreeCommunicationApplicationList(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<NnPctl_FreeCommunicationApplicationInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1045:
			try updateFreeCommunicationApplicationList(im.getBuffer(0x5, 0) as Buffer<NnPctl_FreeCommunicationApplicationInfo>)
			om.initialize(0, 0, 0)
		
		case 1046:
			try disableFeaturesForReset()
			om.initialize(0, 0, 0)
		
		case 1047:
			try notifyApplicationDownloadStarted(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1061:
			try confirmStereoVisionRestrictionConfigurable()
			om.initialize(0, 0, 0)
		
		case 1062:
			let ret = try getStereoVisionRestriction()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1063:
			try setStereoVisionRestriction(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 1064:
			let ret = try resetConfirmedStereoVisionPermission(nil)
			om.initialize(0, 0, 0)
		
		case 1065:
			let ret = try isStereoVisionPermitted(nil)
			om.initialize(0, 0, 0)
		
		case 1201:
			try unlockRestrictionTemporarily(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1202:
			try unlockSystemSettingsRestriction(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1203:
			try setPinCode(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1204:
			let ret = try generateInquiryCode()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1205:
			let ret = try checkMasterKey(im.getBytes(8, 0x20), im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1206:
			let ret = try getPinCodeLength()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1207:
			let ret = try getPinCodeChangedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1208:
			let ret = try getPinCode(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1403:
			let ret = try isPairingActive()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1406:
			let ret = try getSettingsLastUpdated()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1411:
			let ret = try getPairingAccountInfo(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1421:
			let ret = try getAccountNickname(im.getBytes(8, 0x10), im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1424:
			let ret = try getAccountState(im.getBytes(8, 0x10))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1432:
			let ret = try getSynchronizationEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1451:
			try startPlayTimer()
			om.initialize(0, 0, 0)
		
		case 1452:
			try stopPlayTimer()
			om.initialize(0, 0, 0)
		
		case 1453:
			let ret = try isPlayTimerEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1454:
			let ret = try getPlayTimerRemainingTime()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1455:
			let ret = try isRestrictedByPlayTimer()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1456:
			let ret = try getPlayTimerSettings()
			om.initialize(0, 0, 52)
			if ret.count != 0x34 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1457:
			let ret = try getPlayTimerEventToRequestSuspension()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1458:
			let ret = try isPlayTimerAlarmDisabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1471:
			try notifyWrongPinCodeInputManyTimes()
			om.initialize(0, 0, 0)
		
		case 1472:
			try cancelNetworkRequest()
			om.initialize(0, 0, 0)
		
		case 1473:
			let ret = try getUnlinkedEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1474:
			try clearUnlinkedEvent()
			om.initialize(0, 0, 0)
		
		case 1601:
			let ret = try disableAllFeatures()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1602:
			let ret = try postEnableAllFeatures()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1603:
			let (_0, _1) = try isAllFeaturesDisabled()
			om.initialize(0, 0, 2)
			om.setData(8, _0)
			om.setData(9, _1)
		
		case 1901:
			try deleteFromFreeCommunicationApplicationListForDebug(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1902:
			try clearFreeCommunicationApplicationListForDebug()
			om.initialize(0, 0, 0)
		
		case 1903:
			let ret = try getExemptApplicationListCountForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1904:
			let ret = try getExemptApplicationListForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1905:
			let ret = try updateExemptApplicationListForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1906:
			let ret = try addToExemptApplicationListForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1907:
			let ret = try deleteFromExemptApplicationListForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1908:
			let ret = try clearExemptApplicationListForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 1941:
			try deletePairing()
			om.initialize(0, 0, 0)
		
		case 1951:
			try setPlayTimerSettingsForDebug(im.getBytes(8, 0x34))
			om.initialize(0, 0, 0)
		
		case 1952:
			let ret = try getPlayTimerSpentTimeForTest()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1953:
			try setPlayTimerAlarmDisabledForDebug(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 2001:
			let (_0, _1) = try requestPairingAsync(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 1, 8)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.copy(0, _1)
		
		case 2002:
			let ret = try finishRequestPairing(im.getBytes(8, 0x8))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 2003:
			let (_0, _1) = try authorizePairingAsync(im.getBytes(8, 0x10))
			om.initialize(0, 1, 8)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.copy(0, _1)
		
		case 2004:
			let ret = try finishAuthorizePairing(im.getBytes(8, 0x8))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 2005:
			let (_0, _1) = try retrievePairingInfoAsync()
			om.initialize(0, 1, 8)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.copy(0, _1)
		
		case 2006:
			let ret = try finishRetrievePairingInfo(im.getBytes(8, 0x8))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 2007:
			let (_0, _1) = try unlinkPairingAsync(im.getData(8) as UInt8)
			om.initialize(0, 1, 8)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.copy(0, _1)
		
		case 2008:
			try finishUnlinkPairing(im.getData(8) as UInt8, im.getBytes(9, 0x8))
			om.initialize(0, 0, 0)
		
		case 2009:
			let (_0, _1, _2) = try getAccountMiiImageAsync(im.getBytes(8, 0x10), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 1, 12)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.setData(16, _1)
			om.copy(0, _2)
		
		case 2010:
			let ret = try finishGetAccountMiiImage(im.getBytes(8, 0x8), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2011:
			let (_0, _1, _2) = try getAccountMiiImageContentTypeAsync(im.getBytes(8, 0x10), im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 1, 12)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.setData(16, _1)
			om.copy(0, _2)
		
		case 2012:
			let ret = try finishGetAccountMiiImageContentType(im.getBytes(8, 0x8), im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2013:
			let (_0, _1) = try synchronizeParentalControlSettingsAsync()
			om.initialize(0, 1, 8)
			if _0.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.copy(0, _1)
		
		case 2014:
			try finishSynchronizeParentalControlSettings(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 2015:
			let ret = try finishSynchronizeParentalControlSettingsWithLastUpdated(im.getBytes(8, 0x8))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2016:
			let ret = try requestUpdateExemptionListAsync(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::pctl::detail::ipc::IParentalControlService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnPctlDetailIpc_IParentalControlServiceFactory: IpcService {
	func createService(_ _0: UInt64, _ _1: Pid) throws -> NnPctlDetailIpc_IParentalControlService { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlServiceFactory#CreateService") }
	func createServiceWithoutInitialize(_ _0: UInt64, _ _1: Pid) throws -> NnPctlDetailIpc_IParentalControlService { throw IpcError.unimplemented(name: "nn::pctl::detail::ipc::nn::pctl::detail::ipc::IParentalControlServiceFactory#CreateServiceWithoutInitialize") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createService(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try createServiceWithoutInitialize(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::pctl::detail::ipc::IParentalControlServiceFactory: \(im.commandId)")
			try! bailout()
		}
	}
}
