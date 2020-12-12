typealias NnSettings_SettingsItemKey = [UInt8]
typealias NnSettings_LanguageCode = [UInt8]
typealias NnSettings_SettingsName = [UInt8]

class NnSettings_ISystemSettingsServer: IpcService {
	func setLanguageCode(_ _0: NnSettings_LanguageCode) throws { throw IpcError.unimplemented }
	func setNetworkSettings(_ _0: Buffer<NnSettingsSystem_NetworkSettings>) throws { throw IpcError.unimplemented }
	func getNetworkSettings(_ _0: Buffer<NnSettingsSystem_NetworkSettings>) throws -> UInt32 { throw IpcError.unimplemented }
	func getFirmwareVersion(_ _0: Buffer<NnSettingsSystem_FirmwareVersion>) throws { throw IpcError.unimplemented }
	func getFirmwareVersion2(_ _0: Buffer<NnSettingsSystem_FirmwareVersion>) throws { throw IpcError.unimplemented }
	func getFirmwareVersionDigest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getLockScreenFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setLockScreenFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getBacklightSettings() throws -> NnSettingsSystem_BacklightSettings { throw IpcError.unimplemented }
	func setBacklightSettings(_ _0: NnSettingsSystem_BacklightSettings) throws { throw IpcError.unimplemented }
	func setBluetoothDevicesSettings(_ _0: Buffer<NnSettingsSystem_BluetoothDevicesSettings>) throws { throw IpcError.unimplemented }
	func getBluetoothDevicesSettings(_ _0: Buffer<NnSettingsSystem_BluetoothDevicesSettings>) throws -> UInt32 { throw IpcError.unimplemented }
	func getExternalSteadyClockSourceId() throws -> NnUtil_Uuid { throw IpcError.unimplemented }
	func setExternalSteadyClockSourceId(_ _0: NnUtil_Uuid) throws { throw IpcError.unimplemented }
	func getUserSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented }
	func setUserSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented }
	func getAccountSettings() throws -> NnSettingsSystem_AccountSettings { throw IpcError.unimplemented }
	func setAccountSettings(_ _0: NnSettingsSystem_AccountSettings) throws { throw IpcError.unimplemented }
	func getAudioVolume(_ _0: UInt32) throws -> NnSettingsSystem_AudioVolume { throw IpcError.unimplemented }
	func setAudioVolume(_ _0: NnSettingsSystem_AudioVolume, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func getEulaVersions(_ _0: Buffer<NnSettingsSystem_EulaVersion>) throws -> UInt32 { throw IpcError.unimplemented }
	func setEulaVersions(_ _0: Buffer<NnSettingsSystem_EulaVersion>) throws { throw IpcError.unimplemented }
	func getColorSetId() throws -> UInt32 { throw IpcError.unimplemented }
	func setColorSetId(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getConsoleInformationUploadFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setConsoleInformationUploadFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getAutomaticApplicationDownloadFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setAutomaticApplicationDownloadFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getNotificationSettings() throws -> NnSettingsSystem_NotificationSettings { throw IpcError.unimplemented }
	func setNotificationSettings(_ _0: NnSettingsSystem_NotificationSettings) throws { throw IpcError.unimplemented }
	func getAccountNotificationSettings(_ _0: Buffer<NnSettingsSystem_AccountNotificationSettings>) throws -> UInt32 { throw IpcError.unimplemented }
	func setAccountNotificationSettings(_ _0: Buffer<NnSettingsSystem_AccountNotificationSettings>) throws { throw IpcError.unimplemented }
	func getVibrationMasterVolume() throws -> Float32 { throw IpcError.unimplemented }
	func setVibrationMasterVolume(_ _0: Float32) throws { throw IpcError.unimplemented }
	func getSettingsItemValueSize(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>) throws -> UInt64 { throw IpcError.unimplemented }
	func getSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>, _ _2: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func getTvSettings() throws -> NnSettingsSystem_TvSettings { throw IpcError.unimplemented }
	func setTvSettings(_ _0: NnSettingsSystem_TvSettings) throws { throw IpcError.unimplemented }
	func getEdid(_ _0: Buffer<NnSettingsSystem_Edid>) throws { throw IpcError.unimplemented }
	func setEdid(_ _0: Buffer<NnSettingsSystem_Edid>) throws { throw IpcError.unimplemented }
	func getAudioOutputMode(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented }
	func setAudioOutputMode(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented }
	func isForceMuteOnHeadphoneRemoved() throws -> UInt8 { throw IpcError.unimplemented }
	func setForceMuteOnHeadphoneRemoved(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getQuestFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setQuestFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getDataDeletionSettings() throws -> NnSettingsSystem_DataDeletionSettings { throw IpcError.unimplemented }
	func setDataDeletionSettings(_ _0: NnSettingsSystem_DataDeletionSettings) throws { throw IpcError.unimplemented }
	func getInitialSystemAppletProgramId() throws -> NnNcm_ProgramId { throw IpcError.unimplemented }
	func getOverlayDispProgramId() throws -> NnNcm_ProgramId { throw IpcError.unimplemented }
	func getDeviceTimeZoneLocationName() throws -> NnTime_LocationName { throw IpcError.unimplemented }
	func setDeviceTimeZoneLocationName(_ _0: NnTime_LocationName) throws { throw IpcError.unimplemented }
	func getWirelessCertificationFileSize() throws -> UInt64 { throw IpcError.unimplemented }
	func getWirelessCertificationFile(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func setRegionCode(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getNetworkSystemClockContext() throws -> NnTime_SystemClockContext { throw IpcError.unimplemented }
	func setNetworkSystemClockContext(_ _0: NnTime_SystemClockContext) throws { throw IpcError.unimplemented }
	func isUserSystemClockAutomaticCorrectionEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func setUserSystemClockAutomaticCorrectionEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getDebugModeFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func getPrimaryAlbumStorage() throws -> UInt32 { throw IpcError.unimplemented }
	func setPrimaryAlbumStorage(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getUsb30EnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setUsb30EnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getBatteryLot() throws -> NnSettingsSystem_BatteryLot { throw IpcError.unimplemented }
	func getSerialNumber() throws -> NnSettingsSystem_SerialNumber { throw IpcError.unimplemented }
	func getNfcEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setNfcEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getSleepSettings() throws -> NnSettingsSystem_SleepSettings { throw IpcError.unimplemented }
	func setSleepSettings(_ _0: NnSettingsSystem_SleepSettings) throws { throw IpcError.unimplemented }
	func getWirelessLanEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setWirelessLanEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getInitialLaunchSettings() throws -> NnSettingsSystem_InitialLaunchSettings { throw IpcError.unimplemented }
	func setInitialLaunchSettings(_ _0: NnSettingsSystem_InitialLaunchSettings) throws { throw IpcError.unimplemented }
	func getDeviceNickName(_ _0: Buffer<NnSettingsSystem_DeviceNickName>) throws { throw IpcError.unimplemented }
	func setDeviceNickName(_ _0: Buffer<NnSettingsSystem_DeviceNickName>) throws { throw IpcError.unimplemented }
	func getProductModel() throws -> UInt32 { throw IpcError.unimplemented }
	func getLdnChannel() throws -> UInt32 { throw IpcError.unimplemented }
	func setLdnChannel(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func acquireTelemetryDirtyFlagEventHandle() throws -> KObject { throw IpcError.unimplemented }
	func getTelemetryDirtyFlags() throws -> Any? { throw IpcError.unimplemented }
	func getPtmBatteryLot() throws -> NnSettingsFactory_BatteryLot { throw IpcError.unimplemented }
	func setPtmBatteryLot(_ _0: NnSettingsFactory_BatteryLot) throws { throw IpcError.unimplemented }
	func getPtmFuelGaugeParameter() throws -> NnSettingsSystem_PtmFuelGaugeParameter { throw IpcError.unimplemented }
	func setPtmFuelGaugeParameter(_ _0: NnSettingsSystem_PtmFuelGaugeParameter) throws { throw IpcError.unimplemented }
	func getBluetoothEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setBluetoothEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getMiiAuthorId() throws -> NnUtil_Uuid { throw IpcError.unimplemented }
	func setShutdownRtcValue(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func getShutdownRtcValue() throws -> UInt64 { throw IpcError.unimplemented }
	func acquireFatalDirtyFlagEventHandle() throws -> KObject { throw IpcError.unimplemented }
	func getFatalDirtyFlags() throws -> Any? { throw IpcError.unimplemented }
	func getAutoUpdateEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setAutoUpdateEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getNxControllerSettings(_ _0: Buffer<NnSettingsSystem_NxControllerSettings>) throws -> UInt32 { throw IpcError.unimplemented }
	func setNxControllerSettings(_ _0: Buffer<NnSettingsSystem_NxControllerSettings>) throws { throw IpcError.unimplemented }
	func getBatteryPercentageFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setBatteryPercentageFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getExternalRtcResetFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setExternalRtcResetFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getUsbFullKeyEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setUsbFullKeyEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setExternalSteadyClockInternalOffset(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func getExternalSteadyClockInternalOffset() throws -> UInt64 { throw IpcError.unimplemented }
	func getBacklightSettingsEx() throws -> NnSettingsSystem_BacklightSettingsEx { throw IpcError.unimplemented }
	func setBacklightSettingsEx(_ _0: NnSettingsSystem_BacklightSettingsEx) throws { throw IpcError.unimplemented }
	func getHeadphoneVolumeWarningCount() throws -> UInt32 { throw IpcError.unimplemented }
	func setHeadphoneVolumeWarningCount(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getBluetoothAfhEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setBluetoothAfhEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getBluetoothBoostEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setBluetoothBoostEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getInRepairProcessEnableFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setInRepairProcessEnableFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getHeadphoneVolumeUpdateFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func setHeadphoneVolumeUpdateFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func needsToUpdateHeadphoneVolume(_ _0: UInt8) throws -> (UInt8, UInt8, Int8) { throw IpcError.unimplemented }
	func getPushNotificationActivityModeOnSleep() throws -> UInt32 { throw IpcError.unimplemented }
	func setPushNotificationActivityModeOnSleep(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getServiceDiscoveryControlSettings() throws -> NnSettingsSystem_ServiceDiscoveryControlSettings { throw IpcError.unimplemented }
	func setServiceDiscoveryControlSettings(_ _0: NnSettingsSystem_ServiceDiscoveryControlSettings) throws { throw IpcError.unimplemented }
	func getErrorReportSharePermission() throws -> UInt32 { throw IpcError.unimplemented }
	func setErrorReportSharePermission(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getAppletLaunchFlags() throws -> Any? { throw IpcError.unimplemented }
	func setAppletLaunchFlags(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorAccelerationBias() throws -> NnSettingsSystem_ConsoleSixAxisSensorAccelerationBias { throw IpcError.unimplemented }
	func setConsoleSixAxisSensorAccelerationBias(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAccelerationBias) throws { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorAngularVelocityBias() throws -> NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityBias { throw IpcError.unimplemented }
	func setConsoleSixAxisSensorAngularVelocityBias(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityBias) throws { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorAccelerationGain() throws -> NnSettingsSystem_ConsoleSixAxisSensorAccelerationGain { throw IpcError.unimplemented }
	func setConsoleSixAxisSensorAccelerationGain(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAccelerationGain) throws { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorAngularVelocityGain() throws -> NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityGain { throw IpcError.unimplemented }
	func setConsoleSixAxisSensorAngularVelocityGain(_ _0: NnSettingsSystem_ConsoleSixAxisSensorAngularVelocityGain) throws { throw IpcError.unimplemented }
	func getKeyboardLayout() throws -> UInt32 { throw IpcError.unimplemented }
	func setKeyboardLayout(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getWebInspectorFlag() throws -> UInt8 { throw IpcError.unimplemented }
	func getAllowedSslHosts(_ _0: Buffer<NnSettingsSystem_AllowedSslHost>) throws -> UInt32 { throw IpcError.unimplemented }
	func getHostFsMountPoint(_ _0: Buffer<NnSettingsSystem_HostFsMountPoint>) throws { throw IpcError.unimplemented }
	func getRequiresRunRepairTimeReviser(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setRequiresRunRepairTimeReviser(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setBlePairingSettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getBlePairingSettings(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorAngularVelocityTimeBias(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setConsoleSixAxisSensorAngularVelocityTimeBias(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorAngularAcceleration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setConsoleSixAxisSensorAngularAcceleration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getRebootlessSystemUpdateVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try setLanguageCode(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 1:
			try setNetworkSettings(im.getBuffer(0x5, 0) as Buffer<NnSettingsSystem_NetworkSettings>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getNetworkSettings(im.getBuffer(0x6, 0) as Buffer<NnSettingsSystem_NetworkSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try getFirmwareVersion(im.getBuffer(0x1a, 0) as Buffer<NnSettingsSystem_FirmwareVersion>)
			om.initialize(0, 0, 0)
		
		case 4:
			try getFirmwareVersion2(im.getBuffer(0x1a, 0) as Buffer<NnSettingsSystem_FirmwareVersion>)
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
			try setBluetoothDevicesSettings(im.getBuffer(0x5, 0) as Buffer<NnSettingsSystem_BluetoothDevicesSettings>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getBluetoothDevicesSettings(im.getBuffer(0x6, 0) as Buffer<NnSettingsSystem_BluetoothDevicesSettings>)
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
			let ret = try getEulaVersions(im.getBuffer(0x6, 0) as Buffer<NnSettingsSystem_EulaVersion>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			try setEulaVersions(im.getBuffer(0x5, 0) as Buffer<NnSettingsSystem_EulaVersion>)
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
			let ret = try getAccountNotificationSettings(im.getBuffer(0x6, 0) as Buffer<NnSettingsSystem_AccountNotificationSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 32:
			try setAccountNotificationSettings(im.getBuffer(0x5, 0) as Buffer<NnSettingsSystem_AccountNotificationSettings>)
			om.initialize(0, 0, 0)
		
		case 35:
			let ret = try getVibrationMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 36:
			try setVibrationMasterVolume(im.getData(8) as Float32)
			om.initialize(0, 0, 0)
		
		case 37:
			let ret = try getSettingsItemValueSize(im.getBuffer(0x19, 0) as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1) as Buffer<NnSettings_SettingsItemKey>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 38:
			let ret = try getSettingsItemValue(im.getBuffer(0x19, 0) as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1) as Buffer<NnSettings_SettingsItemKey>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
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
			try getEdid(im.getBuffer(0x1a, 0) as Buffer<NnSettingsSystem_Edid>)
			om.initialize(0, 0, 0)
		
		case 42:
			try setEdid(im.getBuffer(0x19, 0) as Buffer<NnSettingsSystem_Edid>)
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
			let ret = try getWirelessCertificationFile(im.getBuffer(0x6, 0) as Buffer<UInt8>)
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
			try getDeviceNickName(im.getBuffer(0x16, 0) as Buffer<NnSettingsSystem_DeviceNickName>)
			om.initialize(0, 0, 0)
		
		case 78:
			try setDeviceNickName(im.getBuffer(0x15, 0) as Buffer<NnSettingsSystem_DeviceNickName>)
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
			let ret = try getNxControllerSettings(im.getBuffer(0x6, 0) as Buffer<NnSettingsSystem_NxControllerSettings>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 98:
			try setNxControllerSettings(im.getBuffer(0x5, 0) as Buffer<NnSettingsSystem_NxControllerSettings>)
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
			let ret = try getAllowedSslHosts(im.getBuffer(0x6, 0) as Buffer<NnSettingsSystem_AllowedSslHost>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 140:
			try getHostFsMountPoint(im.getBuffer(0x16, 0) as Buffer<NnSettingsSystem_HostFsMountPoint>)
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

class NnSettings_ISettingsItemKeyIterator: IpcService {
	func goNext() throws { throw IpcError.unimplemented }
	func getKeySize() throws -> UInt64 { throw IpcError.unimplemented }
	func getKey(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	
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
			let ret = try getKey(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::settings::ISettingsItemKeyIterator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSettings_ISettingsServer: IpcService {
	func getLanguageCode() throws -> NnSettings_LanguageCode { throw IpcError.unimplemented }
	func getAvailableLanguageCodes(_ _0: Buffer<NnSettings_LanguageCode>) throws -> UInt32 { throw IpcError.unimplemented }
	func makeLanguageCode(_ _0: UInt32) throws -> NnSettings_LanguageCode { throw IpcError.unimplemented }
	func getAvailableLanguageCodeCount() throws -> UInt32 { throw IpcError.unimplemented }
	func getRegionCode() throws -> UInt32 { throw IpcError.unimplemented }
	func getAvailableLanguageCodes2(_ _0: Buffer<NnSettings_LanguageCode>) throws -> UInt32 { throw IpcError.unimplemented }
	func getAvailableLanguageCodeCount2() throws -> UInt32 { throw IpcError.unimplemented }
	func getKeyCodeMap(_ _0: Buffer<NnKpr_KeyCodeMap>) throws { throw IpcError.unimplemented }
	func getQuestFlag(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getLanguageCode()
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			let ret = try getAvailableLanguageCodes(im.getBuffer(0xa, 0) as Buffer<NnSettings_LanguageCode>)
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
			let ret = try getAvailableLanguageCodes2(im.getBuffer(0x6, 0) as Buffer<NnSettings_LanguageCode>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 6:
			let ret = try getAvailableLanguageCodeCount2()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			try getKeyCodeMap(im.getBuffer(0x16, 0) as Buffer<NnKpr_KeyCodeMap>)
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

class NnSettings_IFirmwareDebugSettingsServer: IpcService {
	func setSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func resetSettingsItemValue(_ _0: Buffer<NnSettings_SettingsName>, _ _1: Buffer<NnSettings_SettingsItemKey>) throws { throw IpcError.unimplemented }
	func createSettingsItemKeyIterator(_ _0: Buffer<NnSettings_SettingsName>) throws -> NnSettings_ISettingsItemKeyIterator { throw IpcError.unimplemented }
	func readSettings(_ _0: UInt32, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func resetSettings(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setWebInspectorFlag(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setAllowedSslHosts(_ _0: Buffer<NnSettingsSystem_AllowedSslHost>) throws { throw IpcError.unimplemented }
	func setHostFsMountPoint(_ _0: Buffer<NnSettingsSystem_HostFsMountPoint>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 2:
			try setSettingsItemValue(im.getBuffer(0x19, 0) as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1) as Buffer<NnSettings_SettingsItemKey>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try resetSettingsItemValue(im.getBuffer(0x19, 0) as Buffer<NnSettings_SettingsName>, im.getBuffer(0x19, 1) as Buffer<NnSettings_SettingsItemKey>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try createSettingsItemKeyIterator(im.getBuffer(0x19, 0) as Buffer<NnSettings_SettingsName>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try readSettings(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 11:
			try resetSettings(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 20:
			try setWebInspectorFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 21:
			try setAllowedSslHosts(im.getBuffer(0x5, 0) as Buffer<NnSettingsSystem_AllowedSslHost>)
			om.initialize(0, 0, 0)
		
		case 22:
			try setHostFsMountPoint(im.getBuffer(0x15, 0) as Buffer<NnSettingsSystem_HostFsMountPoint>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::settings::IFirmwareDebugSettingsServer: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnSettings_IFactorySettingsServer: IpcService {
	func getBluetoothBdAddress() throws -> NnSettingsFactory_BdAddress { throw IpcError.unimplemented }
	func getConfigurationId1() throws -> NnSettingsFactory_ConfigurationId1 { throw IpcError.unimplemented }
	func getAccelerometerOffset() throws -> NnSettingsFactory_AccelerometerOffset { throw IpcError.unimplemented }
	func getAccelerometerScale() throws -> NnSettingsFactory_AccelerometerScale { throw IpcError.unimplemented }
	func getGyroscopeOffset() throws -> NnSettingsFactory_GyroscopeOffset { throw IpcError.unimplemented }
	func getGyroscopeScale() throws -> NnSettingsFactory_GyroscopeScale { throw IpcError.unimplemented }
	func getWirelessLanMacAddress() throws -> NnSettingsFactory_MacAddress { throw IpcError.unimplemented }
	func getWirelessLanCountryCodeCount() throws -> UInt32 { throw IpcError.unimplemented }
	func getWirelessLanCountryCodes(_ _0: Buffer<NnSettingsFactory_CountryCode>) throws -> UInt32 { throw IpcError.unimplemented }
	func getSerialNumber() throws -> NnSettingsFactory_SerialNumber { throw IpcError.unimplemented }
	func setInitialSystemAppletProgramId(_ _0: NnNcm_ProgramId) throws { throw IpcError.unimplemented }
	func setOverlayDispProgramId(_ _0: NnNcm_ProgramId) throws { throw IpcError.unimplemented }
	func getBatteryLot() throws -> NnSettingsFactory_BatteryLot { throw IpcError.unimplemented }
	func getEciDeviceCertificate(_ _0: Buffer<NnSettingsFactory_EccB233DeviceCertificate>) throws { throw IpcError.unimplemented }
	func getEticketDeviceCertificate(_ _0: Buffer<NnSettingsFactory_Rsa2048DeviceCertificate>) throws { throw IpcError.unimplemented }
	func getSslKey(_ _0: Buffer<NnSettingsFactory_SslKey>) throws { throw IpcError.unimplemented }
	func getSslCertificate(_ _0: Buffer<NnSettingsFactory_SslCertificate>) throws { throw IpcError.unimplemented }
	func getGameCardKey(_ _0: Buffer<NnSettingsFactory_GameCardKey>) throws { throw IpcError.unimplemented }
	func getGameCardCertificate(_ _0: Buffer<NnSettingsFactory_GameCardCertificate>) throws { throw IpcError.unimplemented }
	func getEciDeviceKey() throws -> NnSettingsFactory_EccB233DeviceKey { throw IpcError.unimplemented }
	func getEticketDeviceKey(_ _0: Buffer<NnSettingsFactory_Rsa2048DeviceKey>) throws { throw IpcError.unimplemented }
	func getSpeakerParameter() throws -> NnSettingsFactory_SpeakerParameter { throw IpcError.unimplemented }
	func getLcdVendorId() throws -> UInt32 { throw IpcError.unimplemented }
	func getEciDeviceCertificate2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getEciDeviceKey2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAmiiboKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAmiiboEcqvCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAmiiboEcdsaCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAmiiboEcqvBlsKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAmiiboEcqvBlsCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAmiiboEcqvBlsRootCertificate(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getUnknownId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getUnknownId2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
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
			let ret = try getWirelessLanCountryCodes(im.getBuffer(0xa, 0) as Buffer<NnSettingsFactory_CountryCode>)
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
			try getEciDeviceCertificate(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_EccB233DeviceCertificate>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getEticketDeviceCertificate(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_Rsa2048DeviceCertificate>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getSslKey(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_SslKey>)
			om.initialize(0, 0, 0)
		
		case 17:
			try getSslCertificate(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_SslCertificate>)
			om.initialize(0, 0, 0)
		
		case 18:
			try getGameCardKey(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_GameCardKey>)
			om.initialize(0, 0, 0)
		
		case 19:
			try getGameCardCertificate(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_GameCardCertificate>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getEciDeviceKey()
			om.initialize(0, 0, 84)
			if ret.count != 0x54 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 21:
			try getEticketDeviceKey(im.getBuffer(0x16, 0) as Buffer<NnSettingsFactory_Rsa2048DeviceKey>)
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
