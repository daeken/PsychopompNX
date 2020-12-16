typealias NnSettings_SettingsItemKey = [UInt8]
typealias NnSettings_LanguageCode = [UInt8]
typealias NnSettings_SettingsName = [UInt8]

class NnSettings_ISystemSettingsServer: IpcService {
	func setLanguageCode(_ _0: NnSettings_LanguageCode) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetLanguageCode") }
	func setNetworkSettings(_ _0: Buffer<NnSettingsSystem_NetworkSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNetworkSettings") }
	func getNetworkSettings(_ _0: Buffer<NnSettingsSystem_NetworkSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNetworkSettings") }
	func getFirmwareVersion(_ _0: Buffer<NnSettingsSystem_FirmwareVersion>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFirmwareVersion") }
	func getFirmwareVersion2(_ _0: Buffer<NnSettingsSystem_FirmwareVersion>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFirmwareVersion2") }
	func getFirmwareVersionDigest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFirmwareVersionDigest") }
	func getLockScreenFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetLockScreenFlag") }
	func setLockScreenFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetLockScreenFlag") }
	func getBacklightSettings() throws -> NnSettingsSystem_BacklightSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBacklightSettings") }
	func setBacklightSettings(_ _0: NnSettingsSystem_BacklightSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBacklightSettings") }
	func setBluetoothDevicesSettings(_ _0: Buffer<NnSettingsSystem_BluetoothDevicesSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothDevicesSettings") }
	func getBluetoothDevicesSettings(_ _0: Buffer<NnSettingsSystem_BluetoothDevicesSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothDevicesSettings") }
	func getExternalSteadyClockSourceId() throws -> NnUtil_Uuid { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetExternalSteadyClockSourceId") }
	func setExternalSteadyClockSourceId(_ _0: NnUtil_Uuid) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetExternalSteadyClockSourceId") }
	func getUserSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetUserSystemClockContext") }
	func setUserSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUserSystemClockContext") }
	func getAccountSettings() throws -> NnSettingsSystem_AccountSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAccountSettings") }
	func setAccountSettings(_ _0: NnSettingsSystem_AccountSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAccountSettings") }
	func getAudioVolume(_ _0: UInt32) throws -> NnSettingsSystem_AudioVolume { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAudioVolume") }
	func setAudioVolume(_ _0: NnSettingsSystem_AudioVolume, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAudioVolume") }
	func getEulaVersions(_ _0: Buffer<NnSettingsSystem_EulaVersion>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetEulaVersions") }
	func setEulaVersions(_ _0: Buffer<NnSettingsSystem_EulaVersion>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetEulaVersions") }
	func getColorSetId() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetColorSetId") }
	func setColorSetId(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetColorSetId") }
	func getConsoleInformationUploadFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleInformationUploadFlag") }
	func setConsoleInformationUploadFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleInformationUploadFlag") }
	func getAutomaticApplicationDownloadFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAutomaticApplicationDownloadFlag") }
	func setAutomaticApplicationDownloadFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAutomaticApplicationDownloadFlag") }
	func getNotificationSettings() throws -> NnSettingsSystem_NotificationSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNotificationSettings") }
	func setNotificationSettings(_ _0: NnSettingsSystem_NotificationSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNotificationSettings") }
	func getAccountNotificationSettings(_ _0: Buffer<NnSettingsSystem_AccountNotificationSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAccountNotificationSettings") }
	func setAccountNotificationSettings(_ _0: Buffer<NnSettingsSystem_AccountNotificationSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAccountNotificationSettings") }
	func getVibrationMasterVolume() throws -> Float32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetVibrationMasterVolume") }
	func setVibrationMasterVolume(_ _0: Float32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetVibrationMasterVolume") }
	func getSettingsItemValueSize(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSettingsItemValueSize") }
	func getSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>, _ _2: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSettingsItemValue") }
	func getTvSettings() throws -> NnSettingsSystem_TvSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetTvSettings") }
	func setTvSettings(_ _0: NnSettingsSystem_TvSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetTvSettings") }
	func getEdid(_ _0: Buffer<NnSettingsSystem_Edid>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetEdid") }
	func setEdid(_ _0: Buffer<NnSettingsSystem_Edid>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetEdid") }
	func getAudioOutputMode(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAudioOutputMode") }
	func setAudioOutputMode(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAudioOutputMode") }
	func isForceMuteOnHeadphoneRemoved() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#IsForceMuteOnHeadphoneRemoved") }
	func setForceMuteOnHeadphoneRemoved(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetForceMuteOnHeadphoneRemoved") }
	func getQuestFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetQuestFlag") }
	func setQuestFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetQuestFlag") }
	func getDataDeletionSettings() throws -> NnSettingsSystem_DataDeletionSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDataDeletionSettings") }
	func setDataDeletionSettings(_ _0: NnSettingsSystem_DataDeletionSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetDataDeletionSettings") }
	func getInitialSystemAppletProgramId() throws -> NnNcm_ProgramId { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetInitialSystemAppletProgramId") }
	func getOverlayDispProgramId() throws -> NnNcm_ProgramId { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetOverlayDispProgramId") }
	func getDeviceTimeZoneLocationName() throws -> NnTime_LocationName { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDeviceTimeZoneLocationName") }
	func setDeviceTimeZoneLocationName(_ _0: NnTime_LocationName) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetDeviceTimeZoneLocationName") }
	func getWirelessCertificationFileSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWirelessCertificationFileSize") }
	func getWirelessCertificationFile(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWirelessCertificationFile") }
	func setRegionCode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetRegionCode") }
	func getNetworkSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNetworkSystemClockContext") }
	func setNetworkSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNetworkSystemClockContext") }
	func isUserSystemClockAutomaticCorrectionEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#IsUserSystemClockAutomaticCorrectionEnabled") }
	func setUserSystemClockAutomaticCorrectionEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUserSystemClockAutomaticCorrectionEnabled") }
	func getDebugModeFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDebugModeFlag") }
	func getPrimaryAlbumStorage() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPrimaryAlbumStorage") }
	func setPrimaryAlbumStorage(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPrimaryAlbumStorage") }
	func getUsb30EnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetUsb30EnableFlag") }
	func setUsb30EnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUsb30EnableFlag") }
	func getBatteryLot() throws -> NnSettingsSystem_BatteryLot { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBatteryLot") }
	func getSerialNumber() throws -> NnSettingsSystem_SerialNumber { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSerialNumber") }
	func getNfcEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNfcEnableFlag") }
	func setNfcEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNfcEnableFlag") }
	func getSleepSettings() throws -> NnSettingsSystem_SleepSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSleepSettings") }
	func setSleepSettings(_ _0: NnSettingsSystem_SleepSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetSleepSettings") }
	func getWirelessLanEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWirelessLanEnableFlag") }
	func setWirelessLanEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetWirelessLanEnableFlag") }
	func getInitialLaunchSettings() throws -> NnSettingsSystem_InitialLaunchSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetInitialLaunchSettings") }
	func setInitialLaunchSettings(_ _0: NnSettingsSystem_InitialLaunchSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetInitialLaunchSettings") }
	func getDeviceNickName(_ _0: Buffer<NnSettingsSystem_DeviceNickName>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDeviceNickName") }
	func setDeviceNickName(_ _0: Buffer<NnSettingsSystem_DeviceNickName>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetDeviceNickName") }
	func getProductModel() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetProductModel") }
	func getLdnChannel() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetLdnChannel") }
	func setLdnChannel(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetLdnChannel") }
	func acquireTelemetryDirtyFlagEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#AcquireTelemetryDirtyFlagEventHandle") }
	func getTelemetryDirtyFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetTelemetryDirtyFlags") }
	func getPtmBatteryLot() throws -> NnSettingsFactory_BatteryLot { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPtmBatteryLot") }
	func setPtmBatteryLot(_ _0: NnSettingsFactory_BatteryLot) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPtmBatteryLot") }
	func getPtmFuelGaugeParameter() throws -> NnSettingsSystem_PtmFuelGaugeParameter { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPtmFuelGaugeParameter") }
	func setPtmFuelGaugeParameter(_ _0: NnSettingsSystem_PtmFuelGaugeParameter) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPtmFuelGaugeParameter") }
	func getBluetoothEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothEnableFlag") }
	func setBluetoothEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothEnableFlag") }
	func getMiiAuthorId() throws -> NnUtil_Uuid { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetMiiAuthorId") }
	func setShutdownRtcValue(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetShutdownRtcValue") }
	func getShutdownRtcValue() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetShutdownRtcValue") }
	func acquireFatalDirtyFlagEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#AcquireFatalDirtyFlagEventHandle") }
	func getFatalDirtyFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFatalDirtyFlags") }
	func getAutoUpdateEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAutoUpdateEnableFlag") }
	func setAutoUpdateEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAutoUpdateEnableFlag") }
	func getNxControllerSettings(_ _0: Buffer<NnSettingsSystem_NxControllerSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNxControllerSettings") }
	func setNxControllerSettings(_ _0: Buffer<NnSettingsSystem_NxControllerSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNxControllerSettings") }
	func getBatteryPercentageFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBatteryPercentageFlag") }
	func setBatteryPercentageFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBatteryPercentageFlag") }
	func getExternalRtcResetFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetExternalRtcResetFlag") }
	func setExternalRtcResetFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetExternalRtcResetFlag") }
	func getUsbFullKeyEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetUsbFullKeyEnableFlag") }
	func setUsbFullKeyEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUsbFullKeyEnableFlag") }
	func setExternalSteadyClockInternalOffset(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetExternalSteadyClockInternalOffset") }
	func getExternalSteadyClockInternalOffset() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetExternalSteadyClockInternalOffset") }
	func getBacklightSettingsEx() throws -> NnSettingsSystem_BacklightSettingsEx { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBacklightSettingsEx") }
	func setBacklightSettingsEx(_ _0: NnSettingsSystem_BacklightSettingsEx) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBacklightSettingsEx") }
	func getHeadphoneVolumeWarningCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetHeadphoneVolumeWarningCount") }
	func setHeadphoneVolumeWarningCount(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetHeadphoneVolumeWarningCount") }
	func getBluetoothAfhEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothAfhEnableFlag") }
	func setBluetoothAfhEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothAfhEnableFlag") }
	func getBluetoothBoostEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothBoostEnableFlag") }
	func setBluetoothBoostEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothBoostEnableFlag") }
	func getInRepairProcessEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetInRepairProcessEnableFlag") }
	func setInRepairProcessEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetInRepairProcessEnableFlag") }
	func getHeadphoneVolumeUpdateFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetHeadphoneVolumeUpdateFlag") }
	func setHeadphoneVolumeUpdateFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetHeadphoneVolumeUpdateFlag") }
	func needsToUpdateHeadphoneVolume(_ _0: UInt8) throws -> (UInt8, UInt8, Int8) { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#NeedsToUpdateHeadphoneVolume") }
	func getPushNotificationActivityModeOnSleep() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPushNotificationActivityModeOnSleep") }
	func setPushNotificationActivityModeOnSleep(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPushNotificationActivityModeOnSleep") }
	func getServiceDiscoveryControlSettings() throws -> NnSettingsSystem_ServiceDiscoveryControlSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetServiceDiscoveryControlSettings") }
	func setServiceDiscoveryControlSettings(_ _0: NnSettingsSystem_ServiceDiscoveryControlSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetServiceDiscoveryControlSettings") }
	func getErrorReportSharePermission() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetErrorReportSharePermission") }
	func setErrorReportSharePermission(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetErrorReportSharePermission") }
	func getAppletLaunchFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAppletLaunchFlags") }
	func setAppletLaunchFlags(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAppletLaunchFlags") }
	func getConsoleSixAxisSensorAccelerationBias() throws -> NnSettingsSystem_ConsoleSixAxisSensorAccelerationBias { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAccelerationBias") }
	func setConsoleSixAxisSensorAccelerationBias(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAccelerationBias) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAccelerationBias") }
	func getConsoleSixAxisSensorAngularVelocityBias() throws -> NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityBias { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularVelocityBias") }
	func setConsoleSixAxisSensorAngularVelocityBias(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityBias) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularVelocityBias") }
	func getConsoleSixAxisSensorAccelerationGain() throws -> NnSettingsSystem_ConsoleSixAxisSensorAccelerationGain { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAccelerationGain") }
	func setConsoleSixAxisSensorAccelerationGain(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAccelerationGain) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAccelerationGain") }
	func getConsoleSixAxisSensorAngularVelocityGain() throws -> NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityGain { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularVelocityGain") }
	func setConsoleSixAxisSensorAngularVelocityGain(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityGain) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularVelocityGain") }
	func getKeyboardLayout() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetKeyboardLayout") }
	func setKeyboardLayout(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetKeyboardLayout") }
	func getWebInspectorFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWebInspectorFlag") }
	func getAllowedSslHosts(_ _0: Buffer<NnSettingsSystem_AllowedSslHost>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAllowedSslHosts") }
	func getHostFsMountPoint(_ _0: Buffer<NnSettingsSystem_HostFsMountPoint>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetHostFsMountPoint") }
	func getRequiresRunRepairTimeReviser(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetRequiresRunRepairTimeReviser") }
	func setRequiresRunRepairTimeReviser(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetRequiresRunRepairTimeReviser") }
	func setBlePairingSettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBlePairingSettings") }
	func getBlePairingSettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBlePairingSettings") }
	func getConsoleSixAxisSensorAngularVelocityTimeBias(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularVelocityTimeBias") }
	func setConsoleSixAxisSensorAngularVelocityTimeBias(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularVelocityTimeBias") }
	func getConsoleSixAxisSensorAngularAcceleration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularAcceleration") }
	func setConsoleSixAxisSensorAngularAcceleration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularAcceleration") }
	func getRebootlessSystemUpdateVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetRebootlessSystemUpdateVersion") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setLanguageCode(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 1:
			try setNetworkSettings(im.getBuffer(0x5, 0)! as Buffer<NnSettingsSystem_NetworkSettings>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getNetworkSettings(im.getBuffer(0x6, 0)! as Buffer<NnSettingsSystem_NetworkSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try getFirmwareVersion(im.getBuffer(0x1a, 0)! as Buffer<NnSettingsSystem_FirmwareVersion>)
			om.initialize(0, 0, 0)
		
		case 4:
			try getFirmwareVersion2(im.getBuffer(0x1a, 0)! as Buffer<NnSettingsSystem_FirmwareVersion>)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try getFirmwareVersionDigest(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try getLockScreenFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 8:
			try setLockScreenFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try getBacklightSettings()
			om.initialize(0, 0, 40)
			if ret.count != 0x28 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			try setBacklightSettings(im.getBytes(8, 0x28))
			om.initialize(0, 0, 0)
		
		case 11:
			try setBluetoothDevicesSettings(im.getBuffer(0x5, 0)! as Buffer<NnSettingsSystem_BluetoothDevicesSettings>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getBluetoothDevicesSettings(im.getBuffer(0x6, 0)! as Buffer<NnSettingsSystem_BluetoothDevicesSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			let ret = try getExternalSteadyClockSourceId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 14:
			try setExternalSteadyClockSourceId(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getUserSystemClockContext()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 16:
			try setUserSystemClockContext(im.getBytes(8, 0x20))
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try getAccountSettings()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 18:
			try setAccountSettings(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getAudioVolume(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 20:
			try setAudioVolume(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try getEulaVersions(im.getBuffer(0x6, 0)! as Buffer<NnSettingsSystem_EulaVersion>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			try setEulaVersions(im.getBuffer(0x5, 0)! as Buffer<NnSettingsSystem_EulaVersion>)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getColorSetId()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 24:
			try setColorSetId(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try getConsoleInformationUploadFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 26:
			try setConsoleInformationUploadFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try getAutomaticApplicationDownloadFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 28:
			try setAutomaticApplicationDownloadFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 29:
			let ret = try getNotificationSettings()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 30:
			try setNotificationSettings(im.getBytes(8, 0x18))
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try getAccountNotificationSettings(im.getBuffer(0x6, 0)! as Buffer<NnSettingsSystem_AccountNotificationSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 32:
			try setAccountNotificationSettings(im.getBuffer(0x5, 0)! as Buffer<NnSettingsSystem_AccountNotificationSettings>)
			om.initialize(0, 0, 0)
		
		case 35:
			let ret = try getVibrationMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 36:
			try setVibrationMasterVolume(im.getData(8) as Float32)
			om.initialize(0, 0, 0)
		
		case 37:
			let ret = try getSettingsItemValueSize(im.getBuffer(0x19, 0)! as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1)! as Buffer<NnSettings_SettingsItemKey>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 38:
			let ret = try getSettingsItemValue(im.getBuffer(0x19, 0)! as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1)! as Buffer<NnSettings_SettingsItemKey>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 39:
			let ret = try getTvSettings()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 40:
			try setTvSettings(im.getBytes(8, 0x20))
			om.initialize(0, 0, 0)
		
		case 41:
			try getEdid(im.getBuffer(0x1a, 0)! as Buffer<NnSettingsSystem_Edid>)
			om.initialize(0, 0, 0)
		
		case 42:
			try setEdid(im.getBuffer(0x19, 0)! as Buffer<NnSettingsSystem_Edid>)
			om.initialize(0, 0, 0)
		
		case 43:
			let ret = try getAudioOutputMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 44:
			try setAudioOutputMode(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 45:
			let ret = try isForceMuteOnHeadphoneRemoved()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 46:
			try setForceMuteOnHeadphoneRemoved(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 47:
			let ret = try getQuestFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 48:
			try setQuestFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 49:
			let ret = try getDataDeletionSettings()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 50:
			try setDataDeletionSettings(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 51:
			let ret = try getInitialSystemAppletProgramId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 52:
			let ret = try getOverlayDispProgramId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 53:
			let ret = try getDeviceTimeZoneLocationName()
			om.initialize(0, 0, 36)
			if ret.count != 0x24 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 54:
			try setDeviceTimeZoneLocationName(im.getBytes(8, 0x24))
			om.initialize(0, 0, 0)
		
		case 55:
			let ret = try getWirelessCertificationFileSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 56:
			let ret = try getWirelessCertificationFile(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 57:
			try setRegionCode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 58:
			let ret = try getNetworkSystemClockContext()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 59:
			try setNetworkSystemClockContext(im.getBytes(8, 0x20))
			om.initialize(0, 0, 0)
		
		case 60:
			let ret = try isUserSystemClockAutomaticCorrectionEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 61:
			try setUserSystemClockAutomaticCorrectionEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 62:
			let ret = try getDebugModeFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 63:
			let ret = try getPrimaryAlbumStorage()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 64:
			try setPrimaryAlbumStorage(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 65:
			let ret = try getUsb30EnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 66:
			try setUsb30EnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 67:
			let ret = try getBatteryLot()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 68:
			let ret = try getSerialNumber()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 69:
			let ret = try getNfcEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 70:
			try setNfcEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 71:
			let ret = try getSleepSettings()
			om.initialize(0, 0, 12)
			if ret.count != 0xc { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 72:
			try setSleepSettings(im.getBytes(8, 0xc))
			om.initialize(0, 0, 0)
		
		case 73:
			let ret = try getWirelessLanEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 74:
			try setWirelessLanEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 75:
			let ret = try getInitialLaunchSettings()
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 76:
			try setInitialLaunchSettings(im.getBytes(8, 0x20))
			om.initialize(0, 0, 0)
		
		case 77:
			try getDeviceNickName(im.getBuffer(0x16, 0)! as Buffer<NnSettingsSystem_DeviceNickName>)
			om.initialize(0, 0, 0)
		
		case 78:
			try setDeviceNickName(im.getBuffer(0x15, 0)! as Buffer<NnSettingsSystem_DeviceNickName>)
			om.initialize(0, 0, 0)
		
		case 79:
			let ret = try getProductModel()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 80:
			let ret = try getLdnChannel()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 81:
			try setLdnChannel(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 82:
			let ret = try acquireTelemetryDirtyFlagEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 83:
			let ret = try getTelemetryDirtyFlags()
			om.initialize(0, 0, 0)
		
		case 84:
			let ret = try getPtmBatteryLot()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 85:
			try setPtmBatteryLot(im.getBytes(8, 0x18))
			om.initialize(0, 0, 0)
		
		case 86:
			let ret = try getPtmFuelGaugeParameter()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 87:
			try setPtmFuelGaugeParameter(im.getBytes(8, 0x18))
			om.initialize(0, 0, 0)
		
		case 88:
			let ret = try getBluetoothEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 89:
			try setBluetoothEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 90:
			let ret = try getMiiAuthorId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 91:
			try setShutdownRtcValue(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 92:
			let ret = try getShutdownRtcValue()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 93:
			let ret = try acquireFatalDirtyFlagEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 94:
			let ret = try getFatalDirtyFlags()
			om.initialize(0, 0, 0)
		
		case 95:
			let ret = try getAutoUpdateEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 96:
			try setAutoUpdateEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 97:
			let ret = try getNxControllerSettings(im.getBuffer(0x6, 0)! as Buffer<NnSettingsSystem_NxControllerSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 98:
			try setNxControllerSettings(im.getBuffer(0x5, 0)! as Buffer<NnSettingsSystem_NxControllerSettings>)
			om.initialize(0, 0, 0)
		
		case 99:
			let ret = try getBatteryPercentageFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 100:
			try setBatteryPercentageFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try getExternalRtcResetFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 102:
			try setExternalRtcResetFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try getUsbFullKeyEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 104:
			try setUsbFullKeyEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 105:
			try setExternalSteadyClockInternalOffset(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 106:
			let ret = try getExternalSteadyClockInternalOffset()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 107:
			let ret = try getBacklightSettingsEx()
			om.initialize(0, 0, 44)
			if ret.count != 0x2c { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 108:
			try setBacklightSettingsEx(im.getBytes(8, 0x2c))
			om.initialize(0, 0, 0)
		
		case 109:
			let ret = try getHeadphoneVolumeWarningCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 110:
			try setHeadphoneVolumeWarningCount(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 111:
			let ret = try getBluetoothAfhEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 112:
			try setBluetoothAfhEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 113:
			let ret = try getBluetoothBoostEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 114:
			try setBluetoothBoostEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 115:
			let ret = try getInRepairProcessEnableFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 116:
			try setInRepairProcessEnableFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 117:
			let ret = try getHeadphoneVolumeUpdateFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 118:
			try setHeadphoneVolumeUpdateFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 119:
			let (_0, _1, _2) = try needsToUpdateHeadphoneVolume(im.getData(8) as UInt8)
			om.initialize(0, 0, 3)
			om.setData(8, _0)
			om.setData(9, _1)
			om.setData(10, _2)
		
		case 120:
			let ret = try getPushNotificationActivityModeOnSleep()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 121:
			try setPushNotificationActivityModeOnSleep(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 122:
			let ret = try getServiceDiscoveryControlSettings()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 123:
			try setServiceDiscoveryControlSettings(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 124:
			let ret = try getErrorReportSharePermission()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 125:
			try setErrorReportSharePermission(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 126:
			let ret = try getAppletLaunchFlags()
			om.initialize(0, 0, 0)
		
		case 127:
			try setAppletLaunchFlags(nil)
			om.initialize(0, 0, 0)
		
		case 128:
			let ret = try getConsoleSixAxisSensorAccelerationBias()
			om.initialize(0, 0, 12)
			if ret.count != 0xc { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 129:
			try setConsoleSixAxisSensorAccelerationBias(im.getBytes(8, 0xc))
			om.initialize(0, 0, 0)
		
		case 130:
			let ret = try getConsoleSixAxisSensorAngularVelocityBias()
			om.initialize(0, 0, 12)
			if ret.count != 0xc { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 131:
			try setConsoleSixAxisSensorAngularVelocityBias(im.getBytes(8, 0xc))
			om.initialize(0, 0, 0)
		
		case 132:
			let ret = try getConsoleSixAxisSensorAccelerationGain()
			om.initialize(0, 0, 36)
			if ret.count != 0x24 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 133:
			try setConsoleSixAxisSensorAccelerationGain(im.getBytes(8, 0x24))
			om.initialize(0, 0, 0)
		
		case 134:
			let ret = try getConsoleSixAxisSensorAngularVelocityGain()
			om.initialize(0, 0, 36)
			if ret.count != 0x24 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 135:
			try setConsoleSixAxisSensorAngularVelocityGain(im.getBytes(8, 0x24))
			om.initialize(0, 0, 0)
		
		case 136:
			let ret = try getKeyboardLayout()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 137:
			try setKeyboardLayout(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 138:
			let ret = try getWebInspectorFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 139:
			let ret = try getAllowedSslHosts(im.getBuffer(0x6, 0)! as Buffer<NnSettingsSystem_AllowedSslHost>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 140:
			try getHostFsMountPoint(im.getBuffer(0x16, 0)! as Buffer<NnSettingsSystem_HostFsMountPoint>)
			om.initialize(0, 0, 0)
		
		case 141:
			let ret = try getRequiresRunRepairTimeReviser(nil)
			om.initialize(0, 0, 0)
		
		case 142:
			let ret = try setRequiresRunRepairTimeReviser(nil)
			om.initialize(0, 0, 0)
		
		case 143:
			let ret = try setBlePairingSettings(nil)
			om.initialize(0, 0, 0)
		
		case 144:
			let ret = try getBlePairingSettings(nil)
			om.initialize(0, 0, 0)
		
		case 145:
			let ret = try getConsoleSixAxisSensorAngularVelocityTimeBias(nil)
			om.initialize(0, 0, 0)
		
		case 146:
			let ret = try setConsoleSixAxisSensorAngularVelocityTimeBias(nil)
			om.initialize(0, 0, 0)
		
		case 147:
			let ret = try getConsoleSixAxisSensorAngularAcceleration(nil)
			om.initialize(0, 0, 0)
		
		case 148:
			let ret = try setConsoleSixAxisSensorAngularAcceleration(nil)
			om.initialize(0, 0, 0)
		
		case 149:
			let ret = try getRebootlessSystemUpdateVersion(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::settings::ISystemSettingsServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSettings_ISystemSettingsServer_Impl: NnSettings_ISystemSettingsServer {
	override func setLanguageCode(_ _0: NnSettings_LanguageCode) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetLanguageCode") }
	override func setNetworkSettings(_ _0: Buffer<NnSettingsSystem_NetworkSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNetworkSettings") }
	override func getNetworkSettings(_ _0: Buffer<NnSettingsSystem_NetworkSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNetworkSettings") }
	override func getFirmwareVersion(_ _0: Buffer<NnSettingsSystem_FirmwareVersion>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFirmwareVersion") }
	override func getFirmwareVersion2(_ _0: Buffer<NnSettingsSystem_FirmwareVersion>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFirmwareVersion2") }
	override func getFirmwareVersionDigest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFirmwareVersionDigest") }
	override func getLockScreenFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetLockScreenFlag") }
	override func setLockScreenFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetLockScreenFlag") }
	override func getBacklightSettings() throws -> NnSettingsSystem_BacklightSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBacklightSettings") }
	override func setBacklightSettings(_ _0: NnSettingsSystem_BacklightSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBacklightSettings") }
	override func setBluetoothDevicesSettings(_ _0: Buffer<NnSettingsSystem_BluetoothDevicesSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothDevicesSettings") }
	override func getBluetoothDevicesSettings(_ _0: Buffer<NnSettingsSystem_BluetoothDevicesSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothDevicesSettings") }
	override func getExternalSteadyClockSourceId() throws -> NnUtil_Uuid { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetExternalSteadyClockSourceId") }
	override func setExternalSteadyClockSourceId(_ _0: NnUtil_Uuid) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetExternalSteadyClockSourceId") }
	override func getUserSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetUserSystemClockContext") }
	override func setUserSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUserSystemClockContext") }
	override func getAccountSettings() throws -> NnSettingsSystem_AccountSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAccountSettings") }
	override func setAccountSettings(_ _0: NnSettingsSystem_AccountSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAccountSettings") }
	override func getAudioVolume(_ _0: UInt32) throws -> NnSettingsSystem_AudioVolume { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAudioVolume") }
	override func setAudioVolume(_ _0: NnSettingsSystem_AudioVolume, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAudioVolume") }
	override func getEulaVersions(_ _0: Buffer<NnSettingsSystem_EulaVersion>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetEulaVersions") }
	override func setEulaVersions(_ _0: Buffer<NnSettingsSystem_EulaVersion>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetEulaVersions") }
	override func getColorSetId() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetColorSetId") }
	override func setColorSetId(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetColorSetId") }
	override func getConsoleInformationUploadFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleInformationUploadFlag") }
	override func setConsoleInformationUploadFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleInformationUploadFlag") }
	override func getAutomaticApplicationDownloadFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAutomaticApplicationDownloadFlag") }
	override func setAutomaticApplicationDownloadFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAutomaticApplicationDownloadFlag") }
	override func getNotificationSettings() throws -> NnSettingsSystem_NotificationSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNotificationSettings") }
	override func setNotificationSettings(_ _0: NnSettingsSystem_NotificationSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNotificationSettings") }
	override func getAccountNotificationSettings(_ _0: Buffer<NnSettingsSystem_AccountNotificationSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAccountNotificationSettings") }
	override func setAccountNotificationSettings(_ _0: Buffer<NnSettingsSystem_AccountNotificationSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAccountNotificationSettings") }
	override func getVibrationMasterVolume() throws -> Float32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetVibrationMasterVolume") }
	override func setVibrationMasterVolume(_ _0: Float32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetVibrationMasterVolume") }
	override func getSettingsItemValueSize(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSettingsItemValueSize") }
	override func getSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>, _ _2: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSettingsItemValue") }
	override func getTvSettings() throws -> NnSettingsSystem_TvSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetTvSettings") }
	override func setTvSettings(_ _0: NnSettingsSystem_TvSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetTvSettings") }
	override func getEdid(_ _0: Buffer<NnSettingsSystem_Edid>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetEdid") }
	override func setEdid(_ _0: Buffer<NnSettingsSystem_Edid>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetEdid") }
	override func getAudioOutputMode(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAudioOutputMode") }
	override func setAudioOutputMode(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAudioOutputMode") }
	override func isForceMuteOnHeadphoneRemoved() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#IsForceMuteOnHeadphoneRemoved") }
	override func setForceMuteOnHeadphoneRemoved(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetForceMuteOnHeadphoneRemoved") }
	override func getQuestFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetQuestFlag") }
	override func setQuestFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetQuestFlag") }
	override func getDataDeletionSettings() throws -> NnSettingsSystem_DataDeletionSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDataDeletionSettings") }
	override func setDataDeletionSettings(_ _0: NnSettingsSystem_DataDeletionSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetDataDeletionSettings") }
	override func getInitialSystemAppletProgramId() throws -> NnNcm_ProgramId { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetInitialSystemAppletProgramId") }
	override func getOverlayDispProgramId() throws -> NnNcm_ProgramId { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetOverlayDispProgramId") }
	override func getDeviceTimeZoneLocationName() throws -> NnTime_LocationName { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDeviceTimeZoneLocationName") }
	override func setDeviceTimeZoneLocationName(_ _0: NnTime_LocationName) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetDeviceTimeZoneLocationName") }
	override func getWirelessCertificationFileSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWirelessCertificationFileSize") }
	override func getWirelessCertificationFile(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWirelessCertificationFile") }
	override func setRegionCode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetRegionCode") }
	override func getNetworkSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNetworkSystemClockContext") }
	override func setNetworkSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNetworkSystemClockContext") }
	override func isUserSystemClockAutomaticCorrectionEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#IsUserSystemClockAutomaticCorrectionEnabled") }
	override func setUserSystemClockAutomaticCorrectionEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUserSystemClockAutomaticCorrectionEnabled") }
	override func getDebugModeFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDebugModeFlag") }
	override func getPrimaryAlbumStorage() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPrimaryAlbumStorage") }
	override func setPrimaryAlbumStorage(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPrimaryAlbumStorage") }
	override func getUsb30EnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetUsb30EnableFlag") }
	override func setUsb30EnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUsb30EnableFlag") }
	override func getBatteryLot() throws -> NnSettingsSystem_BatteryLot { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBatteryLot") }
	override func getSerialNumber() throws -> NnSettingsSystem_SerialNumber { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSerialNumber") }
	override func getNfcEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNfcEnableFlag") }
	override func setNfcEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNfcEnableFlag") }
	override func getSleepSettings() throws -> NnSettingsSystem_SleepSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetSleepSettings") }
	override func setSleepSettings(_ _0: NnSettingsSystem_SleepSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetSleepSettings") }
	override func getWirelessLanEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWirelessLanEnableFlag") }
	override func setWirelessLanEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetWirelessLanEnableFlag") }
	override func getInitialLaunchSettings() throws -> NnSettingsSystem_InitialLaunchSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetInitialLaunchSettings") }
	override func setInitialLaunchSettings(_ _0: NnSettingsSystem_InitialLaunchSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetInitialLaunchSettings") }
	override func getDeviceNickName(_ _0: Buffer<NnSettingsSystem_DeviceNickName>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetDeviceNickName") }
	override func setDeviceNickName(_ _0: Buffer<NnSettingsSystem_DeviceNickName>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetDeviceNickName") }
	override func getProductModel() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetProductModel") }
	override func getLdnChannel() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetLdnChannel") }
	override func setLdnChannel(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetLdnChannel") }
	override func acquireTelemetryDirtyFlagEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#AcquireTelemetryDirtyFlagEventHandle") }
	override func getTelemetryDirtyFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetTelemetryDirtyFlags") }
	override func getPtmBatteryLot() throws -> NnSettingsFactory_BatteryLot { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPtmBatteryLot") }
	override func setPtmBatteryLot(_ _0: NnSettingsFactory_BatteryLot) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPtmBatteryLot") }
	override func getPtmFuelGaugeParameter() throws -> NnSettingsSystem_PtmFuelGaugeParameter { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPtmFuelGaugeParameter") }
	override func setPtmFuelGaugeParameter(_ _0: NnSettingsSystem_PtmFuelGaugeParameter) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPtmFuelGaugeParameter") }
	override func getBluetoothEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothEnableFlag") }
	override func setBluetoothEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothEnableFlag") }
	override func getMiiAuthorId() throws -> NnUtil_Uuid { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetMiiAuthorId") }
	override func setShutdownRtcValue(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetShutdownRtcValue") }
	override func getShutdownRtcValue() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetShutdownRtcValue") }
	override func acquireFatalDirtyFlagEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#AcquireFatalDirtyFlagEventHandle") }
	override func getFatalDirtyFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetFatalDirtyFlags") }
	override func getAutoUpdateEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAutoUpdateEnableFlag") }
	override func setAutoUpdateEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAutoUpdateEnableFlag") }
	override func getNxControllerSettings(_ _0: Buffer<NnSettingsSystem_NxControllerSettings>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetNxControllerSettings") }
	override func setNxControllerSettings(_ _0: Buffer<NnSettingsSystem_NxControllerSettings>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetNxControllerSettings") }
	override func getBatteryPercentageFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBatteryPercentageFlag") }
	override func setBatteryPercentageFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBatteryPercentageFlag") }
	override func getExternalRtcResetFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetExternalRtcResetFlag") }
	override func setExternalRtcResetFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetExternalRtcResetFlag") }
	override func getUsbFullKeyEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetUsbFullKeyEnableFlag") }
	override func setUsbFullKeyEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetUsbFullKeyEnableFlag") }
	override func setExternalSteadyClockInternalOffset(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetExternalSteadyClockInternalOffset") }
	override func getExternalSteadyClockInternalOffset() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetExternalSteadyClockInternalOffset") }
	override func getBacklightSettingsEx() throws -> NnSettingsSystem_BacklightSettingsEx { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBacklightSettingsEx") }
	override func setBacklightSettingsEx(_ _0: NnSettingsSystem_BacklightSettingsEx) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBacklightSettingsEx") }
	override func getHeadphoneVolumeWarningCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetHeadphoneVolumeWarningCount") }
	override func setHeadphoneVolumeWarningCount(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetHeadphoneVolumeWarningCount") }
	override func getBluetoothAfhEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothAfhEnableFlag") }
	override func setBluetoothAfhEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothAfhEnableFlag") }
	override func getBluetoothBoostEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBluetoothBoostEnableFlag") }
	override func setBluetoothBoostEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBluetoothBoostEnableFlag") }
	override func getInRepairProcessEnableFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetInRepairProcessEnableFlag") }
	override func setInRepairProcessEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetInRepairProcessEnableFlag") }
	override func getHeadphoneVolumeUpdateFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetHeadphoneVolumeUpdateFlag") }
	override func setHeadphoneVolumeUpdateFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetHeadphoneVolumeUpdateFlag") }
	override func needsToUpdateHeadphoneVolume(_ _0: UInt8) throws -> (UInt8, UInt8, Int8) { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#NeedsToUpdateHeadphoneVolume") }
	override func getPushNotificationActivityModeOnSleep() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetPushNotificationActivityModeOnSleep") }
	override func setPushNotificationActivityModeOnSleep(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetPushNotificationActivityModeOnSleep") }
	override func getServiceDiscoveryControlSettings() throws -> NnSettingsSystem_ServiceDiscoveryControlSettings { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetServiceDiscoveryControlSettings") }
	override func setServiceDiscoveryControlSettings(_ _0: NnSettingsSystem_ServiceDiscoveryControlSettings) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetServiceDiscoveryControlSettings") }
	override func getErrorReportSharePermission() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetErrorReportSharePermission") }
	override func setErrorReportSharePermission(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetErrorReportSharePermission") }
	override func getAppletLaunchFlags() throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAppletLaunchFlags") }
	override func setAppletLaunchFlags(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetAppletLaunchFlags") }
	override func getConsoleSixAxisSensorAccelerationBias() throws -> NnSettingsSystem_ConsoleSixAxisSensorAccelerationBias { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAccelerationBias") }
	override func setConsoleSixAxisSensorAccelerationBias(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAccelerationBias) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAccelerationBias") }
	override func getConsoleSixAxisSensorAngularVelocityBias() throws -> NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityBias { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularVelocityBias") }
	override func setConsoleSixAxisSensorAngularVelocityBias(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityBias) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularVelocityBias") }
	override func getConsoleSixAxisSensorAccelerationGain() throws -> NnSettingsSystem_ConsoleSixAxisSensorAccelerationGain { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAccelerationGain") }
	override func setConsoleSixAxisSensorAccelerationGain(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAccelerationGain) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAccelerationGain") }
	override func getConsoleSixAxisSensorAngularVelocityGain() throws -> NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityGain { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularVelocityGain") }
	override func setConsoleSixAxisSensorAngularVelocityGain(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityGain) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularVelocityGain") }
	override func getKeyboardLayout() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetKeyboardLayout") }
	override func setKeyboardLayout(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetKeyboardLayout") }
	override func getWebInspectorFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetWebInspectorFlag") }
	override func getAllowedSslHosts(_ _0: Buffer<NnSettingsSystem_AllowedSslHost>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetAllowedSslHosts") }
	override func getHostFsMountPoint(_ _0: Buffer<NnSettingsSystem_HostFsMountPoint>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetHostFsMountPoint") }
	override func getRequiresRunRepairTimeReviser(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetRequiresRunRepairTimeReviser") }
	override func setRequiresRunRepairTimeReviser(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetRequiresRunRepairTimeReviser") }
	override func setBlePairingSettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetBlePairingSettings") }
	override func getBlePairingSettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetBlePairingSettings") }
	override func getConsoleSixAxisSensorAngularVelocityTimeBias(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularVelocityTimeBias") }
	override func setConsoleSixAxisSensorAngularVelocityTimeBias(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularVelocityTimeBias") }
	override func getConsoleSixAxisSensorAngularAcceleration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetConsoleSixAxisSensorAngularAcceleration") }
	override func setConsoleSixAxisSensorAngularAcceleration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#SetConsoleSixAxisSensorAngularAcceleration") }
	override func getRebootlessSystemUpdateVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISystemSettingsServer#GetRebootlessSystemUpdateVersion") }
}
*/

class NnSettings_ISettingsItemKeyIterator: IpcService {
	func goNext() throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsItemKeyIterator#GoNext") }
	func getKeySize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsItemKeyIterator#GetKeySize") }
	func getKey(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsItemKeyIterator#GetKey") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try goNext()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getKeySize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			let ret = try getKey(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::settings::ISettingsItemKeyIterator: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSettings_ISettingsItemKeyIterator_Impl: NnSettings_ISettingsItemKeyIterator {
	override func goNext() throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsItemKeyIterator#GoNext") }
	override func getKeySize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsItemKeyIterator#GetKeySize") }
	override func getKey(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsItemKeyIterator#GetKey") }
}
*/

class NnSettings_ISettingsServer: IpcService {
	func getLanguageCode() throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetLanguageCode") }
	func getAvailableLanguageCodes(_ _0: Buffer<NnSettings_LanguageCode>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodes") }
	func makeLanguageCode(_ _0: UInt32) throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#MakeLanguageCode") }
	func getAvailableLanguageCodeCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodeCount") }
	func getRegionCode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetRegionCode") }
	func getAvailableLanguageCodes2(_ _0: Buffer<NnSettings_LanguageCode>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodes2") }
	func getAvailableLanguageCodeCount2() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodeCount2") }
	func getKeyCodeMap(_ _0: Buffer<NnKpr_KeyCodeMap>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetKeyCodeMap") }
	func getQuestFlag(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetQuestFlag") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getLanguageCode()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			let ret = try getAvailableLanguageCodes(im.getBuffer(0xa, 0)! as Buffer<NnSettings_LanguageCode>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try makeLanguageCode(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 3:
			let ret = try getAvailableLanguageCodeCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try getRegionCode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 5:
			let ret = try getAvailableLanguageCodes2(im.getBuffer(0x6, 0)! as Buffer<NnSettings_LanguageCode>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try getAvailableLanguageCodeCount2()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			try getKeyCodeMap(im.getBuffer(0x16, 0)! as Buffer<NnKpr_KeyCodeMap>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getQuestFlag(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::settings::ISettingsServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSettings_ISettingsServer_Impl: NnSettings_ISettingsServer {
	override func getLanguageCode() throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetLanguageCode") }
	override func getAvailableLanguageCodes(_ _0: Buffer<NnSettings_LanguageCode>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodes") }
	override func makeLanguageCode(_ _0: UInt32) throws -> NnSettings_LanguageCode { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#MakeLanguageCode") }
	override func getAvailableLanguageCodeCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodeCount") }
	override func getRegionCode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetRegionCode") }
	override func getAvailableLanguageCodes2(_ _0: Buffer<NnSettings_LanguageCode>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodes2") }
	override func getAvailableLanguageCodeCount2() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetAvailableLanguageCodeCount2") }
	override func getKeyCodeMap(_ _0: Buffer<NnKpr_KeyCodeMap>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetKeyCodeMap") }
	override func getQuestFlag(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::ISettingsServer#GetQuestFlag") }
}
*/

class NnSettings_IFirmwareDebugSettingsServer: IpcService {
	func setSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetSettingsItemValue") }
	func resetSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#ResetSettingsItemValue") }
	func createSettingsItemKeyIterator(_ _0: Buffer<NnSettings_SettingsName>) throws -> NnSettings_ISettingsItemKeyIterator { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#CreateSettingsItemKeyIterator") }
	func readSettings(_ _0: UInt32, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#ReadSettings") }
	func resetSettings(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#ResetSettings") }
	func setWebInspectorFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetWebInspectorFlag") }
	func setAllowedSslHosts(_ _0: Buffer<NnSettingsSystem_AllowedSslHost>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetAllowedSslHosts") }
	func setHostFsMountPoint(_ _0: Buffer<NnSettingsSystem_HostFsMountPoint>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetHostFsMountPoint") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2:
			try setSettingsItemValue(im.getBuffer(0x19, 0)! as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1)! as Buffer<NnSettings_SettingsItemKey>, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try resetSettingsItemValue(im.getBuffer(0x19, 0)! as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1)! as Buffer<NnSettings_SettingsItemKey>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try createSettingsItemKeyIterator(im.getBuffer(0x19, 0)! as Buffer<NnSettings_SettingsName>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try readSettings(im.getData(8) as UInt32, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 11:
			try resetSettings(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 20:
			try setWebInspectorFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 21:
			try setAllowedSslHosts(im.getBuffer(0x5, 0)! as Buffer<NnSettingsSystem_AllowedSslHost>)
			om.initialize(0, 0, 0)
		
		case 22:
			try setHostFsMountPoint(im.getBuffer(0x15, 0)! as Buffer<NnSettingsSystem_HostFsMountPoint>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::settings::IFirmwareDebugSettingsServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSettings_IFirmwareDebugSettingsServer_Impl: NnSettings_IFirmwareDebugSettingsServer {
	override func setSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetSettingsItemValue") }
	override func resetSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#ResetSettingsItemValue") }
	override func createSettingsItemKeyIterator(_ _0: Buffer<NnSettings_SettingsName>) throws -> NnSettings_ISettingsItemKeyIterator { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#CreateSettingsItemKeyIterator") }
	override func readSettings(_ _0: UInt32, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#ReadSettings") }
	override func resetSettings(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#ResetSettings") }
	override func setWebInspectorFlag(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetWebInspectorFlag") }
	override func setAllowedSslHosts(_ _0: Buffer<NnSettingsSystem_AllowedSslHost>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetAllowedSslHosts") }
	override func setHostFsMountPoint(_ _0: Buffer<NnSettingsSystem_HostFsMountPoint>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFirmwareDebugSettingsServer#SetHostFsMountPoint") }
}
*/

class NnSettings_IFactorySettingsServer: IpcService {
	func getBluetoothBdAddress() throws -> NnSettingsFactory_BdAddress { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetBluetoothBdAddress") }
	func getConfigurationId1() throws -> NnSettingsFactory_ConfigurationId1 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetConfigurationId1") }
	func getAccelerometerOffset() throws -> NnSettingsFactory_AccelerometerOffset { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAccelerometerOffset") }
	func getAccelerometerScale() throws -> NnSettingsFactory_AccelerometerScale { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAccelerometerScale") }
	func getGyroscopeOffset() throws -> NnSettingsFactory_GyroscopeOffset { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGyroscopeOffset") }
	func getGyroscopeScale() throws -> NnSettingsFactory_GyroscopeScale { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGyroscopeScale") }
	func getWirelessLanMacAddress() throws -> NnSettingsFactory_MacAddress { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetWirelessLanMacAddress") }
	func getWirelessLanCountryCodeCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetWirelessLanCountryCodeCount") }
	func getWirelessLanCountryCodes(_ _0: Buffer<NnSettingsFactory_CountryCode>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetWirelessLanCountryCodes") }
	func getSerialNumber() throws -> NnSettingsFactory_SerialNumber { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSerialNumber") }
	func setInitialSystemAppletProgramId(_ _0: NnNcm_ProgramId) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#SetInitialSystemAppletProgramId") }
	func setOverlayDispProgramId(_ _0: NnNcm_ProgramId) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#SetOverlayDispProgramId") }
	func getBatteryLot() throws -> NnSettingsFactory_BatteryLot { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetBatteryLot") }
	func getEciDeviceCertificate(_ _0: Buffer<NnSettingsFactory_EccB233DeviceCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceCertificate") }
	func getEticketDeviceCertificate(_ _0: Buffer<NnSettingsFactory_Rsa2048DeviceCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEticketDeviceCertificate") }
	func getSslKey(_ _0: Buffer<NnSettingsFactory_SslKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSslKey") }
	func getSslCertificate(_ _0: Buffer<NnSettingsFactory_SslCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSslCertificate") }
	func getGameCardKey(_ _0: Buffer<NnSettingsFactory_GameCardKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGameCardKey") }
	func getGameCardCertificate(_ _0: Buffer<NnSettingsFactory_GameCardCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGameCardCertificate") }
	func getEciDeviceKey() throws -> NnSettingsFactory_EccB233DeviceKey { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceKey") }
	func getEticketDeviceKey(_ _0: Buffer<NnSettingsFactory_Rsa2048DeviceKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEticketDeviceKey") }
	func getSpeakerParameter() throws -> NnSettingsFactory_SpeakerParameter { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSpeakerParameter") }
	func getLcdVendorId() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetLcdVendorId") }
	func getEciDeviceCertificate2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceCertificate2") }
	func getEciDeviceKey2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceKey2") }
	func getAmiiboKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboKey") }
	func getAmiiboEcqvCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvCertificate") }
	func getAmiiboEcdsaCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcdsaCertificate") }
	func getAmiiboEcqvBlsKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvBlsKey") }
	func getAmiiboEcqvBlsCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvBlsCertificate") }
	func getAmiiboEcqvBlsRootCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvBlsRootCertificate") }
	func getUnknownId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetUnknownId") }
	func getUnknownId2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetUnknownId2") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getBluetoothBdAddress()
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			let ret = try getConfigurationId1()
			om.initialize(0, 0, 30)
			if ret.count != 0x1e { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 2:
			let ret = try getAccelerometerOffset()
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 3:
			let ret = try getAccelerometerScale()
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 4:
			let ret = try getGyroscopeOffset()
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getGyroscopeScale()
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 6:
			let ret = try getWirelessLanMacAddress()
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 7:
			let ret = try getWirelessLanCountryCodeCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 8:
			let ret = try getWirelessLanCountryCodes(im.getBuffer(0xa, 0)! as Buffer<NnSettingsFactory_CountryCode>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			let ret = try getSerialNumber()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			try setInitialSystemAppletProgramId(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 11:
			try setOverlayDispProgramId(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getBatteryLot()
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 14:
			try getEciDeviceCertificate(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_EccB233DeviceCertificate>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getEticketDeviceCertificate(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_Rsa2048DeviceCertificate>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getSslKey(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_SslKey>)
			om.initialize(0, 0, 0)
		
		case 17:
			try getSslCertificate(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_SslCertificate>)
			om.initialize(0, 0, 0)
		
		case 18:
			try getGameCardKey(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_GameCardKey>)
			om.initialize(0, 0, 0)
		
		case 19:
			try getGameCardCertificate(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_GameCardCertificate>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getEciDeviceKey()
			om.initialize(0, 0, 84)
			if ret.count != 0x54 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 21:
			try getEticketDeviceKey(im.getBuffer(0x16, 0)! as Buffer<NnSettingsFactory_Rsa2048DeviceKey>)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try getSpeakerParameter()
			om.initialize(0, 0, 90)
			if ret.count != 0x5a { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 23:
			let ret = try getLcdVendorId()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 24:
			let ret = try getEciDeviceCertificate2(nil)
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try getEciDeviceKey2(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			let ret = try getAmiiboKey(nil)
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try getAmiiboEcqvCertificate(nil)
			om.initialize(0, 0, 0)
		
		case 28:
			let ret = try getAmiiboEcdsaCertificate(nil)
			om.initialize(0, 0, 0)
		
		case 29:
			let ret = try getAmiiboEcqvBlsKey(nil)
			om.initialize(0, 0, 0)
		
		case 30:
			let ret = try getAmiiboEcqvBlsCertificate(nil)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try getAmiiboEcqvBlsRootCertificate(nil)
			om.initialize(0, 0, 0)
		
		case 32:
			let ret = try getUnknownId(nil)
			om.initialize(0, 0, 0)
		
		case 33:
			let ret = try getUnknownId2(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::settings::IFactorySettingsServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnSettings_IFactorySettingsServer_Impl: NnSettings_IFactorySettingsServer {
	override func getBluetoothBdAddress() throws -> NnSettingsFactory_BdAddress { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetBluetoothBdAddress") }
	override func getConfigurationId1() throws -> NnSettingsFactory_ConfigurationId1 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetConfigurationId1") }
	override func getAccelerometerOffset() throws -> NnSettingsFactory_AccelerometerOffset { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAccelerometerOffset") }
	override func getAccelerometerScale() throws -> NnSettingsFactory_AccelerometerScale { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAccelerometerScale") }
	override func getGyroscopeOffset() throws -> NnSettingsFactory_GyroscopeOffset { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGyroscopeOffset") }
	override func getGyroscopeScale() throws -> NnSettingsFactory_GyroscopeScale { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGyroscopeScale") }
	override func getWirelessLanMacAddress() throws -> NnSettingsFactory_MacAddress { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetWirelessLanMacAddress") }
	override func getWirelessLanCountryCodeCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetWirelessLanCountryCodeCount") }
	override func getWirelessLanCountryCodes(_ _0: Buffer<NnSettingsFactory_CountryCode>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetWirelessLanCountryCodes") }
	override func getSerialNumber() throws -> NnSettingsFactory_SerialNumber { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSerialNumber") }
	override func setInitialSystemAppletProgramId(_ _0: NnNcm_ProgramId) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#SetInitialSystemAppletProgramId") }
	override func setOverlayDispProgramId(_ _0: NnNcm_ProgramId) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#SetOverlayDispProgramId") }
	override func getBatteryLot() throws -> NnSettingsFactory_BatteryLot { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetBatteryLot") }
	override func getEciDeviceCertificate(_ _0: Buffer<NnSettingsFactory_EccB233DeviceCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceCertificate") }
	override func getEticketDeviceCertificate(_ _0: Buffer<NnSettingsFactory_Rsa2048DeviceCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEticketDeviceCertificate") }
	override func getSslKey(_ _0: Buffer<NnSettingsFactory_SslKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSslKey") }
	override func getSslCertificate(_ _0: Buffer<NnSettingsFactory_SslCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSslCertificate") }
	override func getGameCardKey(_ _0: Buffer<NnSettingsFactory_GameCardKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGameCardKey") }
	override func getGameCardCertificate(_ _0: Buffer<NnSettingsFactory_GameCardCertificate>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetGameCardCertificate") }
	override func getEciDeviceKey() throws -> NnSettingsFactory_EccB233DeviceKey { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceKey") }
	override func getEticketDeviceKey(_ _0: Buffer<NnSettingsFactory_Rsa2048DeviceKey>) throws { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEticketDeviceKey") }
	override func getSpeakerParameter() throws -> NnSettingsFactory_SpeakerParameter { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetSpeakerParameter") }
	override func getLcdVendorId() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetLcdVendorId") }
	override func getEciDeviceCertificate2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceCertificate2") }
	override func getEciDeviceKey2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetEciDeviceKey2") }
	override func getAmiiboKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboKey") }
	override func getAmiiboEcqvCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvCertificate") }
	override func getAmiiboEcdsaCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcdsaCertificate") }
	override func getAmiiboEcqvBlsKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvBlsKey") }
	override func getAmiiboEcqvBlsCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvBlsCertificate") }
	override func getAmiiboEcqvBlsRootCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetAmiiboEcqvBlsRootCertificate") }
	override func getUnknownId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetUnknownId") }
	override func getUnknownId2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::settings::nn::settings::IFactorySettingsServer#GetUnknownId2") }
}
*/
