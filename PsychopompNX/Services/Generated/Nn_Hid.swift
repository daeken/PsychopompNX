typealias NnHid_NpadStyleTag = UInt32
typealias NnHid_TouchState = Any?
typealias NnHid_JoyXpadId = UInt32
typealias NnHid_VibrationGcErmCommand = UInt64
typealias NnHid_PalmaApplicationSectionAccessBuffer = UInt8
typealias NnHid_VibrationValue = Any?
typealias NnHid_SixAxisSensorHandle = UInt32
typealias NnHid_PalmaFeature = UInt64
typealias NnHid_PalmaConnectionHandle = UInt64
typealias NnHid_VibrationDeviceHandle = UInt32
typealias NnHid_ConsoleSixAxisSensorHandle = UInt32
typealias NnHid_BasicXpadId = UInt32
typealias NnHid_VibrationDeviceInfoForIpc = [UInt8]

class NnHid_IActiveVibrationDeviceList: IpcService {
	func activateVibrationDevice(_ _0: NnHid_VibrationDeviceHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IActiveVibrationDeviceList#ActivateVibrationDevice") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try activateVibrationDevice(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::hid::IActiveVibrationDeviceList: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHid_IActiveVibrationDeviceList_Impl: NnHid_IActiveVibrationDeviceList {
	override func activateVibrationDevice(_ _0: NnHid_VibrationDeviceHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IActiveVibrationDeviceList#ActivateVibrationDevice") }
}
*/

class NnHid_IAppletResource: IpcService {
	func getSharedMemoryHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IAppletResource#GetSharedMemoryHandle") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSharedMemoryHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::hid::IAppletResource: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHid_IAppletResource_Impl: NnHid_IAppletResource {
	override func getSharedMemoryHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IAppletResource#GetSharedMemoryHandle") }
}
*/

class NnHid_IHidServer: IpcService {
	func createAppletResource(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> NnHid_IAppletResource { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#CreateAppletResource") }
	func activateDebugPad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateDebugPad") }
	func activateTouchScreen(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateTouchScreen") }
	func activateMouse(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateMouse") }
	func activateKeyboard(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateKeyboard") }
	func unknown32(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#Unknown32") }
	func acquireXpadIdEventHandle(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#AcquireXpadIdEventHandle") }
	func releaseXpadIdEventHandle(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReleaseXpadIdEventHandle") }
	func activateXpad(_ _0: NnHid_BasicXpadId, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateXpad") }
	func getXpadIds(_ _0: Buffer<NnHid_BasicXpadId>) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetXpadIds") }
	func activateJoyXpad(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateJoyXpad") }
	func getJoyXpadLifoHandle(_ _0: NnHid_JoyXpadId) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetJoyXpadLifoHandle") }
	func getJoyXpadIds(_ _0: Buffer<NnHid_JoyXpadId>) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetJoyXpadIds") }
	func activateSixAxisSensor(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateSixAxisSensor") }
	func deactivateSixAxisSensor(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DeactivateSixAxisSensor") }
	func getSixAxisSensorLifoHandle(_ _0: NnHid_BasicXpadId) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSixAxisSensorLifoHandle") }
	func activateJoySixAxisSensor(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateJoySixAxisSensor") }
	func deactivateJoySixAxisSensor(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DeactivateJoySixAxisSensor") }
	func getJoySixAxisSensorLifoHandle(_ _0: NnHid_JoyXpadId) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetJoySixAxisSensorLifoHandle") }
	func startSixAxisSensor(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartSixAxisSensor") }
	func stopSixAxisSensor(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopSixAxisSensor") }
	func isSixAxisSensorFusionEnabled(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsSixAxisSensorFusionEnabled") }
	func enableSixAxisSensorFusion(_ _0: Bool, _ _1: NnHid_SixAxisSensorHandle, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnableSixAxisSensorFusion") }
	func setSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSixAxisSensorFusionParameters") }
	func getSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSixAxisSensorFusionParameters") }
	func resetSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetSixAxisSensorFusionParameters") }
	func setAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetAccelerometerParameters") }
	func getAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetAccelerometerParameters") }
	func resetAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetAccelerometerParameters") }
	func setAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetAccelerometerPlayMode") }
	func getAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetAccelerometerPlayMode") }
	func resetAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetAccelerometerPlayMode") }
	func setGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetGyroscopeZeroDriftMode") }
	func getGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetGyroscopeZeroDriftMode") }
	func resetGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetGyroscopeZeroDriftMode") }
	func isSixAxisSensorAtRest(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsSixAxisSensorAtRest") }
	func unknown83(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#Unknown83") }
	func activateGesture(_ _0: Int32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateGesture") }
	func setSupportedNpadStyleSet(_ _0: NnHid_NpadStyleTag, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSupportedNpadStyleSet") }
	func getSupportedNpadStyleSet(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> NnHid_NpadStyleTag { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSupportedNpadStyleSet") }
	func setSupportedNpadIdType(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid, _ _2: Buffer<UInt32>) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSupportedNpadIdType") }
	func activateNpad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateNpad") }
	func deactivateNpad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DeactivateNpad") }
	func acquireNpadStyleSetUpdateEventHandle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: UInt64, _ _3: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#AcquireNpadStyleSetUpdateEventHandle") }
	func disconnectNpad(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DisconnectNpad") }
	func activateNpadWithRevision(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateNpadWithRevision") }
	func setNpadJoyHoldType(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyHoldType") }
	func getNpadJoyHoldType(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadJoyHoldType") }
	func setNpadJoyAssignmentModeSingleByDefault(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeSingleByDefault") }
	func setNpadJoyAssignmentModeSingle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Int64, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeSingle") }
	func setNpadJoyAssignmentModeDual(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeDual") }
	func mergeSingleJoyAsDualJoy(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#MergeSingleJoyAsDualJoy") }
	func startLrAssignmentMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartLrAssignmentMode") }
	func stopLrAssignmentMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopLrAssignmentMode") }
	func setNpadHandheldActivationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadHandheldActivationMode") }
	func getNpadHandheldActivationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadHandheldActivationMode") }
	func swapNpadAssignment(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SwapNpadAssignment") }
	func isUnintendedHomeButtonInputProtectionEnabled(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsUnintendedHomeButtonInputProtectionEnabled") }
	func enableUnintendedHomeButtonInputProtection(_ _0: Bool, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnableUnintendedHomeButtonInputProtection") }
	func setNpadJoyAssignmentModeSingleWithDestination(_ _0: UInt32, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws -> (Bool, UInt32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeSingleWithDestination") }
	func getVibrationDeviceInfo(_ _0: NnHid_VibrationDeviceHandle) throws -> NnHid_VibrationDeviceInfoForIpc { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetVibrationDeviceInfo") }
	func sendVibrationValue(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnHid_VibrationValue, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SendVibrationValue") }
	func getActualVibrationValue(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_VibrationValue { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetActualVibrationValue") }
	func createActiveVibrationDeviceList() throws -> NnHid_IActiveVibrationDeviceList { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#CreateActiveVibrationDeviceList") }
	func permitVibration(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#PermitVibration") }
	func isVibrationPermitted() throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsVibrationPermitted") }
	func sendVibrationValues(_ _0: NnApplet_AppletResourceUserId, _ _1: Buffer<NnHid_VibrationDeviceHandle>, _ _2: Buffer<NnHid_VibrationValue>) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SendVibrationValues") }
	func sendVibrationGcErmCommand(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnHid_VibrationGcErmCommand, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SendVibrationGcErmCommand") }
	func getActualVibrationGcErmCommand(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_VibrationGcErmCommand { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetActualVibrationGcErmCommand") }
	func beginPermitVibrationSession(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#BeginPermitVibrationSession") }
	func endPermitVibrationSession() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EndPermitVibrationSession") }
	func activateConsoleSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateConsoleSixAxisSensor") }
	func startConsoleSixAxisSensor(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartConsoleSixAxisSensor") }
	func stopConsoleSixAxisSensor(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopConsoleSixAxisSensor") }
	func activateSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateSevenSixAxisSensor") }
	func startSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartSevenSixAxisSensor") }
	func stopSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopSevenSixAxisSensor") }
	func initializeSevenSixAxisSensor(_ _0: UInt32, _ _1: UInt64, _ _2: UInt32, _ _3: UInt64, _ _4: NnApplet_AppletResourceUserId, _ _5: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#InitializeSevenSixAxisSensor") }
	func finalizeSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#FinalizeSevenSixAxisSensor") }
	func setSevenSixAxisSensorFusionStrength(_ _0: Float32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSevenSixAxisSensorFusionStrength") }
	func getSevenSixAxisSensorFusionStrength(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Float32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSevenSixAxisSensorFusionStrength") }
	func unknown310(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#Unknown310") }
	func isUsbFullKeyControllerEnabled() throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsUsbFullKeyControllerEnabled") }
	func enableUsbFullKeyController(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnableUsbFullKeyController") }
	func isUsbFullKeyControllerConnected(_ _0: UInt32) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsUsbFullKeyControllerConnected") }
	func hasBattery(_ _0: UInt32) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#HasBattery") }
	func hasLeftRightBattery(_ _0: UInt32) throws -> (Bool, Bool) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#HasLeftRightBattery") }
	func getNpadInterfaceType(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadInterfaceType") }
	func getNpadLeftRightInterfaceType(_ _0: UInt32) throws -> (UInt8, UInt8) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadLeftRightInterfaceType") }
	func getPalmaConnectionHandle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_PalmaConnectionHandle { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaConnectionHandle") }
	func initializePalma(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#InitializePalma") }
	func acquirePalmaOperationCompleteEvent(_ _0: NnHid_PalmaConnectionHandle) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#AcquirePalmaOperationCompleteEvent") }
	func getPalmaOperationInfo(_ _0: NnHid_PalmaConnectionHandle, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaOperationInfo") }
	func playPalmaActivity(_ _0: UInt64, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#PlayPalmaActivity") }
	func setPalmaFrModeType(_ _0: UInt64, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaFrModeType") }
	func readPalmaStep(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaStep") }
	func enablePalmaStep(_ _0: Bool, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnablePalmaStep") }
	func resetPalmaStep(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetPalmaStep") }
	func readPalmaApplicationSection(_ _0: UInt64, _ _1: UInt64, _ _2: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaApplicationSection") }
	func writePalmaApplicationSection(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<NnHid_PalmaApplicationSectionAccessBuffer>, _ _3: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaApplicationSection") }
	func readPalmaUniqueCode(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaUniqueCode") }
	func setPalmaUniqueCodeInvalid(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaUniqueCodeInvalid") }
	func writePalmaActivityEntry(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaActivityEntry") }
	func writePalmaRgbLedPatternEntry(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaRgbLedPatternEntry") }
	func writePalmaWaveEntry(_ _0: UInt64, _ _1: UInt64, _ _2: KObject, _ _3: UInt64, _ _4: UInt64, _ _5: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaWaveEntry") }
	func setPalmaDataBaseIdentificationVersion(_ _0: UInt32, _ _1: NnHid_PalmaConnectionHandle, _ _2: Int32) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaDataBaseIdentificationVersion") }
	func getPalmaDataBaseIdentificationVersion(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaDataBaseIdentificationVersion") }
	func suspendPalmaFeature(_ _0: NnHid_PalmaConnectionHandle, _ _1: NnHid_PalmaFeature) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SuspendPalmaFeature") }
	func getPalmaOperationResult(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaOperationResult") }
	func readPalmaPlayLog(_ _0: NnHid_PalmaConnectionHandle, _ _1: UInt16) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaPlayLog") }
	func resetPalmaPlayLog(_ _0: NnHid_PalmaConnectionHandle, _ _1: UInt16) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetPalmaPlayLog") }
	func setIsPalmaAllConnectable(_ _0: NnApplet_AppletResourceUserId, _ _1: Bool, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetIsPalmaAllConnectable") }
	func setIsPalmaPairedConnectable(_ _0: NnApplet_AppletResourceUserId, _ _1: Bool, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetIsPalmaPairedConnectable") }
	func pairPalma(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#PairPalma") }
	func setPalmaBoostMode(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaBoostMode") }
	func setNpadCommunicationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadCommunicationMode") }
	func getNpadCommunicationMode() throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadCommunicationMode") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createAppletResource(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try activateDebugPad(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 11:
			try activateTouchScreen(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 21:
			try activateMouse(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 31:
			try activateKeyboard(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 32:
			try unknown32(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try acquireXpadIdEventHandle(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 41:
			try releaseXpadIdEventHandle(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 51:
			try activateXpad(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 55:
			let ret = try getXpadIds(im.getBuffer(0xa, 0) as Buffer<NnHid_BasicXpadId>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 56:
			try activateJoyXpad(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 58:
			let ret = try getJoyXpadLifoHandle(im.getData(8) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 59:
			let ret = try getJoyXpadIds(im.getBuffer(0xa, 0) as Buffer<NnHid_JoyXpadId>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 60:
			try activateSixAxisSensor(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 61:
			try deactivateSixAxisSensor(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 62:
			let ret = try getSixAxisSensorLifoHandle(im.getData(8) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 63:
			try activateJoySixAxisSensor(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 64:
			try deactivateJoySixAxisSensor(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 65:
			let ret = try getJoySixAxisSensorLifoHandle(im.getData(8) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 66:
			try startSixAxisSensor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 67:
			try stopSixAxisSensor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 68:
			let ret = try isSixAxisSensorFusionEnabled(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 69:
			try enableSixAxisSensorFusion(im.getData(8) as Bool, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 70:
			try setSixAxisSensorFusionParameters(im.getData(8) as UInt32, im.getData(12) as Float32, im.getData(16) as Float32, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 71:
			let (_0, _1) = try getSixAxisSensorFusionParameters(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 72:
			try resetSixAxisSensorFusionParameters(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 73:
			try setAccelerometerParameters(im.getData(8) as UInt32, im.getData(12) as Float32, im.getData(16) as Float32, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 74:
			let (_0, _1) = try getAccelerometerParameters(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 75:
			try resetAccelerometerParameters(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 76:
			try setAccelerometerPlayMode(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 77:
			let ret = try getAccelerometerPlayMode(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 78:
			try resetAccelerometerPlayMode(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 79:
			try setGyroscopeZeroDriftMode(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 80:
			let ret = try getGyroscopeZeroDriftMode(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 81:
			try resetGyroscopeZeroDriftMode(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 82:
			let ret = try isSixAxisSensorAtRest(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 83:
			let ret = try unknown83(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 91:
			try activateGesture(im.getData(8) as Int32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 100:
			try setSupportedNpadStyleSet(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try getSupportedNpadStyleSet(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 102:
			try setSupportedNpadIdType(im.getData(8) as UInt64, im.pid, im.getBuffer(0x9, 0) as Buffer<UInt32>)
			om.initialize(0, 0, 0)
		
		case 103:
			try activateNpad(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 104:
			try deactivateNpad(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 106:
			let ret = try acquireNpadStyleSetUpdateEventHandle(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 107:
			try disconnectNpad(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 108:
			try activateNpadWithRevision(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 120:
			try setNpadJoyHoldType(im.getData(8) as UInt64, im.getData(16) as Int64, im.pid)
			om.initialize(0, 0, 0)
		
		case 121:
			let ret = try getNpadJoyHoldType(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 122:
			try setNpadJoyAssignmentModeSingleByDefault(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 123:
			try setNpadJoyAssignmentModeSingle(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as Int64, im.pid)
			om.initialize(0, 0, 0)
		
		case 124:
			try setNpadJoyAssignmentModeDual(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 125:
			try mergeSingleJoyAsDualJoy(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 126:
			try startLrAssignmentMode(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 127:
			try stopLrAssignmentMode(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 128:
			try setNpadHandheldActivationMode(im.getData(8) as UInt64, im.getData(16) as Int64, im.pid)
			om.initialize(0, 0, 0)
		
		case 129:
			let ret = try getNpadHandheldActivationMode(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 130:
			try swapNpadAssignment(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 131:
			let ret = try isUnintendedHomeButtonInputProtectionEnabled(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 132:
			try enableUnintendedHomeButtonInputProtection(im.getData(8) as Bool, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 133:
			let (_0, _1) = try setNpadJoyAssignmentModeSingleWithDestination(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, UInt32(_0 ? 1 : 0))
			om.setData(12, _1)
		
		case 200:
			let ret = try getVibrationDeviceInfo(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			if ret.count != 0x8 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 201:
			try sendVibrationValue(im.getData(8) as UInt32, nil, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 202:
			let ret = try getActualVibrationValue(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 203:
			let ret = try createActiveVibrationDeviceList()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 204:
			try permitVibration(im.getData(8) as Bool)
			om.initialize(0, 0, 0)
		
		case 205:
			let ret = try isVibrationPermitted()
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 206:
			try sendVibrationValues(im.getData(8) as UInt64, im.getBuffer(0x9, 0) as Buffer<NnHid_VibrationDeviceHandle>, im.getBuffer(0x9, 1) as Buffer<NnHid_VibrationValue>)
			om.initialize(0, 0, 0)
		
		case 207:
			try sendVibrationGcErmCommand(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 208:
			let ret = try getActualVibrationGcErmCommand(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 209:
			try beginPermitVibrationSession(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 210:
			try endPermitVibrationSession()
			om.initialize(0, 0, 0)
		
		case 300:
			try activateConsoleSixAxisSensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 301:
			try startConsoleSixAxisSensor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 302:
			try stopConsoleSixAxisSensor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 303:
			try activateSevenSixAxisSensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 304:
			try startSevenSixAxisSensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 305:
			try stopSevenSixAxisSensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 306:
			try initializeSevenSixAxisSensor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt32, im.getData(32) as UInt64, im.getData(40) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 307:
			try finalizeSevenSixAxisSensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 308:
			try setSevenSixAxisSensorFusionStrength(im.getData(8) as Float32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 309:
			let ret = try getSevenSixAxisSensorFusionStrength(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 310:
			try unknown310(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 400:
			let ret = try isUsbFullKeyControllerEnabled()
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 401:
			try enableUsbFullKeyController(im.getData(8) as Bool)
			om.initialize(0, 0, 0)
		
		case 402:
			let ret = try isUsbFullKeyControllerConnected(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 403:
			let ret = try hasBattery(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, UInt32(ret ? 1 : 0))
		
		case 404:
			let (_0, _1) = try hasLeftRightBattery(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, UInt32(_0 ? 1 : 0))
			om.setData(12, UInt32(_1 ? 1 : 0))
		
		case 405:
			let ret = try getNpadInterfaceType(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 406:
			let (_0, _1) = try getNpadLeftRightInterfaceType(im.getData(8) as UInt32)
			om.initialize(0, 0, 2)
			om.setData(8, _0)
			om.setData(9, _1)
		
		case 500:
			let ret = try getPalmaConnectionHandle(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 501:
			try initializePalma(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 502:
			let ret = try acquirePalmaOperationCompleteEvent(im.getData(8) as UInt64)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 503:
			let ret = try getPalmaOperationInfo(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 504:
			try playPalmaActivity(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 505:
			try setPalmaFrModeType(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 506:
			try readPalmaStep(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 507:
			try enablePalmaStep(im.getData(8) as Bool, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 508:
			try resetPalmaStep(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 509:
			try readPalmaApplicationSection(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 510:
			try writePalmaApplicationSection(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x19, 0) as Buffer<NnHid_PalmaApplicationSectionAccessBuffer>, im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 511:
			try readPalmaUniqueCode(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 512:
			try setPalmaUniqueCodeInvalid(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 513:
			try writePalmaActivityEntry(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64, im.getData(40) as UInt64)
			om.initialize(0, 0, 0)
		
		case 514:
			try writePalmaRgbLedPatternEntry(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 515:
			try writePalmaWaveEntry(im.getData(8) as UInt64, im.getData(16) as UInt64, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getData(24) as UInt64, im.getData(32) as UInt64, im.getData(40) as UInt64)
			om.initialize(0, 0, 0)
		
		case 516:
			try setPalmaDataBaseIdentificationVersion(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as Int32)
			om.initialize(0, 0, 0)
		
		case 517:
			try getPalmaDataBaseIdentificationVersion(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 518:
			try suspendPalmaFeature(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 519:
			try getPalmaOperationResult(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 520:
			try readPalmaPlayLog(im.getData(8) as UInt64, im.getData(16) as UInt16)
			om.initialize(0, 0, 0)
		
		case 521:
			try resetPalmaPlayLog(im.getData(8) as UInt64, im.getData(16) as UInt16)
			om.initialize(0, 0, 0)
		
		case 522:
			try setIsPalmaAllConnectable(im.getData(8) as UInt64, im.getData(16) as Bool, im.pid)
			om.initialize(0, 0, 0)
		
		case 523:
			try setIsPalmaPairedConnectable(im.getData(8) as UInt64, im.getData(16) as Bool, im.pid)
			om.initialize(0, 0, 0)
		
		case 524:
			try pairPalma(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 525:
			try setPalmaBoostMode(im.getData(8) as Bool)
			om.initialize(0, 0, 0)
		
		case 1000:
			try setNpadCommunicationMode(im.getData(8) as UInt64, im.getData(16) as Int64, im.pid)
			om.initialize(0, 0, 0)
		
		case 1001:
			let ret = try getNpadCommunicationMode()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::hid::IHidServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHid_IHidServer_Impl: NnHid_IHidServer {
	override func createAppletResource(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> NnHid_IAppletResource { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#CreateAppletResource") }
	override func activateDebugPad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateDebugPad") }
	override func activateTouchScreen(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateTouchScreen") }
	override func activateMouse(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateMouse") }
	override func activateKeyboard(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateKeyboard") }
	override func unknown32(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#Unknown32") }
	override func acquireXpadIdEventHandle(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#AcquireXpadIdEventHandle") }
	override func releaseXpadIdEventHandle(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReleaseXpadIdEventHandle") }
	override func activateXpad(_ _0: NnHid_BasicXpadId, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateXpad") }
	override func getXpadIds(_ _0: Buffer<NnHid_BasicXpadId>) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetXpadIds") }
	override func activateJoyXpad(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateJoyXpad") }
	override func getJoyXpadLifoHandle(_ _0: NnHid_JoyXpadId) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetJoyXpadLifoHandle") }
	override func getJoyXpadIds(_ _0: Buffer<NnHid_JoyXpadId>) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetJoyXpadIds") }
	override func activateSixAxisSensor(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateSixAxisSensor") }
	override func deactivateSixAxisSensor(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DeactivateSixAxisSensor") }
	override func getSixAxisSensorLifoHandle(_ _0: NnHid_BasicXpadId) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSixAxisSensorLifoHandle") }
	override func activateJoySixAxisSensor(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateJoySixAxisSensor") }
	override func deactivateJoySixAxisSensor(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DeactivateJoySixAxisSensor") }
	override func getJoySixAxisSensorLifoHandle(_ _0: NnHid_JoyXpadId) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetJoySixAxisSensorLifoHandle") }
	override func startSixAxisSensor(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartSixAxisSensor") }
	override func stopSixAxisSensor(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopSixAxisSensor") }
	override func isSixAxisSensorFusionEnabled(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsSixAxisSensorFusionEnabled") }
	override func enableSixAxisSensorFusion(_ _0: Bool, _ _1: NnHid_SixAxisSensorHandle, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnableSixAxisSensorFusion") }
	override func setSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSixAxisSensorFusionParameters") }
	override func getSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSixAxisSensorFusionParameters") }
	override func resetSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetSixAxisSensorFusionParameters") }
	override func setAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetAccelerometerParameters") }
	override func getAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetAccelerometerParameters") }
	override func resetAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetAccelerometerParameters") }
	override func setAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetAccelerometerPlayMode") }
	override func getAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetAccelerometerPlayMode") }
	override func resetAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetAccelerometerPlayMode") }
	override func setGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetGyroscopeZeroDriftMode") }
	override func getGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetGyroscopeZeroDriftMode") }
	override func resetGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetGyroscopeZeroDriftMode") }
	override func isSixAxisSensorAtRest(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsSixAxisSensorAtRest") }
	override func unknown83(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#Unknown83") }
	override func activateGesture(_ _0: Int32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateGesture") }
	override func setSupportedNpadStyleSet(_ _0: NnHid_NpadStyleTag, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSupportedNpadStyleSet") }
	override func getSupportedNpadStyleSet(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> NnHid_NpadStyleTag { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSupportedNpadStyleSet") }
	override func setSupportedNpadIdType(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid, _ _2: Buffer<UInt32>) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSupportedNpadIdType") }
	override func activateNpad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateNpad") }
	override func deactivateNpad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DeactivateNpad") }
	override func acquireNpadStyleSetUpdateEventHandle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: UInt64, _ _3: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#AcquireNpadStyleSetUpdateEventHandle") }
	override func disconnectNpad(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#DisconnectNpad") }
	override func activateNpadWithRevision(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateNpadWithRevision") }
	override func setNpadJoyHoldType(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyHoldType") }
	override func getNpadJoyHoldType(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadJoyHoldType") }
	override func setNpadJoyAssignmentModeSingleByDefault(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeSingleByDefault") }
	override func setNpadJoyAssignmentModeSingle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Int64, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeSingle") }
	override func setNpadJoyAssignmentModeDual(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeDual") }
	override func mergeSingleJoyAsDualJoy(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#MergeSingleJoyAsDualJoy") }
	override func startLrAssignmentMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartLrAssignmentMode") }
	override func stopLrAssignmentMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopLrAssignmentMode") }
	override func setNpadHandheldActivationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadHandheldActivationMode") }
	override func getNpadHandheldActivationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadHandheldActivationMode") }
	override func swapNpadAssignment(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SwapNpadAssignment") }
	override func isUnintendedHomeButtonInputProtectionEnabled(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsUnintendedHomeButtonInputProtectionEnabled") }
	override func enableUnintendedHomeButtonInputProtection(_ _0: Bool, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnableUnintendedHomeButtonInputProtection") }
	override func setNpadJoyAssignmentModeSingleWithDestination(_ _0: UInt32, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws -> (Bool, UInt32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadJoyAssignmentModeSingleWithDestination") }
	override func getVibrationDeviceInfo(_ _0: NnHid_VibrationDeviceHandle) throws -> NnHid_VibrationDeviceInfoForIpc { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetVibrationDeviceInfo") }
	override func sendVibrationValue(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnHid_VibrationValue, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SendVibrationValue") }
	override func getActualVibrationValue(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_VibrationValue { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetActualVibrationValue") }
	override func createActiveVibrationDeviceList() throws -> NnHid_IActiveVibrationDeviceList { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#CreateActiveVibrationDeviceList") }
	override func permitVibration(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#PermitVibration") }
	override func isVibrationPermitted() throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsVibrationPermitted") }
	override func sendVibrationValues(_ _0: NnApplet_AppletResourceUserId, _ _1: Buffer<NnHid_VibrationDeviceHandle>, _ _2: Buffer<NnHid_VibrationValue>) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SendVibrationValues") }
	override func sendVibrationGcErmCommand(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnHid_VibrationGcErmCommand, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SendVibrationGcErmCommand") }
	override func getActualVibrationGcErmCommand(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_VibrationGcErmCommand { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetActualVibrationGcErmCommand") }
	override func beginPermitVibrationSession(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#BeginPermitVibrationSession") }
	override func endPermitVibrationSession() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EndPermitVibrationSession") }
	override func activateConsoleSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateConsoleSixAxisSensor") }
	override func startConsoleSixAxisSensor(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartConsoleSixAxisSensor") }
	override func stopConsoleSixAxisSensor(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopConsoleSixAxisSensor") }
	override func activateSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ActivateSevenSixAxisSensor") }
	override func startSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StartSevenSixAxisSensor") }
	override func stopSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#StopSevenSixAxisSensor") }
	override func initializeSevenSixAxisSensor(_ _0: UInt32, _ _1: UInt64, _ _2: UInt32, _ _3: UInt64, _ _4: NnApplet_AppletResourceUserId, _ _5: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#InitializeSevenSixAxisSensor") }
	override func finalizeSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#FinalizeSevenSixAxisSensor") }
	override func setSevenSixAxisSensorFusionStrength(_ _0: Float32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetSevenSixAxisSensorFusionStrength") }
	override func getSevenSixAxisSensorFusionStrength(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Float32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetSevenSixAxisSensorFusionStrength") }
	override func unknown310(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#Unknown310") }
	override func isUsbFullKeyControllerEnabled() throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsUsbFullKeyControllerEnabled") }
	override func enableUsbFullKeyController(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnableUsbFullKeyController") }
	override func isUsbFullKeyControllerConnected(_ _0: UInt32) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#IsUsbFullKeyControllerConnected") }
	override func hasBattery(_ _0: UInt32) throws -> Bool { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#HasBattery") }
	override func hasLeftRightBattery(_ _0: UInt32) throws -> (Bool, Bool) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#HasLeftRightBattery") }
	override func getNpadInterfaceType(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadInterfaceType") }
	override func getNpadLeftRightInterfaceType(_ _0: UInt32) throws -> (UInt8, UInt8) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadLeftRightInterfaceType") }
	override func getPalmaConnectionHandle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_PalmaConnectionHandle { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaConnectionHandle") }
	override func initializePalma(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#InitializePalma") }
	override func acquirePalmaOperationCompleteEvent(_ _0: NnHid_PalmaConnectionHandle) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#AcquirePalmaOperationCompleteEvent") }
	override func getPalmaOperationInfo(_ _0: NnHid_PalmaConnectionHandle, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaOperationInfo") }
	override func playPalmaActivity(_ _0: UInt64, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#PlayPalmaActivity") }
	override func setPalmaFrModeType(_ _0: UInt64, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaFrModeType") }
	override func readPalmaStep(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaStep") }
	override func enablePalmaStep(_ _0: Bool, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#EnablePalmaStep") }
	override func resetPalmaStep(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetPalmaStep") }
	override func readPalmaApplicationSection(_ _0: UInt64, _ _1: UInt64, _ _2: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaApplicationSection") }
	override func writePalmaApplicationSection(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<NnHid_PalmaApplicationSectionAccessBuffer>, _ _3: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaApplicationSection") }
	override func readPalmaUniqueCode(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaUniqueCode") }
	override func setPalmaUniqueCodeInvalid(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaUniqueCodeInvalid") }
	override func writePalmaActivityEntry(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaActivityEntry") }
	override func writePalmaRgbLedPatternEntry(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaRgbLedPatternEntry") }
	override func writePalmaWaveEntry(_ _0: UInt64, _ _1: UInt64, _ _2: KObject, _ _3: UInt64, _ _4: UInt64, _ _5: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#WritePalmaWaveEntry") }
	override func setPalmaDataBaseIdentificationVersion(_ _0: UInt32, _ _1: NnHid_PalmaConnectionHandle, _ _2: Int32) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaDataBaseIdentificationVersion") }
	override func getPalmaDataBaseIdentificationVersion(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaDataBaseIdentificationVersion") }
	override func suspendPalmaFeature(_ _0: NnHid_PalmaConnectionHandle, _ _1: NnHid_PalmaFeature) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SuspendPalmaFeature") }
	override func getPalmaOperationResult(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetPalmaOperationResult") }
	override func readPalmaPlayLog(_ _0: NnHid_PalmaConnectionHandle, _ _1: UInt16) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ReadPalmaPlayLog") }
	override func resetPalmaPlayLog(_ _0: NnHid_PalmaConnectionHandle, _ _1: UInt16) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#ResetPalmaPlayLog") }
	override func setIsPalmaAllConnectable(_ _0: NnApplet_AppletResourceUserId, _ _1: Bool, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetIsPalmaAllConnectable") }
	override func setIsPalmaPairedConnectable(_ _0: NnApplet_AppletResourceUserId, _ _1: Bool, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetIsPalmaPairedConnectable") }
	override func pairPalma(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#PairPalma") }
	override func setPalmaBoostMode(_ _0: Bool) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetPalmaBoostMode") }
	override func setNpadCommunicationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#SetNpadCommunicationMode") }
	override func getNpadCommunicationMode() throws -> Int64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidServer#GetNpadCommunicationMode") }
}
*/

class NnHid_IHidSystemServer: IpcService {
	func sendKeyboardLockKeyEvent(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SendKeyboardLockKeyEvent") }
	func acquireHomeButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireHomeButtonEventHandle") }
	func activateHomeButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateHomeButton") }
	func acquireSleepButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireSleepButtonEventHandle") }
	func activateSleepButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateSleepButton") }
	func acquireCaptureButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireCaptureButtonEventHandle") }
	func activateCaptureButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateCaptureButton") }
	func acquireNfcDeviceUpdateEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireNfcDeviceUpdateEventHandle") }
	func getNpadsWithNfc(_ _0: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetNpadsWithNfc") }
	func acquireNfcActivateEventHandle(_ _0: UInt32) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireNfcActivateEventHandle") }
	func activateNfc(_ _0: UInt8, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateNfc") }
	func getXcdHandleForNpadWithNfc(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetXcdHandleForNpadWithNfc") }
	func isNfcActivated(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsNfcActivated") }
	func acquireIrSensorEventHandle(_ _0: UInt32) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireIrSensorEventHandle") }
	func activateIrSensor(_ _0: UInt8, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateIrSensor") }
	func activateNpadSystem(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateNpadSystem") }
	func applyNpadSystemCommonPolicy(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ApplyNpadSystemCommonPolicy") }
	func enableAssigningSingleOnSlSrPress(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableAssigningSingleOnSlSrPress") }
	func disableAssigningSingleOnSlSrPress(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DisableAssigningSingleOnSlSrPress") }
	func getLastActiveNpad() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetLastActiveNpad") }
	func getNpadSystemExtStyle(_ _0: UInt32) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetNpadSystemExtStyle") }
	func applyNpadSystemCommonPolicyFull(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ApplyNpadSystemCommonPolicyFull") }
	func getNpadFullKeyGripColor(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetNpadFullKeyGripColor") }
	func setNpadPlayerLedBlinkingDevice(_ _0: UInt32, _ _1: Any?, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetNpadPlayerLedBlinkingDevice") }
	func getUniquePadsFromNpad(_ _0: UInt32, _ _1: Buffer<NnHidSystem_UniquePadId>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadsFromNpad") }
	func getIrSensorState(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetIrSensorState") }
	func getXcdHandleForNpadWithIrSensor(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetXcdHandleForNpadWithIrSensor") }
	func setAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetAppletResourceUserId") }
	func registerAppletResourceUserId(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#RegisterAppletResourceUserId") }
	func unregisterAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#UnregisterAppletResourceUserId") }
	func enableAppletToGetInput(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableAppletToGetInput") }
	func setAruidValidForVibration(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetAruidValidForVibration") }
	func enableAppletToGetSixAxisSensor(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableAppletToGetSixAxisSensor") }
	func setVibrationMasterVolume(_ _0: Float32) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetVibrationMasterVolume") }
	func getVibrationMasterVolume() throws -> Float32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetVibrationMasterVolume") }
	func beginPermitVibrationSession(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#BeginPermitVibrationSession") }
	func endPermitVibrationSession() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EndPermitVibrationSession") }
	func enableHandheldHids() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableHandheldHids") }
	func disableHandheldHids() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DisableHandheldHids") }
	func acquirePlayReportControllerUsageUpdateEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquirePlayReportControllerUsageUpdateEvent") }
	func getPlayReportControllerUsages(_ _0: Buffer<NnHidSystem_PlayReportControllerUsage>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetPlayReportControllerUsages") }
	func acquirePlayReportRegisteredDeviceUpdateEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquirePlayReportRegisteredDeviceUpdateEvent") }
	func getRegisteredDevicesOld(_ _0: Buffer<NnHidSystem_RegisteredDevice>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetRegisteredDevicesOld") }
	func acquireConnectionTriggerTimeoutEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireConnectionTriggerTimeoutEvent") }
	func sendConnectionTrigger(_ _0: NnBluetooth_Address) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SendConnectionTrigger") }
	func acquireDeviceRegisteredEventForControllerSupport() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireDeviceRegisteredEventForControllerSupport") }
	func getAllowedBluetoothLinksCount() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAllowedBluetoothLinksCount") }
	func getRegisteredDevices(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetRegisteredDevices") }
	func activateUniquePad(_ _0: NnApplet_AppletResourceUserId, _ _1: NnHidSystem_UniquePadId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateUniquePad") }
	func acquireUniquePadConnectionEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireUniquePadConnectionEventHandle") }
	func getUniquePadIds(_ _0: Buffer<NnHidSystem_UniquePadId>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadIds") }
	func acquireJoyDetachOnBluetoothOffEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireJoyDetachOnBluetoothOffEventHandle") }
	func listSixAxisSensorHandles(_ _0: NnHidSystem_UniquePadId, _ _1: Buffer<NnHidSystem_UniqueSixAxisSensorHandle>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ListSixAxisSensorHandles") }
	func isSixAxisSensorUserCalibrationSupported(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsSixAxisSensorUserCalibrationSupported") }
	func resetSixAxisSensorCalibrationValues(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ResetSixAxisSensorCalibrationValues") }
	func startSixAxisSensorUserCalibration(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartSixAxisSensorUserCalibration") }
	func cancelSixAxisSensorUserCalibration(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CancelSixAxisSensorUserCalibration") }
	func getUniquePadBluetoothAddress(_ _0: NnHidSystem_UniquePadId) throws -> NnBluetooth_Address { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadBluetoothAddress") }
	func disconnectUniquePad(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DisconnectUniquePad") }
	func getUniquePadType(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadType") }
	func getUniquePadInterface(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadInterface") }
	func getUniquePadSerialNumber(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadSerialNumber") }
	func getUniquePadControllerNumber(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadControllerNumber") }
	func getSixAxisSensorUserCalibrationStage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetSixAxisSensorUserCalibrationStage") }
	func startAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartAnalogStickManualCalibration") }
	func retryCurrentAnalogStickManualCalibrationStage(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#RetryCurrentAnalogStickManualCalibrationStage") }
	func cancelAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CancelAnalogStickManualCalibration") }
	func resetAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ResetAnalogStickManualCalibration") }
	func getAnalogStickState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAnalogStickState") }
	func getAnalogStickManualCalibrationStage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAnalogStickManualCalibrationStage") }
	func isAnalogStickButtonPressed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsAnalogStickButtonPressed") }
	func isAnalogStickInReleasePosition(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsAnalogStickInReleasePosition") }
	func isAnalogStickInCircumference(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsAnalogStickInCircumference") }
	func isUsbFullKeyControllerEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsUsbFullKeyControllerEnabled") }
	func enableUsbFullKeyController(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableUsbFullKeyController") }
	func isUsbConnected(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsUsbConnected") }
	func activateInputDetector(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateInputDetector") }
	func notifyInputDetector(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#NotifyInputDetector") }
	func initializeFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#InitializeFirmwareUpdate") }
	func getFirmwareVersion(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetFirmwareVersion") }
	func getAvailableFirmwareVersion(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAvailableFirmwareVersion") }
	func isFirmwareUpdateAvailable(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsFirmwareUpdateAvailable") }
	func checkFirmwareUpdateRequired(_ _0: NnHidSystem_UniquePadId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CheckFirmwareUpdateRequired") }
	func startFirmwareUpdate(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareUpdateDeviceHandle { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartFirmwareUpdate") }
	func abortFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AbortFirmwareUpdate") }
	func getFirmwareUpdateState(_ _0: NnHidSystem_FirmwareUpdateDeviceHandle) throws -> NnHidSystem_FirmwareUpdateState { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetFirmwareUpdateState") }
	func activateAudioControl() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateAudioControl") }
	func acquireAudioControlEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireAudioControlEventHandle") }
	func getAudioControlStates(_ _0: Buffer<NnHidSystem_AudioControlState>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAudioControlStates") }
	func deactivateAudioControl() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DeactivateAudioControl") }
	func isSixAxisSensorAccurateUserCalibrationSupported(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsSixAxisSensorAccurateUserCalibrationSupported") }
	func startSixAxisSensorAccurateUserCalibration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartSixAxisSensorAccurateUserCalibration") }
	func cancelSixAxisSensorAccurateUserCalibration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CancelSixAxisSensorAccurateUserCalibration") }
	func getSixAxisSensorAccurateUserCalibrationState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetSixAxisSensorAccurateUserCalibrationState") }
	func getHidbusSystemServiceObject(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetHidbusSystemServiceObject") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 31:
			try sendKeyboardLockKeyEvent(nil)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try acquireHomeButtonEventHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 111:
			try activateHomeButton(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 121:
			let ret = try acquireSleepButtonEventHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 131:
			try activateSleepButton(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 141:
			let ret = try acquireCaptureButtonEventHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 151:
			try activateCaptureButton(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 210:
			let ret = try acquireNfcDeviceUpdateEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 211:
			let ret = try getNpadsWithNfc(im.getBuffer(0xa, 0) as Buffer<UInt32>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 212:
			let ret = try acquireNfcActivateEventHandle(im.getData(8) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 213:
			try activateNfc(im.getData(8) as UInt8, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 214:
			let ret = try getXcdHandleForNpadWithNfc(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 215:
			let ret = try isNfcActivated(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 230:
			let ret = try acquireIrSensorEventHandle(im.getData(8) as UInt32)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 231:
			try activateIrSensor(im.getData(8) as UInt8, im.getData(12) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 301:
			try activateNpadSystem(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 303:
			try applyNpadSystemCommonPolicy(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 304:
			try enableAssigningSingleOnSlSrPress(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 305:
			try disableAssigningSingleOnSlSrPress(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 306:
			let ret = try getLastActiveNpad()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 307:
			let (_0, _1) = try getNpadSystemExtStyle(im.getData(8) as UInt32)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 308:
			let ret = try applyNpadSystemCommonPolicyFull(nil)
			om.initialize(0, 0, 0)
		
		case 309:
			let ret = try getNpadFullKeyGripColor(nil)
			om.initialize(0, 0, 0)
		
		case 311:
			try setNpadPlayerLedBlinkingDevice(im.getData(8) as UInt32, nil, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 321:
			let ret = try getUniquePadsFromNpad(im.getData(8) as UInt32, im.getBuffer(0xa, 0) as Buffer<NnHidSystem_UniquePadId>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 322:
			let ret = try getIrSensorState(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 323:
			let ret = try getXcdHandleForNpadWithIrSensor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 500:
			try setAppletResourceUserId(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 501:
			try registerAppletResourceUserId(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 502:
			try unregisterAppletResourceUserId(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 503:
			try enableAppletToGetInput(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 504:
			try setAruidValidForVibration(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 505:
			try enableAppletToGetSixAxisSensor(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 510:
			try setVibrationMasterVolume(im.getData(8) as Float32)
			om.initialize(0, 0, 0)
		
		case 511:
			let ret = try getVibrationMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 512:
			try beginPermitVibrationSession(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 513:
			try endPermitVibrationSession()
			om.initialize(0, 0, 0)
		
		case 520:
			try enableHandheldHids()
			om.initialize(0, 0, 0)
		
		case 521:
			try disableHandheldHids()
			om.initialize(0, 0, 0)
		
		case 540:
			let ret = try acquirePlayReportControllerUsageUpdateEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 541:
			let ret = try getPlayReportControllerUsages(im.getBuffer(0xa, 0) as Buffer<NnHidSystem_PlayReportControllerUsage>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 542:
			let ret = try acquirePlayReportRegisteredDeviceUpdateEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 543:
			let ret = try getRegisteredDevicesOld(im.getBuffer(0xa, 0) as Buffer<NnHidSystem_RegisteredDevice>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 544:
			let ret = try acquireConnectionTriggerTimeoutEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 545:
			try sendConnectionTrigger(im.getBytes(8, 0x6))
			om.initialize(0, 0, 0)
		
		case 546:
			let ret = try acquireDeviceRegisteredEventForControllerSupport()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 547:
			let ret = try getAllowedBluetoothLinksCount()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 548:
			let ret = try getRegisteredDevices(nil)
			om.initialize(0, 0, 0)
		
		case 700:
			try activateUniquePad(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 702:
			let ret = try acquireUniquePadConnectionEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 703:
			let ret = try getUniquePadIds(im.getBuffer(0xa, 0) as Buffer<NnHidSystem_UniquePadId>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 751:
			let ret = try acquireJoyDetachOnBluetoothOffEventHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 800:
			let ret = try listSixAxisSensorHandles(im.getData(8) as UInt64, im.getBuffer(0xa, 0) as Buffer<NnHidSystem_UniqueSixAxisSensorHandle>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 801:
			let ret = try isSixAxisSensorUserCalibrationSupported(nil)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 802:
			try resetSixAxisSensorCalibrationValues(nil)
			om.initialize(0, 0, 0)
		
		case 803:
			try startSixAxisSensorUserCalibration(nil)
			om.initialize(0, 0, 0)
		
		case 804:
			try cancelSixAxisSensorUserCalibration(nil)
			om.initialize(0, 0, 0)
		
		case 805:
			let ret = try getUniquePadBluetoothAddress(im.getData(8) as UInt64)
			om.initialize(0, 0, 6)
			if ret.count != 0x6 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 806:
			try disconnectUniquePad(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 807:
			let ret = try getUniquePadType(nil)
			om.initialize(0, 0, 0)
		
		case 808:
			let ret = try getUniquePadInterface(nil)
			om.initialize(0, 0, 0)
		
		case 809:
			let ret = try getUniquePadSerialNumber(nil)
			om.initialize(0, 0, 0)
		
		case 810:
			let ret = try getUniquePadControllerNumber(nil)
			om.initialize(0, 0, 0)
		
		case 811:
			let ret = try getSixAxisSensorUserCalibrationStage(nil)
			om.initialize(0, 0, 0)
		
		case 821:
			try startAnalogStickManualCalibration(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 822:
			try retryCurrentAnalogStickManualCalibrationStage(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 823:
			try cancelAnalogStickManualCalibration(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 824:
			try resetAnalogStickManualCalibration(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 825:
			let ret = try getAnalogStickState(nil)
			om.initialize(0, 0, 0)
		
		case 826:
			let ret = try getAnalogStickManualCalibrationStage(nil)
			om.initialize(0, 0, 0)
		
		case 827:
			let ret = try isAnalogStickButtonPressed(nil)
			om.initialize(0, 0, 0)
		
		case 828:
			let ret = try isAnalogStickInReleasePosition(nil)
			om.initialize(0, 0, 0)
		
		case 829:
			let ret = try isAnalogStickInCircumference(nil)
			om.initialize(0, 0, 0)
		
		case 850:
			let ret = try isUsbFullKeyControllerEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 851:
			try enableUsbFullKeyController(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 852:
			let ret = try isUsbConnected(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 900:
			try activateInputDetector(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 901:
			try notifyInputDetector(nil)
			om.initialize(0, 0, 0)
		
		case 1000:
			try initializeFirmwareUpdate()
			om.initialize(0, 0, 0)
		
		case 1001:
			let ret = try getFirmwareVersion(im.getData(8) as UInt64)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1002:
			let ret = try getAvailableFirmwareVersion(im.getData(8) as UInt64)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1003:
			let ret = try isFirmwareUpdateAvailable(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1004:
			let ret = try checkFirmwareUpdateRequired(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1005:
			let ret = try startFirmwareUpdate(im.getData(8) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1006:
			try abortFirmwareUpdate()
			om.initialize(0, 0, 0)
		
		case 1007:
			let ret = try getFirmwareUpdateState(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			if ret.count != 0x4 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1008:
			try activateAudioControl()
			om.initialize(0, 0, 0)
		
		case 1009:
			let ret = try acquireAudioControlEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1010:
			let ret = try getAudioControlStates(im.getBuffer(0xa, 0) as Buffer<NnHidSystem_AudioControlState>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1011:
			try deactivateAudioControl()
			om.initialize(0, 0, 0)
		
		case 1050:
			let ret = try isSixAxisSensorAccurateUserCalibrationSupported(nil)
			om.initialize(0, 0, 0)
		
		case 1051:
			let ret = try startSixAxisSensorAccurateUserCalibration(nil)
			om.initialize(0, 0, 0)
		
		case 1052:
			let ret = try cancelSixAxisSensorAccurateUserCalibration(nil)
			om.initialize(0, 0, 0)
		
		case 1053:
			let ret = try getSixAxisSensorAccurateUserCalibrationState(nil)
			om.initialize(0, 0, 0)
		
		case 1100:
			let ret = try getHidbusSystemServiceObject(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::hid::IHidSystemServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHid_IHidSystemServer_Impl: NnHid_IHidSystemServer {
	override func sendKeyboardLockKeyEvent(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SendKeyboardLockKeyEvent") }
	override func acquireHomeButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireHomeButtonEventHandle") }
	override func activateHomeButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateHomeButton") }
	override func acquireSleepButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireSleepButtonEventHandle") }
	override func activateSleepButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateSleepButton") }
	override func acquireCaptureButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireCaptureButtonEventHandle") }
	override func activateCaptureButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateCaptureButton") }
	override func acquireNfcDeviceUpdateEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireNfcDeviceUpdateEventHandle") }
	override func getNpadsWithNfc(_ _0: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetNpadsWithNfc") }
	override func acquireNfcActivateEventHandle(_ _0: UInt32) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireNfcActivateEventHandle") }
	override func activateNfc(_ _0: UInt8, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateNfc") }
	override func getXcdHandleForNpadWithNfc(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetXcdHandleForNpadWithNfc") }
	override func isNfcActivated(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsNfcActivated") }
	override func acquireIrSensorEventHandle(_ _0: UInt32) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireIrSensorEventHandle") }
	override func activateIrSensor(_ _0: UInt8, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateIrSensor") }
	override func activateNpadSystem(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateNpadSystem") }
	override func applyNpadSystemCommonPolicy(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ApplyNpadSystemCommonPolicy") }
	override func enableAssigningSingleOnSlSrPress(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableAssigningSingleOnSlSrPress") }
	override func disableAssigningSingleOnSlSrPress(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DisableAssigningSingleOnSlSrPress") }
	override func getLastActiveNpad() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetLastActiveNpad") }
	override func getNpadSystemExtStyle(_ _0: UInt32) throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetNpadSystemExtStyle") }
	override func applyNpadSystemCommonPolicyFull(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ApplyNpadSystemCommonPolicyFull") }
	override func getNpadFullKeyGripColor(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetNpadFullKeyGripColor") }
	override func setNpadPlayerLedBlinkingDevice(_ _0: UInt32, _ _1: Any?, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetNpadPlayerLedBlinkingDevice") }
	override func getUniquePadsFromNpad(_ _0: UInt32, _ _1: Buffer<NnHidSystem_UniquePadId>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadsFromNpad") }
	override func getIrSensorState(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetIrSensorState") }
	override func getXcdHandleForNpadWithIrSensor(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetXcdHandleForNpadWithIrSensor") }
	override func setAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetAppletResourceUserId") }
	override func registerAppletResourceUserId(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#RegisterAppletResourceUserId") }
	override func unregisterAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#UnregisterAppletResourceUserId") }
	override func enableAppletToGetInput(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableAppletToGetInput") }
	override func setAruidValidForVibration(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetAruidValidForVibration") }
	override func enableAppletToGetSixAxisSensor(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableAppletToGetSixAxisSensor") }
	override func setVibrationMasterVolume(_ _0: Float32) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SetVibrationMasterVolume") }
	override func getVibrationMasterVolume() throws -> Float32 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetVibrationMasterVolume") }
	override func beginPermitVibrationSession(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#BeginPermitVibrationSession") }
	override func endPermitVibrationSession() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EndPermitVibrationSession") }
	override func enableHandheldHids() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableHandheldHids") }
	override func disableHandheldHids() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DisableHandheldHids") }
	override func acquirePlayReportControllerUsageUpdateEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquirePlayReportControllerUsageUpdateEvent") }
	override func getPlayReportControllerUsages(_ _0: Buffer<NnHidSystem_PlayReportControllerUsage>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetPlayReportControllerUsages") }
	override func acquirePlayReportRegisteredDeviceUpdateEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquirePlayReportRegisteredDeviceUpdateEvent") }
	override func getRegisteredDevicesOld(_ _0: Buffer<NnHidSystem_RegisteredDevice>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetRegisteredDevicesOld") }
	override func acquireConnectionTriggerTimeoutEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireConnectionTriggerTimeoutEvent") }
	override func sendConnectionTrigger(_ _0: NnBluetooth_Address) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#SendConnectionTrigger") }
	override func acquireDeviceRegisteredEventForControllerSupport() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireDeviceRegisteredEventForControllerSupport") }
	override func getAllowedBluetoothLinksCount() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAllowedBluetoothLinksCount") }
	override func getRegisteredDevices(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetRegisteredDevices") }
	override func activateUniquePad(_ _0: NnApplet_AppletResourceUserId, _ _1: NnHidSystem_UniquePadId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateUniquePad") }
	override func acquireUniquePadConnectionEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireUniquePadConnectionEventHandle") }
	override func getUniquePadIds(_ _0: Buffer<NnHidSystem_UniquePadId>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadIds") }
	override func acquireJoyDetachOnBluetoothOffEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireJoyDetachOnBluetoothOffEventHandle") }
	override func listSixAxisSensorHandles(_ _0: NnHidSystem_UniquePadId, _ _1: Buffer<NnHidSystem_UniqueSixAxisSensorHandle>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ListSixAxisSensorHandles") }
	override func isSixAxisSensorUserCalibrationSupported(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsSixAxisSensorUserCalibrationSupported") }
	override func resetSixAxisSensorCalibrationValues(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ResetSixAxisSensorCalibrationValues") }
	override func startSixAxisSensorUserCalibration(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartSixAxisSensorUserCalibration") }
	override func cancelSixAxisSensorUserCalibration(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CancelSixAxisSensorUserCalibration") }
	override func getUniquePadBluetoothAddress(_ _0: NnHidSystem_UniquePadId) throws -> NnBluetooth_Address { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadBluetoothAddress") }
	override func disconnectUniquePad(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DisconnectUniquePad") }
	override func getUniquePadType(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadType") }
	override func getUniquePadInterface(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadInterface") }
	override func getUniquePadSerialNumber(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadSerialNumber") }
	override func getUniquePadControllerNumber(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetUniquePadControllerNumber") }
	override func getSixAxisSensorUserCalibrationStage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetSixAxisSensorUserCalibrationStage") }
	override func startAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartAnalogStickManualCalibration") }
	override func retryCurrentAnalogStickManualCalibrationStage(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#RetryCurrentAnalogStickManualCalibrationStage") }
	override func cancelAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CancelAnalogStickManualCalibration") }
	override func resetAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ResetAnalogStickManualCalibration") }
	override func getAnalogStickState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAnalogStickState") }
	override func getAnalogStickManualCalibrationStage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAnalogStickManualCalibrationStage") }
	override func isAnalogStickButtonPressed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsAnalogStickButtonPressed") }
	override func isAnalogStickInReleasePosition(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsAnalogStickInReleasePosition") }
	override func isAnalogStickInCircumference(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsAnalogStickInCircumference") }
	override func isUsbFullKeyControllerEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsUsbFullKeyControllerEnabled") }
	override func enableUsbFullKeyController(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#EnableUsbFullKeyController") }
	override func isUsbConnected(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsUsbConnected") }
	override func activateInputDetector(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateInputDetector") }
	override func notifyInputDetector(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#NotifyInputDetector") }
	override func initializeFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#InitializeFirmwareUpdate") }
	override func getFirmwareVersion(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetFirmwareVersion") }
	override func getAvailableFirmwareVersion(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAvailableFirmwareVersion") }
	override func isFirmwareUpdateAvailable(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsFirmwareUpdateAvailable") }
	override func checkFirmwareUpdateRequired(_ _0: NnHidSystem_UniquePadId) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CheckFirmwareUpdateRequired") }
	override func startFirmwareUpdate(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareUpdateDeviceHandle { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartFirmwareUpdate") }
	override func abortFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AbortFirmwareUpdate") }
	override func getFirmwareUpdateState(_ _0: NnHidSystem_FirmwareUpdateDeviceHandle) throws -> NnHidSystem_FirmwareUpdateState { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetFirmwareUpdateState") }
	override func activateAudioControl() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#ActivateAudioControl") }
	override func acquireAudioControlEventHandle() throws -> KObject { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#AcquireAudioControlEventHandle") }
	override func getAudioControlStates(_ _0: Buffer<NnHidSystem_AudioControlState>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetAudioControlStates") }
	override func deactivateAudioControl() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#DeactivateAudioControl") }
	override func isSixAxisSensorAccurateUserCalibrationSupported(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#IsSixAxisSensorAccurateUserCalibrationSupported") }
	override func startSixAxisSensorAccurateUserCalibration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#StartSixAxisSensorAccurateUserCalibration") }
	override func cancelSixAxisSensorAccurateUserCalibration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#CancelSixAxisSensorAccurateUserCalibration") }
	override func getSixAxisSensorAccurateUserCalibrationState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetSixAxisSensorAccurateUserCalibrationState") }
	override func getHidbusSystemServiceObject(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidSystemServer#GetHidbusSystemServiceObject") }
}
*/

class NnHid_IHidDebugServer: IpcService {
	func deactivateDebugPad() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateDebugPad") }
	func setDebugPadAutoPilotState(_ _0: NnHidDebug_DebugPadAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetDebugPadAutoPilotState") }
	func unsetDebugPadAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetDebugPadAutoPilotState") }
	func deactivateTouchScreen() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateTouchScreen") }
	func setTouchScreenAutoPilotState(_ _0: Buffer<NnHid_TouchState>) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetTouchScreenAutoPilotState") }
	func unsetTouchScreenAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetTouchScreenAutoPilotState") }
	func deactivateMouse() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateMouse") }
	func setMouseAutoPilotState(_ _0: NnHidDebug_MouseAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetMouseAutoPilotState") }
	func unsetMouseAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetMouseAutoPilotState") }
	func deactivateKeyboard() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateKeyboard") }
	func setKeyboardAutoPilotState(_ _0: NnHidDebug_KeyboardAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetKeyboardAutoPilotState") }
	func unsetKeyboardAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetKeyboardAutoPilotState") }
	func deactivateXpad(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateXpad") }
	func setXpadAutoPilotState(_ _0: NnHid_BasicXpadId, _ _1: NnHidDebug_BasicXpadAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetXpadAutoPilotState") }
	func unsetXpadAutoPilotState(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetXpadAutoPilotState") }
	func deactivateJoyXpad(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateJoyXpad") }
	func deactivateGesture() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateGesture") }
	func deactivateHomeButton() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateHomeButton") }
	func setHomeButtonAutoPilotState(_ _0: NnHidDebug_HomeButtonAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetHomeButtonAutoPilotState") }
	func unsetHomeButtonAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetHomeButtonAutoPilotState") }
	func deactivateSleepButton() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateSleepButton") }
	func setSleepButtonAutoPilotState(_ _0: NnHidDebug_SleepButtonAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetSleepButtonAutoPilotState") }
	func unsetSleepButtonAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetSleepButtonAutoPilotState") }
	func deactivateInputDetector() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateInputDetector") }
	func deactivateCaptureButton() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateCaptureButton") }
	func setCaptureButtonAutoPilotState(_ _0: NnHidDebug_CaptureButtonAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetCaptureButtonAutoPilotState") }
	func unsetCaptureButtonAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetCaptureButtonAutoPilotState") }
	func setShiftAccelerometerCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetShiftAccelerometerCalibrationValue") }
	func getShiftAccelerometerCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetShiftAccelerometerCalibrationValue") }
	func setShiftGyroscopeCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetShiftGyroscopeCalibrationValue") }
	func getShiftGyroscopeCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetShiftGyroscopeCalibrationValue") }
	func deactivateConsoleSixAxisSensor() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateConsoleSixAxisSensor") }
	func getConsoleSixAxisSensorSamplingFrequency(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetConsoleSixAxisSensorSamplingFrequency") }
	func deactivateSevenSixAxisSensor(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateSevenSixAxisSensor") }
	func activateFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#ActivateFirmwareUpdate") }
	func deactivateFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateFirmwareUpdate") }
	func startFirmwareUpdate(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#StartFirmwareUpdate") }
	func getFirmwareUpdateStage() throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetFirmwareUpdateStage") }
	func getFirmwareVersion(_ _0: UInt32, _ _1: Any?) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetFirmwareVersion") }
	func getDestinationFirmwareVersion(_ _0: UInt32, _ _1: Any?) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetDestinationFirmwareVersion") }
	func discardFirmwareInfoCacheForRevert() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DiscardFirmwareInfoCacheForRevert") }
	func startFirmwareUpdateForRevert(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#StartFirmwareUpdateForRevert") }
	func getAvailableFirmwareVersionForRevert(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAvailableFirmwareVersionForRevert") }
	func isFirmwareUpdatingDevice(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#IsFirmwareUpdatingDevice") }
	func updateControllerColor(_ _0: NnUtil_Unorm8x4, _ _1: NnUtil_Unorm8x4, _ _2: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UpdateControllerColor") }
	func connectUsbPadsAsync() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#ConnectUsbPadsAsync") }
	func disconnectUsbPadsAsync() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DisconnectUsbPadsAsync") }
	func updateDesignInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UpdateDesignInfo") }
	func getUniquePadDriverState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetUniquePadDriverState") }
	func getSixAxisSensorDriverStates(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetSixAxisSensorDriverStates") }
	func getAbstractedPadHandles(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAbstractedPadHandles") }
	func getAbstractedPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAbstractedPadState") }
	func getAbstractedPadsState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAbstractedPadsState") }
	func setAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetAutoPilotVirtualPadState") }
	func unsetAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetAutoPilotVirtualPadState") }
	func unsetAllAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetAllAutoPilotVirtualPadState") }
	func addRegisteredDevice(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#AddRegisteredDevice") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try deactivateDebugPad()
			om.initialize(0, 0, 0)
		
		case 1:
			try setDebugPadAutoPilotState(im.getBytes(8, 0x18))
			om.initialize(0, 0, 0)
		
		case 2:
			try unsetDebugPadAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 10:
			try deactivateTouchScreen()
			om.initialize(0, 0, 0)
		
		case 11:
			try setTouchScreenAutoPilotState(im.getBuffer(0x5, 0) as Buffer<NnHid_TouchState>)
			om.initialize(0, 0, 0)
		
		case 12:
			try unsetTouchScreenAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 20:
			try deactivateMouse()
			om.initialize(0, 0, 0)
		
		case 21:
			try setMouseAutoPilotState(im.getBytes(8, 0x1c))
			om.initialize(0, 0, 0)
		
		case 22:
			try unsetMouseAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 30:
			try deactivateKeyboard()
			om.initialize(0, 0, 0)
		
		case 31:
			try setKeyboardAutoPilotState(im.getBytes(8, 0x28))
			om.initialize(0, 0, 0)
		
		case 32:
			try unsetKeyboardAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 50:
			try deactivateXpad(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 51:
			try setXpadAutoPilotState(im.getData(8) as UInt32, im.getBytes(12, 0x1c))
			om.initialize(0, 0, 0)
		
		case 52:
			try unsetXpadAutoPilotState(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 60:
			try deactivateJoyXpad(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 91:
			try deactivateGesture()
			om.initialize(0, 0, 0)
		
		case 110:
			try deactivateHomeButton()
			om.initialize(0, 0, 0)
		
		case 111:
			try setHomeButtonAutoPilotState(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 112:
			try unsetHomeButtonAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 120:
			try deactivateSleepButton()
			om.initialize(0, 0, 0)
		
		case 121:
			try setSleepButtonAutoPilotState(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 122:
			try unsetSleepButtonAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 123:
			try deactivateInputDetector()
			om.initialize(0, 0, 0)
		
		case 130:
			try deactivateCaptureButton()
			om.initialize(0, 0, 0)
		
		case 131:
			try setCaptureButtonAutoPilotState(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 132:
			try unsetCaptureButtonAutoPilotState()
			om.initialize(0, 0, 0)
		
		case 133:
			try setShiftAccelerometerCalibrationValue(im.getData(8) as UInt32, im.getData(12) as Float32, im.getData(16) as Float32, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 134:
			let (_0, _1) = try getShiftAccelerometerCalibrationValue(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 135:
			try setShiftGyroscopeCalibrationValue(im.getData(8) as UInt32, im.getData(12) as Float32, im.getData(16) as Float32, im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 136:
			let (_0, _1) = try getShiftGyroscopeCalibrationValue(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 8)
			om.setData(8, _0)
			om.setData(12, _1)
		
		case 140:
			try deactivateConsoleSixAxisSensor()
			om.initialize(0, 0, 0)
		
		case 141:
			let ret = try getConsoleSixAxisSensorSamplingFrequency(nil)
			om.initialize(0, 0, 0)
		
		case 142:
			let ret = try deactivateSevenSixAxisSensor(nil)
			om.initialize(0, 0, 0)
		
		case 201:
			try activateFirmwareUpdate()
			om.initialize(0, 0, 0)
		
		case 202:
			try deactivateFirmwareUpdate()
			om.initialize(0, 0, 0)
		
		case 203:
			try startFirmwareUpdate(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 204:
			let (_0, _1) = try getFirmwareUpdateStage()
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 205:
			let ret = try getFirmwareVersion(im.getData(8) as UInt32, nil)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 206:
			let ret = try getDestinationFirmwareVersion(im.getData(8) as UInt32, nil)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 207:
			try discardFirmwareInfoCacheForRevert()
			om.initialize(0, 0, 0)
		
		case 208:
			try startFirmwareUpdateForRevert(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 209:
			let ret = try getAvailableFirmwareVersionForRevert(im.getData(8) as UInt64)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 210:
			let ret = try isFirmwareUpdatingDevice(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 221:
			try updateControllerColor(im.getBytes(8, 0x4), im.getBytes(12, 0x4), im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 222:
			try connectUsbPadsAsync()
			om.initialize(0, 0, 0)
		
		case 223:
			try disconnectUsbPadsAsync()
			om.initialize(0, 0, 0)
		
		case 224:
			let ret = try updateDesignInfo(nil)
			om.initialize(0, 0, 0)
		
		case 225:
			let ret = try getUniquePadDriverState(nil)
			om.initialize(0, 0, 0)
		
		case 226:
			let ret = try getSixAxisSensorDriverStates(nil)
			om.initialize(0, 0, 0)
		
		case 301:
			let ret = try getAbstractedPadHandles(nil)
			om.initialize(0, 0, 0)
		
		case 302:
			let ret = try getAbstractedPadState(nil)
			om.initialize(0, 0, 0)
		
		case 303:
			let ret = try getAbstractedPadsState(nil)
			om.initialize(0, 0, 0)
		
		case 321:
			let ret = try setAutoPilotVirtualPadState(nil)
			om.initialize(0, 0, 0)
		
		case 322:
			let ret = try unsetAutoPilotVirtualPadState(nil)
			om.initialize(0, 0, 0)
		
		case 323:
			let ret = try unsetAllAutoPilotVirtualPadState(nil)
			om.initialize(0, 0, 0)
		
		case 350:
			let ret = try addRegisteredDevice(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::hid::IHidDebugServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHid_IHidDebugServer_Impl: NnHid_IHidDebugServer {
	override func deactivateDebugPad() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateDebugPad") }
	override func setDebugPadAutoPilotState(_ _0: NnHidDebug_DebugPadAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetDebugPadAutoPilotState") }
	override func unsetDebugPadAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetDebugPadAutoPilotState") }
	override func deactivateTouchScreen() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateTouchScreen") }
	override func setTouchScreenAutoPilotState(_ _0: Buffer<NnHid_TouchState>) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetTouchScreenAutoPilotState") }
	override func unsetTouchScreenAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetTouchScreenAutoPilotState") }
	override func deactivateMouse() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateMouse") }
	override func setMouseAutoPilotState(_ _0: NnHidDebug_MouseAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetMouseAutoPilotState") }
	override func unsetMouseAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetMouseAutoPilotState") }
	override func deactivateKeyboard() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateKeyboard") }
	override func setKeyboardAutoPilotState(_ _0: NnHidDebug_KeyboardAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetKeyboardAutoPilotState") }
	override func unsetKeyboardAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetKeyboardAutoPilotState") }
	override func deactivateXpad(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateXpad") }
	override func setXpadAutoPilotState(_ _0: NnHid_BasicXpadId, _ _1: NnHidDebug_BasicXpadAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetXpadAutoPilotState") }
	override func unsetXpadAutoPilotState(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetXpadAutoPilotState") }
	override func deactivateJoyXpad(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateJoyXpad") }
	override func deactivateGesture() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateGesture") }
	override func deactivateHomeButton() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateHomeButton") }
	override func setHomeButtonAutoPilotState(_ _0: NnHidDebug_HomeButtonAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetHomeButtonAutoPilotState") }
	override func unsetHomeButtonAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetHomeButtonAutoPilotState") }
	override func deactivateSleepButton() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateSleepButton") }
	override func setSleepButtonAutoPilotState(_ _0: NnHidDebug_SleepButtonAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetSleepButtonAutoPilotState") }
	override func unsetSleepButtonAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetSleepButtonAutoPilotState") }
	override func deactivateInputDetector() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateInputDetector") }
	override func deactivateCaptureButton() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateCaptureButton") }
	override func setCaptureButtonAutoPilotState(_ _0: NnHidDebug_CaptureButtonAutoPilotState) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetCaptureButtonAutoPilotState") }
	override func unsetCaptureButtonAutoPilotState() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetCaptureButtonAutoPilotState") }
	override func setShiftAccelerometerCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetShiftAccelerometerCalibrationValue") }
	override func getShiftAccelerometerCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetShiftAccelerometerCalibrationValue") }
	override func setShiftGyroscopeCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetShiftGyroscopeCalibrationValue") }
	override func getShiftGyroscopeCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetShiftGyroscopeCalibrationValue") }
	override func deactivateConsoleSixAxisSensor() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateConsoleSixAxisSensor") }
	override func getConsoleSixAxisSensorSamplingFrequency(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetConsoleSixAxisSensorSamplingFrequency") }
	override func deactivateSevenSixAxisSensor(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateSevenSixAxisSensor") }
	override func activateFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#ActivateFirmwareUpdate") }
	override func deactivateFirmwareUpdate() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DeactivateFirmwareUpdate") }
	override func startFirmwareUpdate(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#StartFirmwareUpdate") }
	override func getFirmwareUpdateStage() throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetFirmwareUpdateStage") }
	override func getFirmwareVersion(_ _0: UInt32, _ _1: Any?) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetFirmwareVersion") }
	override func getDestinationFirmwareVersion(_ _0: UInt32, _ _1: Any?) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetDestinationFirmwareVersion") }
	override func discardFirmwareInfoCacheForRevert() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DiscardFirmwareInfoCacheForRevert") }
	override func startFirmwareUpdateForRevert(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#StartFirmwareUpdateForRevert") }
	override func getAvailableFirmwareVersionForRevert(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAvailableFirmwareVersionForRevert") }
	override func isFirmwareUpdatingDevice(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#IsFirmwareUpdatingDevice") }
	override func updateControllerColor(_ _0: NnUtil_Unorm8x4, _ _1: NnUtil_Unorm8x4, _ _2: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UpdateControllerColor") }
	override func connectUsbPadsAsync() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#ConnectUsbPadsAsync") }
	override func disconnectUsbPadsAsync() throws { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#DisconnectUsbPadsAsync") }
	override func updateDesignInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UpdateDesignInfo") }
	override func getUniquePadDriverState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetUniquePadDriverState") }
	override func getSixAxisSensorDriverStates(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetSixAxisSensorDriverStates") }
	override func getAbstractedPadHandles(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAbstractedPadHandles") }
	override func getAbstractedPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAbstractedPadState") }
	override func getAbstractedPadsState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#GetAbstractedPadsState") }
	override func setAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#SetAutoPilotVirtualPadState") }
	override func unsetAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetAutoPilotVirtualPadState") }
	override func unsetAllAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#UnsetAllAutoPilotVirtualPadState") }
	override func addRegisteredDevice(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidDebugServer#AddRegisteredDevice") }
}
*/

class NnHid_IHidTemporaryServer: IpcService {
	func getConsoleSixAxisSensorCalibrationValues(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHidTmp_ConsoleSixAxisSensorCalibrationValues { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidTemporaryServer#GetConsoleSixAxisSensorCalibrationValues") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getConsoleSixAxisSensorCalibrationValues(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 24)
			if ret.count != 0x18 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::hid::IHidTemporaryServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnHid_IHidTemporaryServer_Impl: NnHid_IHidTemporaryServer {
	override func getConsoleSixAxisSensorCalibrationValues(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHidTmp_ConsoleSixAxisSensorCalibrationValues { throw IpcError.unimplemented(name: "nn::hid::nn::hid::IHidTemporaryServer#GetConsoleSixAxisSensorCalibrationValues") }
}
*/
