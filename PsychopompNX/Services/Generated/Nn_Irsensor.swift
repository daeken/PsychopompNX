typealias NnIrsensor_PackedIrLedProcessorConfig = [UInt8]
typealias NnIrsensor_PackedMomentProcessorConfig = [UInt8]
typealias NnIrsensor_ImageTransferProcessorState = [UInt8]
typealias NnIrsensor_IrCameraHandle = UInt32
typealias NnIrsensor_PackedFunctionLevel = [UInt8]
typealias NnIrsensor_PackedClusteringProcessorConfig = [UInt8]
typealias NnIrsensor_PackedTeraPluginProcessorConfig = [UInt8]
typealias NnIrsensor_PackedDpdProcessorConfig = [UInt8]
typealias NnIrsensor_PackedImageTransferProcessorExConfig = [UInt8]
typealias NnIrsensor_PackedPointingProcessorConfig = [UInt8]
typealias NnIrsensor_PackedImageTransferProcessorConfig = [UInt8]
typealias NnIrsensor_PackedMcuVersion = [UInt8]

class NnIrsensor_IIrSensorServer: IpcService {
	func activateIrsensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#ActivateIrsensor") }
	func deactivateIrsensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#DeactivateIrsensor") }
	func getIrsensorSharedMemoryHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#GetIrsensorSharedMemoryHandle") }
	func stopImageProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#StopImageProcessor") }
	func runMomentProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedMomentProcessorConfig, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunMomentProcessor") }
	func runClusteringProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedClusteringProcessorConfig, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunClusteringProcessor") }
	func runImageTransferProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedImageTransferProcessorConfig, _ _3: UInt64, _ _4: Pid, _ _5: KObject) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunImageTransferProcessor") }
	func getImageTransferProcessorState(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid, _ _3: Buffer<UInt8>) throws -> NnIrsensor_ImageTransferProcessorState { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#GetImageTransferProcessorState") }
	func runTeraPluginProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedTeraPluginProcessorConfig, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunTeraPluginProcessor") }
	func getNpadIrCameraHandle(_ _0: UInt32) throws -> NnIrsensor_IrCameraHandle { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#GetNpadIrCameraHandle") }
	func runPointingProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedPointingProcessorConfig, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunPointingProcessor") }
	func suspendImageProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#SuspendImageProcessor") }
	func checkFirmwareVersion(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedMcuVersion, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#CheckFirmwareVersion") }
	func setFunctionLevel(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedFunctionLevel, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#SetFunctionLevel") }
	func runImageTransferExProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedImageTransferProcessorExConfig, _ _3: UInt64, _ _4: Pid, _ _5: KObject) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunImageTransferExProcessor") }
	func runIrLedProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedIrLedProcessorConfig, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunIrLedProcessor") }
	func stopImageProcessorAsync(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#StopImageProcessorAsync") }
	func activateIrsensorWithFunctionLevel(_ _0: NnIrsensor_PackedFunctionLevel, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#ActivateIrsensorWithFunctionLevel") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 302:
			try activateIrsensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 303:
			try deactivateIrsensor(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 304:
			let ret = try getIrsensorSharedMemoryHandle(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 305:
			try stopImageProcessor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 306:
			try runMomentProcessor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBytes(24, 0x20), im.pid)
			om.initialize(0, 0, 0)
		
		case 307:
			try runClusteringProcessor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBytes(24, 0x28), im.pid)
			om.initialize(0, 0, 0)
		
		case 308:
			try runImageTransferProcessor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBytes(24, 0x18), im.getData(48) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 309:
			let ret = try getImageTransferProcessorState(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 310:
			try runTeraPluginProcessor(im.getData(8) as UInt32, im.getBytes(12, 0x8), im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 311:
			let ret = try getNpadIrCameraHandle(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 312:
			try runPointingProcessor(im.getData(8) as UInt32, im.getBytes(12, 0xc), im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 313:
			try suspendImageProcessor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 314:
			try checkFirmwareVersion(im.getData(8) as UInt32, im.getBytes(12, 0x4), im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 315:
			try setFunctionLevel(im.getData(8) as UInt32, im.getBytes(12, 0x4), im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 316:
			try runImageTransferExProcessor(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBytes(24, 0x20), im.getData(56) as UInt64, im.pid, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(0, 0, 0)
		
		case 317:
			try runIrLedProcessor(im.getData(8) as UInt32, im.getBytes(12, 0x8), im.getData(24) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 318:
			try stopImageProcessorAsync(im.getData(8) as UInt32, im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 319:
			try activateIrsensorWithFunctionLevel(im.getBytes(8, 0x4), im.getData(16) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::irsensor::IIrSensorServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnIrsensor_IIrSensorServer_Impl: NnIrsensor_IIrSensorServer {
	override func activateIrsensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#ActivateIrsensor") }
	override func deactivateIrsensor(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#DeactivateIrsensor") }
	override func getIrsensorSharedMemoryHandle(_ _0: NnApplet_AppletResourceUserId, _ _1: Pid) throws -> KObject { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#GetIrsensorSharedMemoryHandle") }
	override func stopImageProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#StopImageProcessor") }
	override func runMomentProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedMomentProcessorConfig, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunMomentProcessor") }
	override func runClusteringProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedClusteringProcessorConfig, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunClusteringProcessor") }
	override func runImageTransferProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedImageTransferProcessorConfig, _ _3: UInt64, _ _4: Pid, _ _5: KObject) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunImageTransferProcessor") }
	override func getImageTransferProcessorState(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid, _ _3: Buffer<UInt8>) throws -> NnIrsensor_ImageTransferProcessorState { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#GetImageTransferProcessorState") }
	override func runTeraPluginProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedTeraPluginProcessorConfig, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunTeraPluginProcessor") }
	override func getNpadIrCameraHandle(_ _0: UInt32) throws -> NnIrsensor_IrCameraHandle { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#GetNpadIrCameraHandle") }
	override func runPointingProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedPointingProcessorConfig, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunPointingProcessor") }
	override func suspendImageProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#SuspendImageProcessor") }
	override func checkFirmwareVersion(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedMcuVersion, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#CheckFirmwareVersion") }
	override func setFunctionLevel(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedFunctionLevel, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#SetFunctionLevel") }
	override func runImageTransferExProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: NnIrsensor_PackedImageTransferProcessorExConfig, _ _3: UInt64, _ _4: Pid, _ _5: KObject) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunImageTransferExProcessor") }
	override func runIrLedProcessor(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnIrsensor_PackedIrLedProcessorConfig, _ _2: NnApplet_AppletResourceUserId, _ _3: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#RunIrLedProcessor") }
	override func stopImageProcessorAsync(_ _0: NnIrsensor_IrCameraHandle, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#StopImageProcessorAsync") }
	override func activateIrsensorWithFunctionLevel(_ _0: NnIrsensor_PackedFunctionLevel, _ _1: NnApplet_AppletResourceUserId, _ _2: Pid) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorServer#ActivateIrsensorWithFunctionLevel") }
}
*/

class NnIrsensor_IIrSensorSystemServer: IpcService {
	func setAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#SetAppletResourceUserId") }
	func registerAppletResourceUserId(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#RegisterAppletResourceUserId") }
	func unregisterAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#UnregisterAppletResourceUserId") }
	func enableAppletToGetInput(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#EnableAppletToGetInput") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
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
		
		default:
			print("Unhandled command to nn::irsensor::IIrSensorSystemServer: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnIrsensor_IIrSensorSystemServer_Impl: NnIrsensor_IIrSensorSystemServer {
	override func setAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#SetAppletResourceUserId") }
	override func registerAppletResourceUserId(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#RegisterAppletResourceUserId") }
	override func unregisterAppletResourceUserId(_ _0: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#UnregisterAppletResourceUserId") }
	override func enableAppletToGetInput(_ _0: UInt8, _ _1: NnApplet_AppletResourceUserId) throws { throw IpcError.unimplemented(name: "nn::irsensor::nn::irsensor::IIrSensorSystemServer#EnableAppletToGetInput") }
}
*/
