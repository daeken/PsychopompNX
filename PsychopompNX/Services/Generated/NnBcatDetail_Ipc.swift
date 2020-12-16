class NnBcatDetailIpc_IServiceCreator: IpcService {
	func createBcatService(_ _0: UInt64, _ _1: Pid) throws -> NnBcatDetailIpc_IBcatService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IServiceCreator#CreateBcatService") }
	func createDeliveryCacheStorageService(_ _0: UInt64, _ _1: Pid) throws -> NnBcatDetailIpc_IDeliveryCacheStorageService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IServiceCreator#CreateDeliveryCacheStorageService") }
	func createDeliveryCacheStorageServiceWithApplicationId(_ _0: Nn_ApplicationId) throws -> NnBcatDetailIpc_IDeliveryCacheStorageService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IServiceCreator#CreateDeliveryCacheStorageServiceWithApplicationId") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createBcatService(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try createDeliveryCacheStorageService(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 2:
			let ret = try createDeliveryCacheStorageServiceWithApplicationId(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::bcat::detail::ipc::IServiceCreator: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBcatDetailIpc_IServiceCreator_Impl: NnBcatDetailIpc_IServiceCreator {
	override func createBcatService(_ _0: UInt64, _ _1: Pid) throws -> NnBcatDetailIpc_IBcatService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IServiceCreator#CreateBcatService") }
	override func createDeliveryCacheStorageService(_ _0: UInt64, _ _1: Pid) throws -> NnBcatDetailIpc_IDeliveryCacheStorageService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IServiceCreator#CreateDeliveryCacheStorageService") }
	override func createDeliveryCacheStorageServiceWithApplicationId(_ _0: Nn_ApplicationId) throws -> NnBcatDetailIpc_IDeliveryCacheStorageService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IServiceCreator#CreateDeliveryCacheStorageServiceWithApplicationId") }
}
*/

class NnBcatDetailIpc_IDeliveryCacheProgressService: IpcService {
	func getEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheProgressService#GetEvent") }
	func getImpl(_ _0: Buffer<NnBcatDetail_DeliveryCacheProgressImpl>) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheProgressService#GetImpl") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getEvent()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 1:
			try getImpl(im.getBuffer(0x1a, 0)! as Buffer<NnBcatDetail_DeliveryCacheProgressImpl>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::bcat::detail::ipc::IDeliveryCacheProgressService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBcatDetailIpc_IDeliveryCacheProgressService_Impl: NnBcatDetailIpc_IDeliveryCacheProgressService {
	override func getEvent() throws -> KObject { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheProgressService#GetEvent") }
	override func getImpl(_ _0: Buffer<NnBcatDetail_DeliveryCacheProgressImpl>) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheProgressService#GetImpl") }
}
*/

class NnBcatDetailIpc_IDeliveryCacheFileService: IpcService {
	func open(_ _0: NnBcat_DirectoryName, _ _1: NnBcat_FileName) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#Open") }
	func read(_ _0: UInt64, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#Read") }
	func getSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#GetSize") }
	func getDigest() throws -> NnBcat_Digest { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#GetDigest") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try open(im.getBytes(8, 0x20), im.getBytes(40, 0x20))
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try read(im.getData(8) as UInt64, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			let ret = try getSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 3:
			let ret = try getDigest()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::bcat::detail::ipc::IDeliveryCacheFileService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBcatDetailIpc_IDeliveryCacheFileService_Impl: NnBcatDetailIpc_IDeliveryCacheFileService {
	override func open(_ _0: NnBcat_DirectoryName, _ _1: NnBcat_FileName) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#Open") }
	override func read(_ _0: UInt64, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#Read") }
	override func getSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#GetSize") }
	override func getDigest() throws -> NnBcat_Digest { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheFileService#GetDigest") }
}
*/

class NnBcatDetailIpc_IDeliveryCacheDirectoryService: IpcService {
	func open(_ _0: NnBcat_DirectoryName) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheDirectoryService#Open") }
	func read(_ _0: Buffer<NnBcat_DeliveryCacheDirectoryEntry>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheDirectoryService#Read") }
	func getCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheDirectoryService#GetCount") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try open(im.getBytes(8, 0x20))
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try read(im.getBuffer(0x6, 0)! as Buffer<NnBcat_DeliveryCacheDirectoryEntry>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::bcat::detail::ipc::IDeliveryCacheDirectoryService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBcatDetailIpc_IDeliveryCacheDirectoryService_Impl: NnBcatDetailIpc_IDeliveryCacheDirectoryService {
	override func open(_ _0: NnBcat_DirectoryName) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheDirectoryService#Open") }
	override func read(_ _0: Buffer<NnBcat_DeliveryCacheDirectoryEntry>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheDirectoryService#Read") }
	override func getCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheDirectoryService#GetCount") }
}
*/

class NnBcatDetailIpc_IBcatService: IpcService {
	func requestSyncDeliveryCache() throws -> NnBcatDetailIpc_IDeliveryCacheProgressService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCache") }
	func requestSyncDeliveryCacheWithDirectoryName(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCacheWithDirectoryName") }
	func cancelSyncDeliveryCacheRequest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#CancelSyncDeliveryCacheRequest") }
	func requestSyncDeliveryCacheWithApplicationId(_ _0: UInt32, _ _1: Nn_ApplicationId) throws -> NnBcatDetailIpc_IDeliveryCacheProgressService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCacheWithApplicationId") }
	func requestSyncDeliveryCacheWithApplicationIdAndDirectoryName(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCacheWithApplicationIdAndDirectoryName") }
	func setPassphrase(_ _0: Nn_ApplicationId, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#SetPassphrase") }
	func registerBackgroundDeliveryTask(_ _0: UInt32, _ _1: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RegisterBackgroundDeliveryTask") }
	func unregisterBackgroundDeliveryTask(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#UnregisterBackgroundDeliveryTask") }
	func blockDeliveryTask(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#BlockDeliveryTask") }
	func unblockDeliveryTask(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#UnblockDeliveryTask") }
	func enumerateBackgroundDeliveryTask(_ _0: Buffer<NnBcat_TaskInfo>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#EnumerateBackgroundDeliveryTask") }
	func getDeliveryList(_ _0: Nn_ApplicationId, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#GetDeliveryList") }
	func clearDeliveryCacheStorage(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#ClearDeliveryCacheStorage") }
	func getPushNotificationLog(_ _0: Buffer<NnBcat_PushNotificationLog>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#GetPushNotificationLog") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10100:
			let ret = try requestSyncDeliveryCache()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10101:
			let ret = try requestSyncDeliveryCacheWithDirectoryName(nil)
			om.initialize(0, 0, 0)
		
		case 10200:
			let ret = try cancelSyncDeliveryCacheRequest(nil)
			om.initialize(0, 0, 0)
		
		case 20100:
			let ret = try requestSyncDeliveryCacheWithApplicationId(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 20101:
			let ret = try requestSyncDeliveryCacheWithApplicationIdAndDirectoryName(nil)
			om.initialize(0, 0, 0)
		
		case 30100:
			try setPassphrase(im.getData(8) as UInt64, im.getBuffer(0x9, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 30200:
			try registerBackgroundDeliveryTask(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 30201:
			try unregisterBackgroundDeliveryTask(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 30202:
			try blockDeliveryTask(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 30203:
			try unblockDeliveryTask(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 90100:
			let ret = try enumerateBackgroundDeliveryTask(im.getBuffer(0x6, 0)! as Buffer<NnBcat_TaskInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 90200:
			let ret = try getDeliveryList(im.getData(8) as UInt64, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 90201:
			try clearDeliveryCacheStorage(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 90300:
			let ret = try getPushNotificationLog(im.getBuffer(0x6, 0)! as Buffer<NnBcat_PushNotificationLog>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::bcat::detail::ipc::IBcatService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBcatDetailIpc_IBcatService_Impl: NnBcatDetailIpc_IBcatService {
	override func requestSyncDeliveryCache() throws -> NnBcatDetailIpc_IDeliveryCacheProgressService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCache") }
	override func requestSyncDeliveryCacheWithDirectoryName(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCacheWithDirectoryName") }
	override func cancelSyncDeliveryCacheRequest(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#CancelSyncDeliveryCacheRequest") }
	override func requestSyncDeliveryCacheWithApplicationId(_ _0: UInt32, _ _1: Nn_ApplicationId) throws -> NnBcatDetailIpc_IDeliveryCacheProgressService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCacheWithApplicationId") }
	override func requestSyncDeliveryCacheWithApplicationIdAndDirectoryName(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RequestSyncDeliveryCacheWithApplicationIdAndDirectoryName") }
	override func setPassphrase(_ _0: Nn_ApplicationId, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#SetPassphrase") }
	override func registerBackgroundDeliveryTask(_ _0: UInt32, _ _1: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#RegisterBackgroundDeliveryTask") }
	override func unregisterBackgroundDeliveryTask(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#UnregisterBackgroundDeliveryTask") }
	override func blockDeliveryTask(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#BlockDeliveryTask") }
	override func unblockDeliveryTask(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#UnblockDeliveryTask") }
	override func enumerateBackgroundDeliveryTask(_ _0: Buffer<NnBcat_TaskInfo>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#EnumerateBackgroundDeliveryTask") }
	override func getDeliveryList(_ _0: Nn_ApplicationId, _ _1: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#GetDeliveryList") }
	override func clearDeliveryCacheStorage(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#ClearDeliveryCacheStorage") }
	override func getPushNotificationLog(_ _0: Buffer<NnBcat_PushNotificationLog>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IBcatService#GetPushNotificationLog") }
}
*/

class NnBcatDetailIpc_IDeliveryCacheStorageService: IpcService {
	func createFileService() throws -> NnBcatDetailIpc_IDeliveryCacheFileService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheStorageService#CreateFileService") }
	func createDirectoryService() throws -> NnBcatDetailIpc_IDeliveryCacheDirectoryService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheStorageService#CreateDirectoryService") }
	func enumerateDeliveryCacheDirectory(_ _0: Buffer<NnBcat_DirectoryName>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheStorageService#EnumerateDeliveryCacheDirectory") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createFileService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try createDirectoryService()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try enumerateDeliveryCacheDirectory(im.getBuffer(0x6, 0)! as Buffer<NnBcat_DirectoryName>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::bcat::detail::ipc::IDeliveryCacheStorageService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnBcatDetailIpc_IDeliveryCacheStorageService_Impl: NnBcatDetailIpc_IDeliveryCacheStorageService {
	override func createFileService() throws -> NnBcatDetailIpc_IDeliveryCacheFileService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheStorageService#CreateFileService") }
	override func createDirectoryService() throws -> NnBcatDetailIpc_IDeliveryCacheDirectoryService { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheStorageService#CreateDirectoryService") }
	override func enumerateDeliveryCacheDirectory(_ _0: Buffer<NnBcat_DirectoryName>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::bcat::detail::ipc::nn::bcat::detail::ipc::IDeliveryCacheStorageService#EnumerateDeliveryCacheDirectory") }
}
*/
