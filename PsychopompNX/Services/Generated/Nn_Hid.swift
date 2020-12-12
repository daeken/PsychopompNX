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
	func activateVibrationDevice(_ _0: NnHid_VibrationDeviceHandle) throws { throw IpcError.unimplemented }
	
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

class NnHid_IAppletResource: IpcService {
	func getSharedMemoryHandle() throws -> KObject { throw IpcError.unimplemented }
	
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

class NnHid_IHidServer: IpcService {
	func createAppletResource(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> NnHid_IAppletResource { throw IpcError.unimplemented }
	func activateDebugPad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func activateTouchScreen(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func activateMouse(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func activateKeyboard(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func unknown32(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func acquireXpadIdEventHandle(_ _0: UInt64) throws -> KObject { throw IpcError.unimplemented }
	func releaseXpadIdEventHandle(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func activateXpad(_ _0: NnHid_BasicXpadId, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func getXpadIds(_ _0: Buffer<NnHid_BasicXpadId>) throws -> Int64 { throw IpcError.unimplemented }
	func activateJoyXpad(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented }
	func getJoyXpadLifoHandle(_ _0: NnHid_JoyXpadId) throws -> KObject { throw IpcError.unimplemented }
	func getJoyXpadIds(_ _0: Buffer<NnHid_JoyXpadId>) throws -> Int64 { throw IpcError.unimplemented }
	func activateSixAxisSensor(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented }
	func deactivateSixAxisSensor(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented }
	func getSixAxisSensorLifoHandle(_ _0: NnHid_BasicXpadId) throws -> KObject { throw IpcError.unimplemented }
	func activateJoySixAxisSensor(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented }
	func deactivateJoySixAxisSensor(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented }
	func getJoySixAxisSensorLifoHandle(_ _0: NnHid_JoyXpadId) throws -> KObject { throw IpcError.unimplemented }
	func startSixAxisSensor(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func stopSixAxisSensor(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func isSixAxisSensorFusionEnabled(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented }
	func enableSixAxisSensorFusion(_ _0: Bool, _ _1: NnHid_SixAxisSensorHandle, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func setSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented }
	func getSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented }
	func resetSixAxisSensorFusionParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented }
	func getAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented }
	func resetAccelerometerParameters(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func getAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt32 { throw IpcError.unimplemented }
	func resetAccelerometerPlayMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func getGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt32 { throw IpcError.unimplemented }
	func resetGyroscopeZeroDriftMode(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func isSixAxisSensorAtRest(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented }
	func unknown83(_ _0: UInt64, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented }
	func activateGesture(_ _0: Int32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setSupportedNpadStyleSet(_ _0: NnHid_NpadStyleTag, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func getSupportedNpadStyleSet(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> NnHid_NpadStyleTag { throw IpcError.unimplemented }
	func setSupportedNpadIdType(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid, _ _2: Buffer<UInt32>) throws { throw IpcError.unimplemented }
	func activateNpad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func deactivateNpad(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func acquireNpadStyleSetUpdateEventHandle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: UInt64, _ _3: Pid) throws -> KObject { throw IpcError.unimplemented }
	func disconnectNpad(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func activateNpadWithRevision(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setNpadJoyHoldType(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func getNpadJoyHoldType(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Int64 { throw IpcError.unimplemented }
	func setNpadJoyAssignmentModeSingleByDefault(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setNpadJoyAssignmentModeSingle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Int64, _ _3: Pid) throws { throw IpcError.unimplemented }
	func setNpadJoyAssignmentModeDual(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func mergeSingleJoyAsDualJoy(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func startLrAssignmentMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func stopLrAssignmentMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func setNpadHandheldActivationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func getNpadHandheldActivationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Int64 { throw IpcError.unimplemented }
	func swapNpadAssignment(_ _0: UInt32, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func isUnintendedHomeButtonInputProtectionEnabled(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> Bool { throw IpcError.unimplemented }
	func enableUnintendedHomeButtonInputProtection(_ _0: Bool, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func setNpadJoyAssignmentModeSingleWithDestination(_ _0: UInt32, _ _1: UInt64, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws -> (Bool, UInt32) { throw IpcError.unimplemented }
	func getVibrationDeviceInfo(_ _0: NnHid_VibrationDeviceHandle) throws -> NnHid_VibrationDeviceInfoForIpc { throw IpcError.unimplemented }
	func sendVibrationValue(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnHid_VibrationValue, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func getActualVibrationValue(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_VibrationValue { throw IpcError.unimplemented }
	func createActiveVibrationDeviceList() throws -> NnHid_IActiveVibrationDeviceList { throw IpcError.unimplemented }
	func permitVibration(_ _0: Bool) throws { throw IpcError.unimplemented }
	func isVibrationPermitted() throws -> Bool { throw IpcError.unimplemented }
	func sendVibrationValues(_ _0: NnApplet_AppletResourceUserId, _ _1: Buffer<NnHid_VibrationDeviceHandle>, _ _2: Buffer<NnHid_VibrationValue>) throws { throw IpcError.unimplemented }
	func sendVibrationGcErmCommand(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnHid_VibrationGcErmCommand, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func getActualVibrationGcErmCommand(_ _0: NnHid_VibrationDeviceHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_VibrationGcErmCommand { throw IpcError.unimplemented }
	func beginPermitVibrationSession(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func endPermitVibrationSession() throws { throw IpcError.unimplemented }
	func activateConsoleSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func startConsoleSixAxisSensor(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func stopConsoleSixAxisSensor(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func activateSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func startSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func stopSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func initializeSevenSixAxisSensor(_ _0: UInt32, _ _1: UInt64, _ _2: UInt32, _ _3: UInt64, _ _4: NnApplet_AppletResourceUserId, _ _5: Pid) throws { throw IpcError.unimplemented }
	func finalizeSevenSixAxisSensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func setSevenSixAxisSensorFusionStrength(_ _0: Float32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func getSevenSixAxisSensorFusionStrength(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> Float32 { throw IpcError.unimplemented }
	func unknown310(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func isUsbFullKeyControllerEnabled() throws -> Bool { throw IpcError.unimplemented }
	func enableUsbFullKeyController(_ _0: Bool) throws { throw IpcError.unimplemented }
	func isUsbFullKeyControllerConnected(_ _0: UInt32) throws -> Bool { throw IpcError.unimplemented }
	func hasBattery(_ _0: UInt32) throws -> Bool { throw IpcError.unimplemented }
	func hasLeftRightBattery(_ _0: UInt32) throws -> (Bool, Bool) { throw IpcError.unimplemented }
	func getNpadInterfaceType(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func getNpadLeftRightInterfaceType(_ _0: UInt32) throws -> (UInt8, UInt8) { throw IpcError.unimplemented }
	func getPalmaConnectionHandle(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHid_PalmaConnectionHandle { throw IpcError.unimplemented }
	func initializePalma(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func acquirePalmaOperationCompleteEvent(_ _0: NnHid_PalmaConnectionHandle) throws -> KObject { throw IpcError.unimplemented }
	func getPalmaOperationInfo(_ _0: NnHid_PalmaConnectionHandle, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func playPalmaActivity(_ _0: UInt64, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func setPalmaFrModeType(_ _0: UInt64, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func readPalmaStep(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func enablePalmaStep(_ _0: Bool, _ _1: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func resetPalmaStep(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func readPalmaApplicationSection(_ _0: UInt64, _ _1: UInt64, _ _2: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func writePalmaApplicationSection(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<NnHid_PalmaApplicationSectionAccessBuffer>, _ _3: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func readPalmaUniqueCode(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func setPalmaUniqueCodeInvalid(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func writePalmaActivityEntry(_ _0: UInt64, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func writePalmaRgbLedPatternEntry(_ _0: UInt64, _ _1: Buffer<UInt8>, _ _2: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func writePalmaWaveEntry(_ _0: UInt64, _ _1: UInt64, _ _2: KObject, _ _3: UInt64, _ _4: UInt64, _ _5: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func setPalmaDataBaseIdentificationVersion(_ _0: UInt32, _ _1: NnHid_PalmaConnectionHandle, _ _2: Int32) throws { throw IpcError.unimplemented }
	func getPalmaDataBaseIdentificationVersion(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func suspendPalmaFeature(_ _0: NnHid_PalmaConnectionHandle, _ _1: NnHid_PalmaFeature) throws { throw IpcError.unimplemented }
	func getPalmaOperationResult(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func readPalmaPlayLog(_ _0: NnHid_PalmaConnectionHandle, _ _1: UInt16) throws { throw IpcError.unimplemented }
	func resetPalmaPlayLog(_ _0: NnHid_PalmaConnectionHandle, _ _1: UInt16) throws { throw IpcError.unimplemented }
	func setIsPalmaAllConnectable(_ _0: NnApplet_AppletResourceUserId, _ _1: Bool, _ _2: Pid) throws { throw IpcError.unimplemented }
	func setIsPalmaPairedConnectable(_ _0: NnApplet_AppletResourceUserId, _ _1: Bool, _ _2: Pid) throws { throw IpcError.unimplemented }
	func pairPalma(_ _0: NnHid_PalmaConnectionHandle) throws { throw IpcError.unimplemented }
	func setPalmaBoostMode(_ _0: Bool) throws { throw IpcError.unimplemented }
	func setNpadCommunicationMode(_ _0: NnApplet_AppletResourceUserId, _ _1: Int64, _ _2: Pid) throws { throw IpcError.unimplemented }
	func getNpadCommunicationMode() throws -> Int64 { throw IpcError.unimplemented }
	
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

class NnHid_IHidSystemServer: IpcService {
	func sendKeyboardLockKeyEvent(_ _0: Any?) throws { throw IpcError.unimplemented }
	func acquireHomeButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented }
	func activateHomeButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func acquireSleepButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented }
	func activateSleepButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func acquireCaptureButtonEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented }
	func activateCaptureButton(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func acquireNfcDeviceUpdateEventHandle() throws -> KObject { throw IpcError.unimplemented }
	func getNpadsWithNfc(_ _0: Buffer<UInt32>) throws -> UInt64 { throw IpcError.unimplemented }
	func acquireNfcActivateEventHandle(_ _0: UInt32) throws -> KObject { throw IpcError.unimplemented }
	func activateNfc(_ _0: UInt8, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func getXcdHandleForNpadWithNfc(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId) throws -> UInt64 { throw IpcError.unimplemented }
	func isNfcActivated(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func acquireIrSensorEventHandle(_ _0: UInt32) throws -> KObject { throw IpcError.unimplemented }
	func activateIrSensor(_ _0: UInt8, _ _1: UInt32, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func activateNpadSystem(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func applyNpadSystemCommonPolicy(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func enableAssigningSingleOnSlSrPress(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func disableAssigningSingleOnSlSrPress(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func getLastActiveNpad() throws -> UInt32 { throw IpcError.unimplemented }
	func getNpadSystemExtStyle(_ _0: UInt32) throws -> (UInt64, UInt64) { throw IpcError.unimplemented }
	func applyNpadSystemCommonPolicyFull(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getNpadFullKeyGripColor(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setNpadPlayerLedBlinkingDevice(_ _0: UInt32, _ _1: Any?, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented }
	func getUniquePadsFromNpad(_ _0: UInt32, _ _1: Buffer<NnHidSystem_UniquePadId>) throws -> UInt64 { throw IpcError.unimplemented }
	func getIrSensorState(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt64 { throw IpcError.unimplemented }
	func getXcdHandleForNpadWithIrSensor(_ _0: UInt32, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> UInt64 { throw IpcError.unimplemented }
	func setAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func registerAppletResourceUserId(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func unregisterAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func enableAppletToGetInput(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func setAruidValidForVibration(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func enableAppletToGetSixAxisSensor(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func setVibrationMasterVolume(_ _0: Float32) throws { throw IpcError.unimplemented }
	func getVibrationMasterVolume() throws -> Float32 { throw IpcError.unimplemented }
	func beginPermitVibrationSession(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented }
	func endPermitVibrationSession() throws { throw IpcError.unimplemented }
	func enableHandheldHids() throws { throw IpcError.unimplemented }
	func disableHandheldHids() throws { throw IpcError.unimplemented }
	func acquirePlayReportControllerUsageUpdateEvent() throws -> KObject { throw IpcError.unimplemented }
	func getPlayReportControllerUsages(_ _0: Buffer<NnHidSystem_PlayReportControllerUsage>) throws -> UInt64 { throw IpcError.unimplemented }
	func acquirePlayReportRegisteredDeviceUpdateEvent() throws -> KObject { throw IpcError.unimplemented }
	func getRegisteredDevicesOld(_ _0: Buffer<NnHidSystem_RegisteredDevice>) throws -> UInt64 { throw IpcError.unimplemented }
	func acquireConnectionTriggerTimeoutEvent() throws -> KObject { throw IpcError.unimplemented }
	func sendConnectionTrigger(_ _0: NnBluetooth_Address) throws { throw IpcError.unimplemented }
	func acquireDeviceRegisteredEventForControllerSupport() throws -> KObject { throw IpcError.unimplemented }
	func getAllowedBluetoothLinksCount() throws -> UInt64 { throw IpcError.unimplemented }
	func getRegisteredDevices(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func activateUniquePad(_ _0: NnApplet_AppletResourceUserId, _ _1: NnHidSystem_UniquePadId, _ _2: Pid) throws { throw IpcError.unimplemented }
	func acquireUniquePadConnectionEventHandle() throws -> KObject { throw IpcError.unimplemented }
	func getUniquePadIds(_ _0: Buffer<NnHidSystem_UniquePadId>) throws -> UInt64 { throw IpcError.unimplemented }
	func acquireJoyDetachOnBluetoothOffEventHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented }
	func listSixAxisSensorHandles(_ _0: NnHidSystem_UniquePadId, _ _1: Buffer<NnHidSystem_UniqueSixAxisSensorHandle>) throws -> UInt64 { throw IpcError.unimplemented }
	func isSixAxisSensorUserCalibrationSupported(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws -> UInt8 { throw IpcError.unimplemented }
	func resetSixAxisSensorCalibrationValues(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented }
	func startSixAxisSensorUserCalibration(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented }
	func cancelSixAxisSensorUserCalibration(_ _0: NnHidSystem_UniqueSixAxisSensorHandle) throws { throw IpcError.unimplemented }
	func getUniquePadBluetoothAddress(_ _0: NnHidSystem_UniquePadId) throws -> NnBluetooth_Address { throw IpcError.unimplemented }
	func disconnectUniquePad(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented }
	func getUniquePadType(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getUniquePadInterface(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getUniquePadSerialNumber(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getUniquePadControllerNumber(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSixAxisSensorUserCalibrationStage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func startAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func retryCurrentAnalogStickManualCalibrationStage(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func cancelAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func resetAnalogStickManualCalibration(_ _0: NnHidSystem_UniquePadId, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func getAnalogStickState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAnalogStickManualCalibrationStage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isAnalogStickButtonPressed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isAnalogStickInReleasePosition(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isAnalogStickInCircumference(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isUsbFullKeyControllerEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func enableUsbFullKeyController(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func isUsbConnected(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented }
	func activateInputDetector(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented }
	func notifyInputDetector(_ _0: Any?) throws { throw IpcError.unimplemented }
	func initializeFirmwareUpdate() throws { throw IpcError.unimplemented }
	func getFirmwareVersion(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented }
	func getAvailableFirmwareVersion(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented }
	func isFirmwareUpdateAvailable(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented }
	func checkFirmwareUpdateRequired(_ _0: NnHidSystem_UniquePadId) throws -> UInt64 { throw IpcError.unimplemented }
	func startFirmwareUpdate(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareUpdateDeviceHandle { throw IpcError.unimplemented }
	func abortFirmwareUpdate() throws { throw IpcError.unimplemented }
	func getFirmwareUpdateState(_ _0: NnHidSystem_FirmwareUpdateDeviceHandle) throws -> NnHidSystem_FirmwareUpdateState { throw IpcError.unimplemented }
	func activateAudioControl() throws { throw IpcError.unimplemented }
	func acquireAudioControlEventHandle() throws -> KObject { throw IpcError.unimplemented }
	func getAudioControlStates(_ _0: Buffer<NnHidSystem_AudioControlState>) throws -> UInt64 { throw IpcError.unimplemented }
	func deactivateAudioControl() throws { throw IpcError.unimplemented }
	func isSixAxisSensorAccurateUserCalibrationSupported(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func startSixAxisSensorAccurateUserCalibration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func cancelSixAxisSensorAccurateUserCalibration(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSixAxisSensorAccurateUserCalibrationState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getHidbusSystemServiceObject(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
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

class NnHid_IHidDebugServer: IpcService {
	func deactivateDebugPad() throws { throw IpcError.unimplemented }
	func setDebugPadAutoPilotState(_ _0: NnHidDebug_DebugPadAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetDebugPadAutoPilotState() throws { throw IpcError.unimplemented }
	func deactivateTouchScreen() throws { throw IpcError.unimplemented }
	func setTouchScreenAutoPilotState(_ _0: Buffer<NnHid_TouchState>) throws { throw IpcError.unimplemented }
	func unsetTouchScreenAutoPilotState() throws { throw IpcError.unimplemented }
	func deactivateMouse() throws { throw IpcError.unimplemented }
	func setMouseAutoPilotState(_ _0: NnHidDebug_MouseAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetMouseAutoPilotState() throws { throw IpcError.unimplemented }
	func deactivateKeyboard() throws { throw IpcError.unimplemented }
	func setKeyboardAutoPilotState(_ _0: NnHidDebug_KeyboardAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetKeyboardAutoPilotState() throws { throw IpcError.unimplemented }
	func deactivateXpad(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented }
	func setXpadAutoPilotState(_ _0: NnHid_BasicXpadId, _ _1: NnHidDebug_BasicXpadAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetXpadAutoPilotState(_ _0: NnHid_BasicXpadId) throws { throw IpcError.unimplemented }
	func deactivateJoyXpad(_ _0: NnHid_JoyXpadId) throws { throw IpcError.unimplemented }
	func deactivateGesture() throws { throw IpcError.unimplemented }
	func deactivateHomeButton() throws { throw IpcError.unimplemented }
	func setHomeButtonAutoPilotState(_ _0: NnHidDebug_HomeButtonAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetHomeButtonAutoPilotState() throws { throw IpcError.unimplemented }
	func deactivateSleepButton() throws { throw IpcError.unimplemented }
	func setSleepButtonAutoPilotState(_ _0: NnHidDebug_SleepButtonAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetSleepButtonAutoPilotState() throws { throw IpcError.unimplemented }
	func deactivateInputDetector() throws { throw IpcError.unimplemented }
	func deactivateCaptureButton() throws { throw IpcError.unimplemented }
	func setCaptureButtonAutoPilotState(_ _0: NnHidDebug_CaptureButtonAutoPilotState) throws { throw IpcError.unimplemented }
	func unsetCaptureButtonAutoPilotState() throws { throw IpcError.unimplemented }
	func setShiftAccelerometerCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented }
	func getShiftAccelerometerCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented }
	func setShiftGyroscopeCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: Float32, _ _2: Float32, _ _3: NnApplet_AppletResourceUserId, _ _4: Pid) throws { throw IpcError.unimplemented }
	func getShiftGyroscopeCalibrationValue(_ _0: NnHid_SixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> (Float32, Float32) { throw IpcError.unimplemented }
	func deactivateConsoleSixAxisSensor() throws { throw IpcError.unimplemented }
	func getConsoleSixAxisSensorSamplingFrequency(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func deactivateSevenSixAxisSensor(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func activateFirmwareUpdate() throws { throw IpcError.unimplemented }
	func deactivateFirmwareUpdate() throws { throw IpcError.unimplemented }
	func startFirmwareUpdate(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented }
	func getFirmwareUpdateStage() throws -> (UInt64, UInt64) { throw IpcError.unimplemented }
	func getFirmwareVersion(_ _0: UInt32, _ _1: Any?) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented }
	func getDestinationFirmwareVersion(_ _0: UInt32, _ _1: Any?) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented }
	func discardFirmwareInfoCacheForRevert() throws { throw IpcError.unimplemented }
	func startFirmwareUpdateForRevert(_ _0: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented }
	func getAvailableFirmwareVersionForRevert(_ _0: NnHidSystem_UniquePadId) throws -> NnHidSystem_FirmwareVersion { throw IpcError.unimplemented }
	func isFirmwareUpdatingDevice(_ _0: NnHidSystem_UniquePadId) throws -> UInt8 { throw IpcError.unimplemented }
	func updateControllerColor(_ _0: NnUtil_Unorm8x4, _ _1: NnUtil_Unorm8x4, _ _2: NnHidSystem_UniquePadId) throws { throw IpcError.unimplemented }
	func connectUsbPadsAsync() throws { throw IpcError.unimplemented }
	func disconnectUsbPadsAsync() throws { throw IpcError.unimplemented }
	func updateDesignInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getUniquePadDriverState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getSixAxisSensorDriverStates(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAbstractedPadHandles(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAbstractedPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAbstractedPadsState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unsetAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unsetAllAutoPilotVirtualPadState(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func addRegisteredDevice(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
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

class NnHid_IHidTemporaryServer: IpcService {
	func getConsoleSixAxisSensorCalibrationValues(_ _0: NnHid_ConsoleSixAxisSensorHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws -> NnHidTmp_ConsoleSixAxisSensorCalibrationValues { throw IpcError.unimplemented }
	
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
