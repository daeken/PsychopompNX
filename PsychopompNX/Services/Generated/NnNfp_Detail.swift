class NnNfpDetail_IDebug: IpcService {
	func initializeDebug(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#InitializeDebug") }
	func finalizeDebug() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#FinalizeDebug") }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#ListDevices") }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#StartDetection") }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#StopDetection") }
	func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Mount") }
	func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unmount") }
	func openApplicationArea(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#OpenApplicationArea") }
	func getApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetApplicationArea") }
	func setApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#SetApplicationArea") }
	func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Flush") }
	func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Restore") }
	func createApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#CreateApplicationArea") }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetTagInfo") }
	func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetRegisterInfo") }
	func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetCommonInfo") }
	func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetModelInfo") }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#AttachActivateEvent") }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#AttachDeactivateEvent") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetState") }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetDeviceState") }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetNpadId") }
	func getApplicationArea2(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetApplicationArea2") }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#AttachAvailabilityChangeEvent") }
	func recreateApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#RecreateApplicationArea") }
	func format(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Format") }
	func getAdminInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetAdminInfo") }
	func getRegisterInfo2(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetRegisterInfo2") }
	func setRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#SetRegisterInfo") }
	func deleteRegisterInfo(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#DeleteRegisterInfo") }
	func deleteApplicationArea(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#DeleteApplicationArea") }
	func existsApplicationArea(_ _0: [UInt8]) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#ExistsApplicationArea") }
	func getAll(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetAll") }
	func setAll(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#SetAll") }
	func flushDebug(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#FlushDebug") }
	func breakTag(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#BreakTag") }
	func readBackupData(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#ReadBackupData") }
	func writeBackupData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#WriteBackupData") }
	func writeNtf(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#WriteNtf") }
	func unknown300(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown300") }
	func unknown301() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown301") }
	func unknown302(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown302") }
	func unknown303(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown303") }
	func unknown304(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown304") }
	func unknown305(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown305") }
	func unknown306(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown306") }
	func unknown307(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown307") }
	func unknown308(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown308") }
	func unknown309() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown309") }
	func unknown310(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown310") }
	func unknown311(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown311") }
	func unknown312(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown312") }
	func unknown313(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown313") }
	func unknown314() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown314") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeDebug(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeDebug()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try mount(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unmount(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 7:
			try openApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			try setApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try flush(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 11:
			try restore(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 12:
			try createApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try getRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getCommonInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getModelInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 19:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			let ret = try getApplicationArea2(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try recreateApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 100:
			try format(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 101:
			try getAdminInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 102:
			try getRegisterInfo2(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 103:
			try setRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 104:
			try deleteRegisterInfo(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 105:
			try deleteApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 106:
			let ret = try existsApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 200:
			try getAll(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 201:
			try setAll(im.getBytes(8, 0x8), im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 202:
			try flushDebug(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 203:
			try breakTag(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 204:
			let ret = try readBackupData(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 205:
			try writeBackupData(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 206:
			try writeNtf(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 300:
			try unknown300(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 301:
			try unknown301()
			om.initialize(0, 0, 0)
		
		case 302:
			let ret = try unknown302(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 303:
			try unknown303(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 304:
			try unknown304(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 305:
			let ret = try unknown305(im.getBytes(8, 0x8), im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 306:
			try unknown306(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 307:
			let ret = try unknown307(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 308:
			let ret = try unknown308(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 309:
			let ret = try unknown309()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 310:
			let ret = try unknown310(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 311:
			let ret = try unknown311(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 312:
			try unknown312(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 313:
			try unknown313(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 314:
			let ret = try unknown314()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::IDebug: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfpDetail_IDebug_Impl: NnNfpDetail_IDebug {
	override func initializeDebug(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#InitializeDebug") }
	override func finalizeDebug() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#FinalizeDebug") }
	override func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#ListDevices") }
	override func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#StartDetection") }
	override func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#StopDetection") }
	override func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Mount") }
	override func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unmount") }
	override func openApplicationArea(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#OpenApplicationArea") }
	override func getApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetApplicationArea") }
	override func setApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#SetApplicationArea") }
	override func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Flush") }
	override func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Restore") }
	override func createApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#CreateApplicationArea") }
	override func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetTagInfo") }
	override func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetRegisterInfo") }
	override func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetCommonInfo") }
	override func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetModelInfo") }
	override func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#AttachActivateEvent") }
	override func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#AttachDeactivateEvent") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetState") }
	override func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetDeviceState") }
	override func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetNpadId") }
	override func getApplicationArea2(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetApplicationArea2") }
	override func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#AttachAvailabilityChangeEvent") }
	override func recreateApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#RecreateApplicationArea") }
	override func format(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Format") }
	override func getAdminInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetAdminInfo") }
	override func getRegisterInfo2(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetRegisterInfo2") }
	override func setRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#SetRegisterInfo") }
	override func deleteRegisterInfo(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#DeleteRegisterInfo") }
	override func deleteApplicationArea(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#DeleteApplicationArea") }
	override func existsApplicationArea(_ _0: [UInt8]) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#ExistsApplicationArea") }
	override func getAll(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#GetAll") }
	override func setAll(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#SetAll") }
	override func flushDebug(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#FlushDebug") }
	override func breakTag(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#BreakTag") }
	override func readBackupData(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#ReadBackupData") }
	override func writeBackupData(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#WriteBackupData") }
	override func writeNtf(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#WriteNtf") }
	override func unknown300(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown300") }
	override func unknown301() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown301") }
	override func unknown302(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown302") }
	override func unknown303(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown303") }
	override func unknown304(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown304") }
	override func unknown305(_ _0: [UInt8], _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown305") }
	override func unknown306(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown306") }
	override func unknown307(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown307") }
	override func unknown308(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown308") }
	override func unknown309() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown309") }
	override func unknown310(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown310") }
	override func unknown311(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown311") }
	override func unknown312(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown312") }
	override func unknown313(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown313") }
	override func unknown314() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebug#Unknown314") }
}
*/

class NnNfpDetail_ISystem: IpcService {
	func initializeSystem(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#InitializeSystem") }
	func finalizeSystem() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#FinalizeSystem") }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#ListDevices") }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#StartDetection") }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#StopDetection") }
	func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Mount") }
	func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Unmount") }
	func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Flush") }
	func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Restore") }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetTagInfo") }
	func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetRegisterInfo") }
	func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetCommonInfo") }
	func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetModelInfo") }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#AttachActivateEvent") }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#AttachDeactivateEvent") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetState") }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetDeviceState") }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetNpadId") }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#AttachAvailabilityChangeEvent") }
	func format(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Format") }
	func getAdminInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetAdminInfo") }
	func getRegisterInfo2(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetRegisterInfo2") }
	func setRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#SetRegisterInfo") }
	func deleteRegisterInfo(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#DeleteRegisterInfo") }
	func deleteApplicationArea(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#DeleteApplicationArea") }
	func existsApplicationArea(_ _0: [UInt8]) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#ExistsApplicationArea") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initializeSystem(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalizeSystem()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try mount(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unmount(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 10:
			try flush(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 11:
			try restore(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 13:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try getRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getCommonInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getModelInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 19:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 100:
			try format(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 101:
			try getAdminInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 102:
			try getRegisterInfo2(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 103:
			try setRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 104:
			try deleteRegisterInfo(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 105:
			try deleteApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 106:
			let ret = try existsApplicationArea(im.getBytes(8, 0x8))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::ISystem: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfpDetail_ISystem_Impl: NnNfpDetail_ISystem {
	override func initializeSystem(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#InitializeSystem") }
	override func finalizeSystem() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#FinalizeSystem") }
	override func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#ListDevices") }
	override func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#StartDetection") }
	override func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#StopDetection") }
	override func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Mount") }
	override func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Unmount") }
	override func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Flush") }
	override func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Restore") }
	override func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetTagInfo") }
	override func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetRegisterInfo") }
	override func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetCommonInfo") }
	override func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetModelInfo") }
	override func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#AttachActivateEvent") }
	override func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#AttachDeactivateEvent") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetState") }
	override func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetDeviceState") }
	override func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetNpadId") }
	override func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#AttachAvailabilityChangeEvent") }
	override func format(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#Format") }
	override func getAdminInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetAdminInfo") }
	override func getRegisterInfo2(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#GetRegisterInfo2") }
	override func setRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#SetRegisterInfo") }
	override func deleteRegisterInfo(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#DeleteRegisterInfo") }
	override func deleteApplicationArea(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#DeleteApplicationArea") }
	override func existsApplicationArea(_ _0: [UInt8]) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystem#ExistsApplicationArea") }
}
*/

class NnNfpDetail_IDebugManager: IpcService {
	func createDebugInterface() throws -> NnNfpDetail_IDebug { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebugManager#CreateDebugInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createDebugInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::IDebugManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfpDetail_IDebugManager_Impl: NnNfpDetail_IDebugManager {
	override func createDebugInterface() throws -> NnNfpDetail_IDebug { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IDebugManager#CreateDebugInterface") }
}
*/

class NnNfpDetail_ISystemManager: IpcService {
	func createSystemInterface() throws -> NnNfpDetail_ISystem { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystemManager#CreateSystemInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createSystemInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::ISystemManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfpDetail_ISystemManager_Impl: NnNfpDetail_ISystemManager {
	override func createSystemInterface() throws -> NnNfpDetail_ISystem { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::ISystemManager#CreateSystemInterface") }
}
*/

class NnNfpDetail_IUserManager: IpcService {
	func createUserInterface() throws -> NnNfpDetail_IUser { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUserManager#CreateUserInterface") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createUserInterface()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nfp::detail::IUserManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfpDetail_IUserManager_Impl: NnNfpDetail_IUserManager {
	override func createUserInterface() throws -> NnNfpDetail_IUser { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUserManager#CreateUserInterface") }
}
*/

class NnNfpDetail_IUser: IpcService {
	func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Initialize") }
	func finalize() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Finalize") }
	func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#ListDevices") }
	func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#StartDetection") }
	func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#StopDetection") }
	func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Mount") }
	func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Unmount") }
	func openApplicationArea(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#OpenApplicationArea") }
	func getApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetApplicationArea") }
	func setApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#SetApplicationArea") }
	func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Flush") }
	func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Restore") }
	func createApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#CreateApplicationArea") }
	func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetTagInfo") }
	func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetRegisterInfo") }
	func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetCommonInfo") }
	func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetModelInfo") }
	func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#AttachActivateEvent") }
	func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#AttachDeactivateEvent") }
	func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetState") }
	func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetDeviceState") }
	func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetNpadId") }
	func getApplicationArea2(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetApplicationArea2") }
	func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#AttachAvailabilityChangeEvent") }
	func recreateApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#RecreateApplicationArea") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try initialize(im.getData(8) as UInt64, im.getData(16) as UInt64, im.pid, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try finalize()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listDevices(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			try startDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 4:
			try stopDetection(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 5:
			try mount(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getData(20) as UInt32)
			om.initialize(0, 0, 0)
		
		case 6:
			try unmount(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 7:
			try openApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			try setApplicationArea(im.getBytes(8, 0x8), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try flush(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 11:
			try restore(im.getBytes(8, 0x8))
			om.initialize(0, 0, 0)
		
		case 12:
			try createApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 13:
			try getTagInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			try getRegisterInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try getCommonInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try getModelInfo(im.getBytes(8, 0x8), im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try attachActivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 18:
			let ret = try attachDeactivateEvent(im.getBytes(8, 0x8))
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 19:
			let ret = try getState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20:
			let ret = try getDeviceState(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getNpadId(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			let ret = try getApplicationArea2(im.getBytes(8, 0x8))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			let ret = try attachAvailabilityChangeEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 24:
			try recreateApplicationArea(im.getBytes(8, 0x8), im.getData(16) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nfp::detail::IUser: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNfpDetail_IUser_Impl: NnNfpDetail_IUser {
	override func initialize(_ _0: UInt64, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Initialize") }
	override func finalize() throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Finalize") }
	override func listDevices(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#ListDevices") }
	override func startDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#StartDetection") }
	override func stopDetection(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#StopDetection") }
	override func mount(_ _0: [UInt8], _ _1: UInt32, _ _2: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Mount") }
	override func unmount(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Unmount") }
	override func openApplicationArea(_ _0: [UInt8], _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#OpenApplicationArea") }
	override func getApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetApplicationArea") }
	override func setApplicationArea(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#SetApplicationArea") }
	override func flush(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Flush") }
	override func restore(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#Restore") }
	override func createApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#CreateApplicationArea") }
	override func getTagInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetTagInfo") }
	override func getRegisterInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetRegisterInfo") }
	override func getCommonInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetCommonInfo") }
	override func getModelInfo(_ _0: [UInt8], _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetModelInfo") }
	override func attachActivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#AttachActivateEvent") }
	override func attachDeactivateEvent(_ _0: [UInt8]) throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#AttachDeactivateEvent") }
	override func getState() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetState") }
	override func getDeviceState(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetDeviceState") }
	override func getNpadId(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetNpadId") }
	override func getApplicationArea2(_ _0: [UInt8]) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#GetApplicationArea2") }
	override func attachAvailabilityChangeEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#AttachAvailabilityChangeEvent") }
	override func recreateApplicationArea(_ _0: [UInt8], _ _1: UInt32, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nfp::detail::nn::nfp::detail::IUser#RecreateApplicationArea") }
}
*/
