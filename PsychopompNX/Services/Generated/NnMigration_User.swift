class NnMigrationUser_IAsyncContext: IpcService {
	func getSystemEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#GetSystemEvent") }
	func cancel(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#Cancel") }
	func hasDone(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#HasDone") }
	func getResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#GetResult") }
	
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

/*
class NnMigrationUser_IAsyncContext_Impl: NnMigrationUser_IAsyncContext {
	override func getSystemEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#GetSystemEvent") }
	override func cancel(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#Cancel") }
	override func hasDone(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#HasDone") }
	override func getResult(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IAsyncContext#GetResult") }
}
*/

class NnMigrationUser_IService: IpcService {
	func tryGetLastMigrationInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#TryGetLastMigrationInfo") }
	func createServer(_ _0: Any?, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnMigrationUser_IServer { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#CreateServer") }
	func resumeServer(_ _0: Any?, _ _1: KObject) throws -> NnMigrationUser_IServer { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#ResumeServer") }
	func createClient(_ _0: Any?, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnMigrationUser_IClient { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#CreateClient") }
	func resumeClient(_ _0: Any?, _ _1: KObject) throws -> NnMigrationUser_IClient { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#ResumeClient") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10:
			let ret = try tryGetLastMigrationInfo()
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try createServer(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try resumeServer(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 200:
			let ret = try createClient(nil, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0)! as Buffer<UInt8>)
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

/*
class NnMigrationUser_IService_Impl: NnMigrationUser_IService {
	override func tryGetLastMigrationInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#TryGetLastMigrationInfo") }
	override func createServer(_ _0: Any?, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnMigrationUser_IServer { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#CreateServer") }
	override func resumeServer(_ _0: Any?, _ _1: KObject) throws -> NnMigrationUser_IServer { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#ResumeServer") }
	override func createClient(_ _0: Any?, _ _1: KObject, _ _2: Buffer<UInt8>) throws -> NnMigrationUser_IClient { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#CreateClient") }
	override func resumeClient(_ _0: Any?, _ _1: KObject) throws -> NnMigrationUser_IClient { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IService#ResumeClient") }
}
*/

class NnMigrationUser_IClient: IpcService {
	func getClientProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetClientProfile") }
	func createLoginSession() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#CreateLoginSession") }
	func getNetworkServiceAccountId() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetNetworkServiceAccountId") }
	func getUserNickname() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetUserNickname") }
	func getUserProfileImage(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetUserProfileImage") }
	func prepareAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#PrepareAsync") }
	func getConnectionRequirement() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetConnectionRequirement") }
	func scanServersAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#ScanServersAsync") }
	func listServers(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#ListServers") }
	func connectByServerIdAsync(_ _0: Any?) throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#ConnectByServerIdAsync") }
	func getStorageShortfall() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetStorageShortfall") }
	func getTotalTransferInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetTotalTransferInfo") }
	func getImmigrantUid() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetImmigrantUid") }
	func getCurrentTransferInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetCurrentTransferInfo") }
	func getCurrentRelatedApplications(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetCurrentRelatedApplications") }
	func transferNextAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#TransferNextAsync") }
	func suspendAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#SuspendAsync") }
	func completeAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#CompleteAsync") }
	func abort() throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#Abort") }
	func debugSynchronizeStateInFinalizationAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#DebugSynchronizeStateInFinalizationAsync") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try getClientProfile(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
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
			let ret = try getUserProfileImage(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
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
			let ret = try listServers(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
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
			let ret = try getCurrentRelatedApplications(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
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

/*
class NnMigrationUser_IClient_Impl: NnMigrationUser_IClient {
	override func getClientProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetClientProfile") }
	override func createLoginSession() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#CreateLoginSession") }
	override func getNetworkServiceAccountId() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetNetworkServiceAccountId") }
	override func getUserNickname() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetUserNickname") }
	override func getUserProfileImage(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetUserProfileImage") }
	override func prepareAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#PrepareAsync") }
	override func getConnectionRequirement() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetConnectionRequirement") }
	override func scanServersAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#ScanServersAsync") }
	override func listServers(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#ListServers") }
	override func connectByServerIdAsync(_ _0: Any?) throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#ConnectByServerIdAsync") }
	override func getStorageShortfall() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetStorageShortfall") }
	override func getTotalTransferInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetTotalTransferInfo") }
	override func getImmigrantUid() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetImmigrantUid") }
	override func getCurrentTransferInfo() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetCurrentTransferInfo") }
	override func getCurrentRelatedApplications(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#GetCurrentRelatedApplications") }
	override func transferNextAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#TransferNextAsync") }
	override func suspendAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#SuspendAsync") }
	override func completeAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#CompleteAsync") }
	override func abort() throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#Abort") }
	override func debugSynchronizeStateInFinalizationAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IClient#DebugSynchronizeStateInFinalizationAsync") }
}
*/

class NnMigrationUser_IServer: IpcService {
	func getUid() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetUid") }
	func getServerProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetServerProfile") }
	func prepareAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#PrepareAsync") }
	func getConnectionRequirement() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetConnectionRequirement") }
	func waitConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#WaitConnectionAsync") }
	func getClientProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetClientProfile") }
	func acceptConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#AcceptConnectionAsync") }
	func declineConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#DeclineConnectionAsync") }
	func processTransferAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#ProcessTransferAsync") }
	func completeAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#CompleteAsync") }
	func abort() throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#Abort") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getUid()
			om.initialize(0, 0, 0)
		
		case 1:
			try getServerProfile(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
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
			try getClientProfile(im.getBuffer(0x1a, 0)! as Buffer<UInt8>)
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

/*
class NnMigrationUser_IServer_Impl: NnMigrationUser_IServer {
	override func getUid() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetUid") }
	override func getServerProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetServerProfile") }
	override func prepareAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#PrepareAsync") }
	override func getConnectionRequirement() throws -> Any? { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetConnectionRequirement") }
	override func waitConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#WaitConnectionAsync") }
	override func getClientProfile(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#GetClientProfile") }
	override func acceptConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#AcceptConnectionAsync") }
	override func declineConnectionAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#DeclineConnectionAsync") }
	override func processTransferAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#ProcessTransferAsync") }
	override func completeAsync() throws -> NnMigrationDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#CompleteAsync") }
	override func abort() throws { throw IpcError.unimplemented(name: "nn::migration::user::nn::migration::user::IServer#Abort") }
}
*/
