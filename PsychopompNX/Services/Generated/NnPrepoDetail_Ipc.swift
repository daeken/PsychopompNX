class NnPrepoDetailIpc_IPrepoService: IpcService {
	func saveReport(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveReport") }
	func saveReportWithUser(_ _0: NnAccount_Uid, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveReportWithUser") }
	func requestImmediateTransmission() throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#RequestImmediateTransmission") }
	func getTransmissionStatus() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetTransmissionStatus") }
	func saveSystemReport(_ _0: Nn_ApplicationId, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveSystemReport") }
	func saveSystemReportWithUser(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveSystemReportWithUser") }
	func setOperationMode(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SetOperationMode") }
	func clearStorage() throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#ClearStorage") }
	func isUserAgreementCheckEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#IsUserAgreementCheckEnabled") }
	func setUserAgreementCheckEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SetUserAgreementCheckEnabled") }
	func getStorageUsage() throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetStorageUsage") }
	func getStatistics(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetStatistics") }
	func getThroughputHistory(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetThroughputHistory") }
	func getLastUploadError(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetLastUploadError") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10100:
			try saveReport(im.getData(8) as UInt64, im.pid, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10101:
			try saveReportWithUser(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.pid, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10200:
			try requestImmediateTransmission()
			om.initialize(0, 0, 0)
		
		case 10300:
			let ret = try getTransmissionStatus()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 20100:
			try saveSystemReport(im.getData(8) as UInt64, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20101:
			try saveSystemReportWithUser(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.getBuffer(0x9, 0) as Buffer<UInt8>, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20200:
			try setOperationMode(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 30100:
			try clearStorage()
			om.initialize(0, 0, 0)
		
		case 40100:
			let ret = try isUserAgreementCheckEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 40101:
			try setUserAgreementCheckEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 90100:
			let (_0, _1) = try getStorageUsage()
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 90200:
			let ret = try getStatistics(nil)
			om.initialize(0, 0, 0)
		
		case 90201:
			let ret = try getThroughputHistory(nil)
			om.initialize(0, 0, 0)
		
		case 90300:
			let ret = try getLastUploadError(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::prepo::detail::ipc::IPrepoService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnPrepoDetailIpc_IPrepoService_Impl: NnPrepoDetailIpc_IPrepoService {
	override func saveReport(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveReport") }
	override func saveReportWithUser(_ _0: NnAccount_Uid, _ _1: UInt64, _ _2: Pid, _ _3: Buffer<UInt8>, _ _4: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveReportWithUser") }
	override func requestImmediateTransmission() throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#RequestImmediateTransmission") }
	override func getTransmissionStatus() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetTransmissionStatus") }
	override func saveSystemReport(_ _0: Nn_ApplicationId, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveSystemReport") }
	override func saveSystemReportWithUser(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SaveSystemReportWithUser") }
	override func setOperationMode(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SetOperationMode") }
	override func clearStorage() throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#ClearStorage") }
	override func isUserAgreementCheckEnabled() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#IsUserAgreementCheckEnabled") }
	override func setUserAgreementCheckEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#SetUserAgreementCheckEnabled") }
	override func getStorageUsage() throws -> (UInt64, UInt64) { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetStorageUsage") }
	override func getStatistics(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetStatistics") }
	override func getThroughputHistory(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetThroughputHistory") }
	override func getLastUploadError(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::prepo::detail::ipc::nn::prepo::detail::ipc::IPrepoService#GetLastUploadError") }
}
*/
