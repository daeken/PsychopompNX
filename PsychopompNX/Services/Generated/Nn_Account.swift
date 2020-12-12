typealias NnAccount_ProfileDigest = [UInt8]
typealias NnAccount_NetworkServiceAccountId = UInt64
typealias NnAccount_Uid = [UInt8]
typealias NnAccount_SystemProgramIdentification = [UInt8]
typealias NnAccount_RequestUrl = [UInt8]
typealias NnAccount_NintendoAccountId = UInt64
typealias NnAccount_CallbackUri = [UInt8]
typealias NnAccount_NintendoAccountAuthorizationRequestParameters = [UInt8]
typealias NnAccount_Nickname = [UInt8]

class NnAccount_IAccountServiceForAdministrator: IpcService {
	func getUserCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetUserCount") }
	func getUserExistence(_ _0: NnAccount_Uid) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetUserExistence") }
	func listAllUsers(_ _0: Buffer<NnAccount_Uid>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ListAllUsers") }
	func listOpenUsers(_ _0: Buffer<NnAccount_Uid>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ListOpenUsers") }
	func getLastOpenedUser() throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetLastOpenedUser") }
	func getProfile(_ _0: NnAccount_Uid) throws -> NnAccountProfile_IProfile { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetProfile") }
	func getProfileDigest(_ _0: NnAccount_Uid) throws -> NnAccount_ProfileDigest { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetProfileDigest") }
	func isUserRegistrationRequestPermitted(_ _0: UInt64, _ _1: Pid) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#IsUserRegistrationRequestPermitted") }
	func trySelectUserWithoutInteraction(_ _0: UInt8) throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#TrySelectUserWithoutInteraction") }
	func listOpenContextStoredUsers(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ListOpenContextStoredUsers") }
	func getUserRegistrationNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetUserRegistrationNotifier") }
	func getUserStateChangeNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetUserStateChangeNotifier") }
	func getBaasAccountManagerForSystemService(_ _0: NnAccount_Uid) throws -> NnAccountBaas_IManagerForSystemService { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetBaasAccountManagerForSystemService") }
	func getBaasUserAvailabilityChangeNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetBaasUserAvailabilityChangeNotifier") }
	func getProfileUpdateNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetProfileUpdateNotifier") }
	func checkNetworkServiceAvailabilityAsync(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#CheckNetworkServiceAvailabilityAsync") }
	func storeSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#StoreSaveDataThumbnail") }
	func clearSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ClearSaveDataThumbnail") }
	func loadSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId, _ _2: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#LoadSaveDataThumbnail") }
	func getSaveDataThumbnailExistence(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetSaveDataThumbnailExistence") }
	func getUserLastOpenedApplication(_ _0: NnAccount_Uid) throws -> (UInt32, Nn_ApplicationId) { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetUserLastOpenedApplication") }
	func activateOpenContextHolder(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ActivateOpenContextHolder") }
	func beginUserRegistration() throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#BeginUserRegistration") }
	func completeUserRegistration(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#CompleteUserRegistration") }
	func cancelUserRegistration(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#CancelUserRegistration") }
	func deleteUser(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#DeleteUser") }
	func setUserPosition(_ _0: UInt32, _ _1: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#SetUserPosition") }
	func getProfileEditor(_ _0: NnAccount_Uid) throws -> NnAccountProfile_IProfileEditor { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetProfileEditor") }
	func completeUserRegistrationForcibly(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#CompleteUserRegistrationForcibly") }
	func createFloatingRegistrationRequest(_ _0: UInt32, _ _1: KObject) throws -> NnAccountBaas_IFloatingRegistrationRequest { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#CreateFloatingRegistrationRequest") }
	func authenticateServiceAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#AuthenticateServiceAsync") }
	func getBaasAccountAdministrator(_ _0: NnAccount_Uid) throws -> NnAccountBaas_IAdministrator { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#GetBaasAccountAdministrator") }
	func proxyProcedureForGuestLoginWithNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountNas_IOAuthProcedureForExternalNsa { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ProxyProcedureForGuestLoginWithNintendoAccount") }
	func proxyProcedureForFloatingRegistrationWithNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountNas_IOAuthProcedureForExternalNsa { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#ProxyProcedureForFloatingRegistrationWithNintendoAccount") }
	func suspendBackgroundDaemon() throws -> NnAccountDetail_ISessionObject { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#SuspendBackgroundDaemon") }
	func debugInvalidateTokenCacheForUser(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#DebugInvalidateTokenCacheForUser") }
	func debugSetUserStateClose(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#DebugSetUserStateClose") }
	func debugSetUserStateOpen(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForAdministrator#DebugSetUserStateOpen") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getUserCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let ret = try getUserExistence(im.getBytes(8, 0x10))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 2:
			try listAllUsers(im.getBuffer(0xa, 0) as Buffer<NnAccount_Uid>)
			om.initialize(0, 0, 0)
		
		case 3:
			try listOpenUsers(im.getBuffer(0xa, 0) as Buffer<NnAccount_Uid>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getLastOpenedUser()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getProfile(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 6:
			let ret = try getProfileDigest(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 50:
			let ret = try isUserRegistrationRequestPermitted(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 51:
			let ret = try trySelectUserWithoutInteraction(im.getData(8) as UInt8)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 60:
			let ret = try listOpenContextStoredUsers(nil)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try getUserRegistrationNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try getUserStateChangeNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 102:
			let ret = try getBaasAccountManagerForSystemService(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 103:
			let ret = try getBaasUserAvailabilityChangeNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 104:
			let ret = try getProfileUpdateNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 105:
			let ret = try checkNetworkServiceAvailabilityAsync(im.getData(8) as UInt64, im.pid, im.getBuffer(0x19, 0) as Buffer<NnAccount_SystemProgramIdentification>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 110:
			try storeSaveDataThumbnail(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 111:
			try clearSaveDataThumbnail(im.getBytes(8, 0x10), im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 112:
			let ret = try loadSaveDataThumbnail(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 113:
			let ret = try getSaveDataThumbnailExistence(nil)
			om.initialize(0, 0, 0)
		
		case 190:
			let (_0, _1) = try getUserLastOpenedApplication(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 191:
			let ret = try activateOpenContextHolder(nil)
			om.initialize(0, 0, 0)
		
		case 200:
			let ret = try beginUserRegistration()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 201:
			try completeUserRegistration(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 202:
			try cancelUserRegistration(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 203:
			try deleteUser(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 204:
			try setUserPosition(im.getData(8) as UInt32, im.getBytes(12, 0x10))
			om.initialize(0, 0, 0)
		
		case 205:
			let ret = try getProfileEditor(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 206:
			try completeUserRegistrationForcibly(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 210:
			let ret = try createFloatingRegistrationRequest(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 230:
			let ret = try authenticateServiceAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 250:
			let ret = try getBaasAccountAdministrator(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 290:
			let ret = try proxyProcedureForGuestLoginWithNintendoAccount(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 291:
			let ret = try proxyProcedureForFloatingRegistrationWithNintendoAccount(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 299:
			let ret = try suspendBackgroundDaemon()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 997:
			try debugInvalidateTokenCacheForUser(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 998:
			try debugSetUserStateClose(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 999:
			try debugSetUserStateOpen(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::IAccountServiceForAdministrator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAccount_IBaasAccessTokenAccessor: IpcService {
	func ensureCacheAsync(_ _0: NnAccount_Uid) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IBaasAccessTokenAccessor#EnsureCacheAsync") }
	func loadCache(_ _0: NnAccount_Uid, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nn::account::IBaasAccessTokenAccessor#LoadCache") }
	func getDeviceAccountId(_ _0: NnAccount_Uid) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::account::nn::account::IBaasAccessTokenAccessor#GetDeviceAccountId") }
	func registerNotificationTokenAsync(_ _0: NnNpns_NotificationToken, _ _1: NnAccount_Uid) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IBaasAccessTokenAccessor#RegisterNotificationTokenAsync") }
	func unregisterNotificationTokenAsync(_ _0: NnAccount_Uid) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IBaasAccessTokenAccessor#UnregisterNotificationTokenAsync") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try ensureCacheAsync(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try loadCache(im.getBytes(8, 0x10), im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 2:
			let ret = try getDeviceAccountId(im.getBytes(8, 0x10))
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 50:
			let ret = try registerNotificationTokenAsync(im.getBytes(8, 0x28), im.getBytes(48, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 51:
			let ret = try unregisterNotificationTokenAsync(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::account::IBaasAccessTokenAccessor: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAccount_IAccountServiceForApplication: IpcService {
	func getUserCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#GetUserCount") }
	func getUserExistence(_ _0: NnAccount_Uid) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#GetUserExistence") }
	func listAllUsers(_ _0: Buffer<NnAccount_Uid>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#ListAllUsers") }
	func listOpenUsers(_ _0: Buffer<NnAccount_Uid>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#ListOpenUsers") }
	func getLastOpenedUser() throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#GetLastOpenedUser") }
	func getProfile(_ _0: NnAccount_Uid) throws -> NnAccountProfile_IProfile { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#GetProfile") }
	func getProfileDigest(_ _0: NnAccount_Uid) throws -> NnAccount_ProfileDigest { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#GetProfileDigest") }
	func isUserRegistrationRequestPermitted(_ _0: UInt64, _ _1: Pid) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#IsUserRegistrationRequestPermitted") }
	func trySelectUserWithoutInteraction(_ _0: UInt8) throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#TrySelectUserWithoutInteraction") }
	func listOpenContextStoredUsers(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#ListOpenContextStoredUsers") }
	func initializeApplicationInfo(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#InitializeApplicationInfo") }
	func getBaasAccountManagerForApplication(_ _0: NnAccount_Uid) throws -> NnAccountBaas_IManagerForApplication { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#GetBaasAccountManagerForApplication") }
	func authenticateApplicationAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#AuthenticateApplicationAsync") }
	func checkNetworkServiceAvailabilityAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#CheckNetworkServiceAvailabilityAsync") }
	func storeSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#StoreSaveDataThumbnail") }
	func clearSaveDataThumbnail(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#ClearSaveDataThumbnail") }
	func createGuestLoginRequest(_ _0: UInt32, _ _1: KObject) throws -> NnAccountBaas_IGuestLoginRequest { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#CreateGuestLoginRequest") }
	func loadOpenContext(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForApplication#LoadOpenContext") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getUserCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let ret = try getUserExistence(im.getBytes(8, 0x10))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 2:
			try listAllUsers(im.getBuffer(0xa, 0) as Buffer<NnAccount_Uid>)
			om.initialize(0, 0, 0)
		
		case 3:
			try listOpenUsers(im.getBuffer(0xa, 0) as Buffer<NnAccount_Uid>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getLastOpenedUser()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getProfile(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 6:
			let ret = try getProfileDigest(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 50:
			let ret = try isUserRegistrationRequestPermitted(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 51:
			let ret = try trySelectUserWithoutInteraction(im.getData(8) as UInt8)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 60:
			let ret = try listOpenContextStoredUsers(nil)
			om.initialize(0, 0, 0)
		
		case 100:
			try initializeApplicationInfo(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try getBaasAccountManagerForApplication(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 102:
			let ret = try authenticateApplicationAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 103:
			let ret = try checkNetworkServiceAvailabilityAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 110:
			try storeSaveDataThumbnail(im.getBytes(8, 0x10), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 111:
			try clearSaveDataThumbnail(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 120:
			let ret = try createGuestLoginRequest(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 130:
			let ret = try loadOpenContext(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::IAccountServiceForApplication: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAccount_IAccountServiceForSystemService: IpcService {
	func getUserCount() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetUserCount") }
	func getUserExistence(_ _0: NnAccount_Uid) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetUserExistence") }
	func listAllUsers(_ _0: Buffer<NnAccount_Uid>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#ListAllUsers") }
	func listOpenUsers(_ _0: Buffer<NnAccount_Uid>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#ListOpenUsers") }
	func getLastOpenedUser() throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetLastOpenedUser") }
	func getProfile(_ _0: NnAccount_Uid) throws -> NnAccountProfile_IProfile { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetProfile") }
	func getProfileDigest(_ _0: NnAccount_Uid) throws -> NnAccount_ProfileDigest { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetProfileDigest") }
	func isUserRegistrationRequestPermitted(_ _0: UInt64, _ _1: Pid) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#IsUserRegistrationRequestPermitted") }
	func trySelectUserWithoutInteraction(_ _0: UInt8) throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#TrySelectUserWithoutInteraction") }
	func listOpenContextStoredUsers(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#ListOpenContextStoredUsers") }
	func getUserRegistrationNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetUserRegistrationNotifier") }
	func getUserStateChangeNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetUserStateChangeNotifier") }
	func getBaasAccountManagerForSystemService(_ _0: NnAccount_Uid) throws -> NnAccountBaas_IManagerForSystemService { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetBaasAccountManagerForSystemService") }
	func getBaasUserAvailabilityChangeNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetBaasUserAvailabilityChangeNotifier") }
	func getProfileUpdateNotifier() throws -> NnAccountDetail_INotifier { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetProfileUpdateNotifier") }
	func checkNetworkServiceAvailabilityAsync(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#CheckNetworkServiceAvailabilityAsync") }
	func storeSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#StoreSaveDataThumbnail") }
	func clearSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#ClearSaveDataThumbnail") }
	func loadSaveDataThumbnail(_ _0: NnAccount_Uid, _ _1: Nn_ApplicationId, _ _2: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#LoadSaveDataThumbnail") }
	func getSaveDataThumbnailExistence(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetSaveDataThumbnailExistence") }
	func getUserLastOpenedApplication(_ _0: NnAccount_Uid) throws -> (UInt32, Nn_ApplicationId) { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#GetUserLastOpenedApplication") }
	func activateOpenContextHolder(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#ActivateOpenContextHolder") }
	func debugInvalidateTokenCacheForUser(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#DebugInvalidateTokenCacheForUser") }
	func debugSetUserStateClose(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#DebugSetUserStateClose") }
	func debugSetUserStateOpen(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::nn::account::IAccountServiceForSystemService#DebugSetUserStateOpen") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getUserCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			let ret = try getUserExistence(im.getBytes(8, 0x10))
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 2:
			try listAllUsers(im.getBuffer(0xa, 0) as Buffer<NnAccount_Uid>)
			om.initialize(0, 0, 0)
		
		case 3:
			try listOpenUsers(im.getBuffer(0xa, 0) as Buffer<NnAccount_Uid>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getLastOpenedUser()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 5:
			let ret = try getProfile(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 6:
			let ret = try getProfileDigest(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 50:
			let ret = try isUserRegistrationRequestPermitted(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 51:
			let ret = try trySelectUserWithoutInteraction(im.getData(8) as UInt8)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 60:
			let ret = try listOpenContextStoredUsers(nil)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try getUserRegistrationNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 101:
			let ret = try getUserStateChangeNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 102:
			let ret = try getBaasAccountManagerForSystemService(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 103:
			let ret = try getBaasUserAvailabilityChangeNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 104:
			let ret = try getProfileUpdateNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 105:
			let ret = try checkNetworkServiceAvailabilityAsync(im.getData(8) as UInt64, im.pid, im.getBuffer(0x19, 0) as Buffer<NnAccount_SystemProgramIdentification>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 110:
			try storeSaveDataThumbnail(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 111:
			try clearSaveDataThumbnail(im.getBytes(8, 0x10), im.getData(24) as UInt64)
			om.initialize(0, 0, 0)
		
		case 112:
			let ret = try loadSaveDataThumbnail(im.getBytes(8, 0x10), im.getData(24) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 113:
			let ret = try getSaveDataThumbnailExistence(nil)
			om.initialize(0, 0, 0)
		
		case 190:
			let (_0, _1) = try getUserLastOpenedApplication(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 191:
			let ret = try activateOpenContextHolder(nil)
			om.initialize(0, 0, 0)
		
		case 997:
			try debugInvalidateTokenCacheForUser(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 998:
			try debugSetUserStateClose(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 999:
			try debugSetUserStateOpen(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::IAccountServiceForSystemService: \(im.commandId)")
			try! bailout()
		}
	}
}
