typealias NnNcm_ProgramId = UInt64
typealias NnNcm_ApplicationId = UInt64
typealias NnNcm_StorageId = UInt8
typealias NnNcm_SystemApplicationId = UInt64

class NnNcm_IContentMetaDatabase: IpcService {
	func set(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Set") }
	func get(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Get") }
	func remove(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Remove") }
	func getContentIdByType(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetContentIdByType") }
	func listContentInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#ListContentInfo") }
	func list(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#List") }
	func getLatestContentMetaKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetLatestContentMetaKey") }
	func listApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#ListApplication") }
	func has(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Has") }
	func hasAll(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#HasAll") }
	func getSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetSize") }
	func getRequiredSystemVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetRequiredSystemVersion") }
	func getPatchId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetPatchId") }
	func disableForcibly() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#DisableForcibly") }
	func lookupOrphanContent(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#LookupOrphanContent") }
	func commit() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Commit") }
	func hasContent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#HasContent") }
	func listContentMetaInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#ListContentMetaInfo") }
	func getAttributes(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetAttributes") }
	func getRequiredApplicationVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetRequiredApplicationVersion") }
	func unknown20(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Unknown20") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try set(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try get(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try remove(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getContentIdByType(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try listContentInfo(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try list(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getLatestContentMetaKey(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try listApplication(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try has(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try hasAll(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try getSize(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getRequiredSystemVersion(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getPatchId(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			try disableForcibly()
			om.initialize(0, 0, 0)
		
		case 14:
			try lookupOrphanContent(im.getBuffer(0x5, 0)! as Buffer<UInt8>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try commit()
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try hasContent(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try listContentMetaInfo(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try getAttributes(nil)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getRequiredApplicationVersion(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try unknown20(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ncm::IContentMetaDatabase: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNcm_IContentMetaDatabase_Impl: NnNcm_IContentMetaDatabase {
	override func set(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Set") }
	override func get(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Get") }
	override func remove(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Remove") }
	override func getContentIdByType(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetContentIdByType") }
	override func listContentInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#ListContentInfo") }
	override func list(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#List") }
	override func getLatestContentMetaKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetLatestContentMetaKey") }
	override func listApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#ListApplication") }
	override func has(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Has") }
	override func hasAll(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#HasAll") }
	override func getSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetSize") }
	override func getRequiredSystemVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetRequiredSystemVersion") }
	override func getPatchId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetPatchId") }
	override func disableForcibly() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#DisableForcibly") }
	override func lookupOrphanContent(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#LookupOrphanContent") }
	override func commit() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Commit") }
	override func hasContent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#HasContent") }
	override func listContentMetaInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#ListContentMetaInfo") }
	override func getAttributes(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetAttributes") }
	override func getRequiredApplicationVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#GetRequiredApplicationVersion") }
	override func unknown20(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentMetaDatabase#Unknown20") }
}
*/

class NnNcm_IContentStorage: IpcService {
	func generatePlaceHolderId() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GeneratePlaceHolderId") }
	func createPlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#CreatePlaceHolder") }
	func deletePlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#DeletePlaceHolder") }
	func hasPlaceHolder(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#HasPlaceHolder") }
	func writePlaceHolder(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#WritePlaceHolder") }
	func register(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Register") }
	func delete(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Delete") }
	func has(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Has") }
	func getPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetPath") }
	func getPlaceHolderPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetPlaceHolderPath") }
	func cleanupAllPlaceHolder() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#CleanupAllPlaceHolder") }
	func listPlaceHolder(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#ListPlaceHolder") }
	func getContentCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetContentCount") }
	func listContentId(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#ListContentId") }
	func getSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetSize") }
	func disableForcibly() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#DisableForcibly") }
	func revertToPlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#RevertToPlaceHolder") }
	func setPlaceHolderSize(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#SetPlaceHolderSize") }
	func readContentIdFile(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#ReadContentIdFile") }
	func getRightsIdFromPlaceHolderId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetRightsIdFromPlaceHolderId") }
	func getRightsIdFromContentId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetRightsIdFromContentId") }
	func writeContentForDebug(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#WriteContentForDebug") }
	func getFreeSpaceSize() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetFreeSpaceSize") }
	func getTotalSpaceSize() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetTotalSpaceSize") }
	func flushStorage() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#FlushStorage") }
	func unknown25(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Unknown25") }
	func unknown26() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Unknown26") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try generatePlaceHolderId()
			om.initialize(0, 0, 0)
		
		case 1:
			try createPlaceHolder(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try deletePlaceHolder(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try hasPlaceHolder(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			try writePlaceHolder(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try register(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			try delete(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try has(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try getPath(nil, im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try getPlaceHolderPath(nil, im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try cleanupAllPlaceHolder()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try listPlaceHolder(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getContentCount()
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try listContentId(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try getSize(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			try disableForcibly()
			om.initialize(0, 0, 0)
		
		case 16:
			try revertToPlaceHolder(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			try setPlaceHolderSize(nil)
			om.initialize(0, 0, 0)
		
		case 18:
			try readContentIdFile(nil, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getRightsIdFromPlaceHolderId(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getRightsIdFromContentId(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			try writeContentForDebug(nil, im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try getFreeSpaceSize()
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try getTotalSpaceSize()
			om.initialize(0, 0, 0)
		
		case 24:
			try flushStorage()
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try unknown25(nil)
			om.initialize(0, 0, 0)
		
		case 26:
			try unknown26()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ncm::IContentStorage: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNcm_IContentStorage_Impl: NnNcm_IContentStorage {
	override func generatePlaceHolderId() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GeneratePlaceHolderId") }
	override func createPlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#CreatePlaceHolder") }
	override func deletePlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#DeletePlaceHolder") }
	override func hasPlaceHolder(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#HasPlaceHolder") }
	override func writePlaceHolder(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#WritePlaceHolder") }
	override func register(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Register") }
	override func delete(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Delete") }
	override func has(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Has") }
	override func getPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetPath") }
	override func getPlaceHolderPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetPlaceHolderPath") }
	override func cleanupAllPlaceHolder() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#CleanupAllPlaceHolder") }
	override func listPlaceHolder(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#ListPlaceHolder") }
	override func getContentCount() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetContentCount") }
	override func listContentId(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#ListContentId") }
	override func getSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetSize") }
	override func disableForcibly() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#DisableForcibly") }
	override func revertToPlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#RevertToPlaceHolder") }
	override func setPlaceHolderSize(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#SetPlaceHolderSize") }
	override func readContentIdFile(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#ReadContentIdFile") }
	override func getRightsIdFromPlaceHolderId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetRightsIdFromPlaceHolderId") }
	override func getRightsIdFromContentId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetRightsIdFromContentId") }
	override func writeContentForDebug(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#WriteContentForDebug") }
	override func getFreeSpaceSize() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetFreeSpaceSize") }
	override func getTotalSpaceSize() throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#GetTotalSpaceSize") }
	override func flushStorage() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#FlushStorage") }
	override func unknown25(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Unknown25") }
	override func unknown26() throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentStorage#Unknown26") }
}
*/

class NnNcm_IContentManager: IpcService {
	func createContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CreateContentStorage") }
	func createContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CreateContentMetaDatabase") }
	func verifyContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#VerifyContentStorage") }
	func verifyContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#VerifyContentMetaDatabase") }
	func openContentStorage(_ _0: Any?) throws -> NnNcm_IContentStorage { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentStorage") }
	func openContentMetaDatabase(_ _0: Any?) throws -> NnNcm_IContentMetaDatabase { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentMetaDatabase") }
	func closeContentStorageForcibly(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentStorageForcibly") }
	func closeContentMetaDatabaseForcibly(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentMetaDatabaseForcibly") }
	func cleanupContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CleanupContentMetaDatabase") }
	func openContentStorage2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentStorage2") }
	func closeContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentStorage") }
	func openContentMetaDatabase2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentMetaDatabase2") }
	func closeContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentMetaDatabase") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try createContentStorage(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try createContentMetaDatabase(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			try verifyContentStorage(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			try verifyContentMetaDatabase(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try openContentStorage(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 5:
			let ret = try openContentMetaDatabase(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 6:
			try closeContentStorageForcibly(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			try closeContentMetaDatabaseForcibly(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			try cleanupContentMetaDatabase(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			try openContentStorage2(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			try closeContentStorage(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			try openContentMetaDatabase2(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			try closeContentMetaDatabase(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::ncm::IContentManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNcm_IContentManager_Impl: NnNcm_IContentManager {
	override func createContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CreateContentStorage") }
	override func createContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CreateContentMetaDatabase") }
	override func verifyContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#VerifyContentStorage") }
	override func verifyContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#VerifyContentMetaDatabase") }
	override func openContentStorage(_ _0: Any?) throws -> NnNcm_IContentStorage { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentStorage") }
	override func openContentMetaDatabase(_ _0: Any?) throws -> NnNcm_IContentMetaDatabase { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentMetaDatabase") }
	override func closeContentStorageForcibly(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentStorageForcibly") }
	override func closeContentMetaDatabaseForcibly(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentMetaDatabaseForcibly") }
	override func cleanupContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CleanupContentMetaDatabase") }
	override func openContentStorage2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentStorage2") }
	override func closeContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentStorage") }
	override func openContentMetaDatabase2(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#OpenContentMetaDatabase2") }
	override func closeContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::ncm::nn::ncm::IContentManager#CloseContentMetaDatabase") }
}
*/
