typealias NnNcm_ProgramId = UInt64
typealias NnNcm_ApplicationId = UInt64
typealias NnNcm_StorageId = UInt8
typealias NnNcm_SystemApplicationId = UInt64

class NnNcm_IContentMetaDatabase: IpcService {
	func set(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func get(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func remove(_ _0: Any?) throws { throw IpcError.unimplemented }
	func getContentIdByType(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func listContentInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func list(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getLatestContentMetaKey(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func listApplication(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func has(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func hasAll(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getRequiredSystemVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getPatchId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func disableForcibly() throws { throw IpcError.unimplemented }
	func lookupOrphanContent(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func commit() throws { throw IpcError.unimplemented }
	func hasContent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func listContentMetaInfo(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getAttributes(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getRequiredApplicationVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown20(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try set(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try get(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try remove(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getContentIdByType(nil)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try listContentInfo(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			let ret = try list(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try getLatestContentMetaKey(nil)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try listApplication(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try has(nil)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try hasAll(im.getBuffer(0x5, 0) as Buffer<UInt8>)
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
			try lookupOrphanContent(im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			try commit()
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try hasContent(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try listContentMetaInfo(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
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

class NnNcm_IContentStorage: IpcService {
	func generatePlaceHolderId() throws -> Any? { throw IpcError.unimplemented }
	func createPlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented }
	func deletePlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented }
	func hasPlaceHolder(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func writePlaceHolder(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func register(_ _0: Any?) throws { throw IpcError.unimplemented }
	func delete(_ _0: Any?) throws { throw IpcError.unimplemented }
	func has(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getPlaceHolderPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func cleanupAllPlaceHolder() throws { throw IpcError.unimplemented }
	func listPlaceHolder(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getContentCount() throws -> Any? { throw IpcError.unimplemented }
	func listContentId(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func getSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func disableForcibly() throws { throw IpcError.unimplemented }
	func revertToPlaceHolder(_ _0: Any?) throws { throw IpcError.unimplemented }
	func setPlaceHolderSize(_ _0: Any?) throws { throw IpcError.unimplemented }
	func readContentIdFile(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getRightsIdFromPlaceHolderId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getRightsIdFromContentId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func writeContentForDebug(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getFreeSpaceSize() throws -> Any? { throw IpcError.unimplemented }
	func getTotalSpaceSize() throws -> Any? { throw IpcError.unimplemented }
	func flushStorage() throws { throw IpcError.unimplemented }
	func unknown25(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown26() throws { throw IpcError.unimplemented }
	
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
			try writePlaceHolder(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
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
			try getPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			try getPlaceHolderPath(nil, im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			try cleanupAllPlaceHolder()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try listPlaceHolder(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getContentCount()
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try listContentId(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
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
			try readContentIdFile(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getRightsIdFromPlaceHolderId(nil)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try getRightsIdFromContentId(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			try writeContentForDebug(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
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

class NnNcm_IContentManager: IpcService {
	func createContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented }
	func createContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented }
	func verifyContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented }
	func verifyContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented }
	func openContentStorage(_ _0: Any?) throws -> NnNcm_IContentStorage { throw IpcError.unimplemented }
	func openContentMetaDatabase(_ _0: Any?) throws -> NnNcm_IContentMetaDatabase { throw IpcError.unimplemented }
	func closeContentStorageForcibly(_ _0: Any?) throws { throw IpcError.unimplemented }
	func closeContentMetaDatabaseForcibly(_ _0: Any?) throws { throw IpcError.unimplemented }
	func cleanupContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented }
	func openContentStorage2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func closeContentStorage(_ _0: Any?) throws { throw IpcError.unimplemented }
	func openContentMetaDatabase2(_ _0: Any?) throws { throw IpcError.unimplemented }
	func closeContentMetaDatabase(_ _0: Any?) throws { throw IpcError.unimplemented }
	
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
