class NnMigrationUser_IAsyncContext: IpcService {
	func getSystemEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func cancel(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func hasDone(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSystemEvent(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try cancel(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try hasDone(nil)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getResult(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::migration::user::IAsyncContext: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnMigrationUser_IService: IpcService {
	func tryGetLastMigrationInfo() throws -> Any? { throw IpcError.unimplemented }
	func createServer(_ _0: Any?, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnMigrationUser_IServer { throw IpcError.unimplemented }
	func resumeServer(_ _0: Any?, _ _1: KObject) throws -> NnMigrationUser_IServer { throw IpcError.unimplemented }
	func createClient(_ _0: Any?, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnMigrationUser_IClient { throw IpcError.unimplemented }
	func resumeClient(_ _0: Any?, _ _1: KObject) throws -> NnMigrationUser_IClient { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10:
			let ret = try tryGetLastMigrationInfo()
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try createServer(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try resumeServer(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 200:
			let ret = try createClient(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 201:
			let ret = try resumeClient(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::migration::user::IService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnMigrationUser_IClient: IpcService {
	func getClientProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func createLoginSession() throws -> Any? { throw IpcError.unimplemented }
	func getNetworkServiceAccountId() throws -> Any? { throw IpcError.unimplemented }
	func getUserNickname() throws -> Any? { throw IpcError.unimplemented }
	func getUserProfileImage(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func prepareAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func getConnectionRequirement() throws -> Any? { throw IpcError.unimplemented }
	func scanServersAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func listServers(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func connectByServerIdAsync(_ _0: Any?) throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func getStorageShortfall() throws -> Any? { throw IpcError.unimplemented }
	func getTotalTransferInfo() throws -> Any? { throw IpcError.unimplemented }
	func getImmigrantUid() throws -> Any? { throw IpcError.unimplemented }
	func getCurrentTransferInfo() throws -> Any? { throw IpcError.unimplemented }
	func getCurrentRelatedApplications(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func transferNextAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func suspendAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func completeAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func abort() throws { throw IpcError.unimplemented }
	func debugSynchronizeStateInFinalizationAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try getClientProfile(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try createLoginSession()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getNetworkServiceAccountId()
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getUserNickname()
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try getUserProfileImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try prepareAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try getConnectionRequirement()
			om.initialize(0, 0, 0)
		
		case 200:
			let ret = try scanServersAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 201:
			let ret = try listServers(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 210:
			let ret = try connectByServerIdAsync(nil)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 300:
			let ret = try getStorageShortfall()
			om.initialize(0, 0, 0)
		
		case 301:
			let ret = try getTotalTransferInfo()
			om.initialize(0, 0, 0)
		
		case 302:
			let ret = try getImmigrantUid()
			om.initialize(0, 0, 0)
		
		case 310:
			let ret = try getCurrentTransferInfo()
			om.initialize(0, 0, 0)
		
		case 311:
			let ret = try getCurrentRelatedApplications(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 320:
			let ret = try transferNextAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 350:
			let ret = try suspendAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 400:
			let ret = try completeAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 500:
			try abort()
			om.initialize(0, 0, 0)
		
		case 999:
			let ret = try debugSynchronizeStateInFinalizationAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::migration::user::IClient: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnMigrationUser_IServer: IpcService {
	func getUid() throws -> Any? { throw IpcError.unimplemented }
	func getServerProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func prepareAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func getConnectionRequirement() throws -> Any? { throw IpcError.unimplemented }
	func waitConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func getClientProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func acceptConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func declineConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func processTransferAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func completeAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented }
	func abort() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getUid()
			om.initialize(0, 0, 0)
		
		case 1:
			try getServerProfile(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try prepareAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try getConnectionRequirement()
			om.initialize(0, 0, 0)
		
		case 200:
			let ret = try waitConnectionAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 201:
			try getClientProfile(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 202:
			let ret = try acceptConnectionAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 203:
			let ret = try declineConnectionAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 300:
			let ret = try processTransferAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 400:
			let ret = try completeAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 500:
			try abort()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::migration::user::IServer: \(im.commandId)")
			try! bailout()
		}
	}
}
