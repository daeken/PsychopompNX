class NnAccountBaas_IManagerForSystemService: IpcService {
	func checkAvailability() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#CheckAvailability") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetAccountId") }
	func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#EnsureIdTokenCacheAsync") }
	func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#LoadIdTokenCache") }
	func setSystemProgramIdentification(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#SetSystemProgramIdentification") }
	func getServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetServiceEntryRequirementCache") }
	func invalidateServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#InvalidateServiceEntryRequirementCache") }
	func invalidateTokenCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#InvalidateTokenCache") }
	func getNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetNintendoAccountId") }
	func getNintendoAccountUserResourceCache(_ _0: Buffer<NnAccountNas_NasUserBase>, _ _1: Buffer<UInt8>) throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetNintendoAccountUserResourceCache") }
	func refreshNintendoAccountUserResourceCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNintendoAccountUserResourceCacheAsync") }
	func refreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed(_ _0: UInt32) throws -> (UInt8, NnAccountDetail_IAsyncContext) { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed") }
	func getNetworkServiceLicenseCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetNetworkServiceLicenseCache") }
	func refreshNetworkServiceLicenseCacheAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNetworkServiceLicenseCacheAsync") }
	func refreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed") }
	func createAuthorizationRequest(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<NnAccountNas_NasClientInfo>, _ _3: Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>) throws -> NnAccountNas_IAuthorizationRequest { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#CreateAuthorizationRequest") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try checkAvailability()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			let ret = try ensureIdTokenCacheAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try loadIdTokenCache(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 100:
			try setSystemProgramIdentification(im.getData(8) as UInt64, im.pid, im.getBuffer(0x19, 0)! as Buffer<NnAccount_SystemProgramIdentification>)
			om.initialize(0, 0, 0)
		
		case 110:
			let ret = try getServiceEntryRequirementCache(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 111:
			try invalidateServiceEntryRequirementCache(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 112:
			try invalidateTokenCache(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 120:
			let ret = try getNintendoAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 130:
			let ret = try getNintendoAccountUserResourceCache(im.getBuffer(0x1a, 0)! as Buffer<NnAccountNas_NasUserBase>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 131:
			let ret = try refreshNintendoAccountUserResourceCacheAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 132:
			let (_0, _1) = try refreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed(im.getData(8) as UInt32)
			om.initialize(1, 0, 1)
			om.setData(8, _0)
			om.move(0, _1)
		
		case 140:
			let ret = try getNetworkServiceLicenseCache(nil)
			om.initialize(0, 0, 0)
		
		case 141:
			let ret = try refreshNetworkServiceLicenseCacheAsync(nil)
			om.initialize(0, 0, 0)
		
		case 142:
			let ret = try refreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed(nil)
			om.initialize(0, 0, 0)
		
		case 150:
			let ret = try createAuthorizationRequest(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0)! as Buffer<NnAccountNas_NasClientInfo>, im.getBuffer(0x19, 1)! as Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::account::baas::IManagerForSystemService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountBaas_IManagerForSystemService_Impl: NnAccountBaas_IManagerForSystemService {
	override func checkAvailability() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#CheckAvailability") }
	override func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetAccountId") }
	override func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#EnsureIdTokenCacheAsync") }
	override func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#LoadIdTokenCache") }
	override func setSystemProgramIdentification(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#SetSystemProgramIdentification") }
	override func getServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetServiceEntryRequirementCache") }
	override func invalidateServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#InvalidateServiceEntryRequirementCache") }
	override func invalidateTokenCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#InvalidateTokenCache") }
	override func getNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetNintendoAccountId") }
	override func getNintendoAccountUserResourceCache(_ _0: Buffer<NnAccountNas_NasUserBase>, _ _1: Buffer<UInt8>) throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetNintendoAccountUserResourceCache") }
	override func refreshNintendoAccountUserResourceCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNintendoAccountUserResourceCacheAsync") }
	override func refreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed(_ _0: UInt32) throws -> (UInt8, NnAccountDetail_IAsyncContext) { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed") }
	override func getNetworkServiceLicenseCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#GetNetworkServiceLicenseCache") }
	override func refreshNetworkServiceLicenseCacheAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNetworkServiceLicenseCacheAsync") }
	override func refreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#RefreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed") }
	override func createAuthorizationRequest(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<NnAccountNas_NasClientInfo>, _ _3: Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>) throws -> NnAccountNas_IAuthorizationRequest { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForSystemService#CreateAuthorizationRequest") }
}
*/

class NnAccountBaas_IFloatingRegistrationRequest: IpcService {
	func getSessionId() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetSessionId") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetAccountId") }
	func getLinkedNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetLinkedNintendoAccountId") }
	func getNickname(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetNickname") }
	func getProfileImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetProfileImage") }
	func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#LoadIdTokenCache") }
	func registerUser() throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterUser") }
	func registerUserWithUid(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterUserWithUid") }
	func registerNetworkServiceAccountAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterNetworkServiceAccountAsync") }
	func registerNetworkServiceAccountWithUidAsync(_ _0: NnAccount_Uid) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterNetworkServiceAccountWithUidAsync") }
	func setSystemProgramIdentification(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#SetSystemProgramIdentification") }
	func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#EnsureIdTokenCacheAsync") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSessionId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 12:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 13:
			let ret = try getLinkedNintendoAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 14:
			try getNickname(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getProfileImage(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try loadIdTokenCache(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 100:
			let ret = try registerUser()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 101:
			try registerUserWithUid(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try registerNetworkServiceAccountAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 103:
			let ret = try registerNetworkServiceAccountWithUidAsync(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 110:
			try setSystemProgramIdentification(im.getData(8) as UInt64, im.pid, im.getBuffer(0x19, 0)! as Buffer<NnAccount_SystemProgramIdentification>)
			om.initialize(0, 0, 0)
		
		case 111:
			let ret = try ensureIdTokenCacheAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::account::baas::IFloatingRegistrationRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountBaas_IFloatingRegistrationRequest_Impl: NnAccountBaas_IFloatingRegistrationRequest {
	override func getSessionId() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetSessionId") }
	override func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetAccountId") }
	override func getLinkedNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetLinkedNintendoAccountId") }
	override func getNickname(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetNickname") }
	override func getProfileImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#GetProfileImage") }
	override func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#LoadIdTokenCache") }
	override func registerUser() throws -> NnAccount_Uid { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterUser") }
	override func registerUserWithUid(_ _0: NnAccount_Uid) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterUserWithUid") }
	override func registerNetworkServiceAccountAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterNetworkServiceAccountAsync") }
	override func registerNetworkServiceAccountWithUidAsync(_ _0: NnAccount_Uid) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#RegisterNetworkServiceAccountWithUidAsync") }
	override func setSystemProgramIdentification(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#SetSystemProgramIdentification") }
	override func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IFloatingRegistrationRequest#EnsureIdTokenCacheAsync") }
}
*/

class NnAccountBaas_IManagerForApplication: IpcService {
	func checkAvailability() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#CheckAvailability") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#GetAccountId") }
	func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#EnsureIdTokenCacheAsync") }
	func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#LoadIdTokenCache") }
	func getNintendoAccountUserResourceCacheForApplication(_ _0: Buffer<NnAccountNas_NasUserBaseForApplication>, _ _1: Buffer<UInt8>) throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#GetNintendoAccountUserResourceCacheForApplication") }
	func createAuthorizationRequest(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>) throws -> NnAccountNas_IAuthorizationRequest { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#CreateAuthorizationRequest") }
	func storeOpenContext(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#StoreOpenContext") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try checkAvailability()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			let ret = try ensureIdTokenCacheAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try loadIdTokenCache(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 130:
			let ret = try getNintendoAccountUserResourceCacheForApplication(im.getBuffer(0x1a, 0)! as Buffer<NnAccountNas_NasUserBaseForApplication>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 150:
			let ret = try createAuthorizationRequest(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0)! as Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 160:
			let ret = try storeOpenContext(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::baas::IManagerForApplication: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountBaas_IManagerForApplication_Impl: NnAccountBaas_IManagerForApplication {
	override func checkAvailability() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#CheckAvailability") }
	override func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#GetAccountId") }
	override func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#EnsureIdTokenCacheAsync") }
	override func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#LoadIdTokenCache") }
	override func getNintendoAccountUserResourceCacheForApplication(_ _0: Buffer<NnAccountNas_NasUserBaseForApplication>, _ _1: Buffer<UInt8>) throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#GetNintendoAccountUserResourceCacheForApplication") }
	override func createAuthorizationRequest(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>) throws -> NnAccountNas_IAuthorizationRequest { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#CreateAuthorizationRequest") }
	override func storeOpenContext(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IManagerForApplication#StoreOpenContext") }
}
*/

class NnAccountBaas_IAdministrator: IpcService {
	func checkAvailability() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CheckAvailability") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetAccountId") }
	func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#EnsureIdTokenCacheAsync") }
	func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#LoadIdTokenCache") }
	func setSystemProgramIdentification(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#SetSystemProgramIdentification") }
	func getServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetServiceEntryRequirementCache") }
	func invalidateServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#InvalidateServiceEntryRequirementCache") }
	func invalidateTokenCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#InvalidateTokenCache") }
	func getNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetNintendoAccountId") }
	func getNintendoAccountUserResourceCache(_ _0: Buffer<NnAccountNas_NasUserBase>, _ _1: Buffer<UInt8>) throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetNintendoAccountUserResourceCache") }
	func refreshNintendoAccountUserResourceCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNintendoAccountUserResourceCacheAsync") }
	func refreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed(_ _0: UInt32) throws -> (UInt8, NnAccountDetail_IAsyncContext) { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed") }
	func getNetworkServiceLicenseCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetNetworkServiceLicenseCache") }
	func refreshNetworkServiceLicenseCacheAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNetworkServiceLicenseCacheAsync") }
	func refreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed") }
	func createAuthorizationRequest(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<NnAccountNas_NasClientInfo>, _ _3: Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>) throws -> NnAccountNas_IAuthorizationRequest { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateAuthorizationRequest") }
	func isRegistered() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#IsRegistered") }
	func registerAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RegisterAsync") }
	func unregisterAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#UnregisterAsync") }
	func deleteRegistrationInfoLocally() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#DeleteRegistrationInfoLocally") }
	func synchronizeProfileAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#SynchronizeProfileAsync") }
	func uploadProfileAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#UploadProfileAsync") }
	func synchronizeProfileAsyncIfSecondsElapsed(_ _0: UInt32) throws -> (UInt8, NnAccountDetail_IAsyncContext) { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#SynchronizeProfileAsyncIfSecondsElapsed") }
	func isLinkedWithNintendoAccount() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#IsLinkedWithNintendoAccount") }
	func createProcedureToLinkWithNintendoAccount() throws -> NnAccountNas_IOAuthProcedureForNintendoAccountLinkage { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateProcedureToLinkWithNintendoAccount") }
	func resumeProcedureToLinkWithNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountNas_IOAuthProcedureForNintendoAccountLinkage { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ResumeProcedureToLinkWithNintendoAccount") }
	func createProcedureToUpdateLinkageStateOfNintendoAccount() throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateProcedureToUpdateLinkageStateOfNintendoAccount") }
	func resumeProcedureToUpdateLinkageStateOfNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ResumeProcedureToUpdateLinkageStateOfNintendoAccount") }
	func createProcedureToLinkNnidWithNintendoAccount() throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateProcedureToLinkNnidWithNintendoAccount") }
	func resumeProcedureToLinkNnidWithNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ResumeProcedureToLinkNnidWithNintendoAccount") }
	func proxyProcedureToAcquireApplicationAuthorizationForNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ProxyProcedureToAcquireApplicationAuthorizationForNintendoAccount") }
	func debugUnlinkNintendoAccountAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#DebugUnlinkNintendoAccountAsync") }
	func debugSetAvailabilityErrorDetail(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#DebugSetAvailabilityErrorDetail") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try checkAvailability()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			let ret = try ensureIdTokenCacheAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 3:
			let ret = try loadIdTokenCache(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 100:
			try setSystemProgramIdentification(im.getData(8) as UInt64, im.pid, im.getBuffer(0x19, 0)! as Buffer<NnAccount_SystemProgramIdentification>)
			om.initialize(0, 0, 0)
		
		case 110:
			let ret = try getServiceEntryRequirementCache(im.getData(8) as UInt64)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 111:
			try invalidateServiceEntryRequirementCache(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 112:
			try invalidateTokenCache(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 120:
			let ret = try getNintendoAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 130:
			let ret = try getNintendoAccountUserResourceCache(im.getBuffer(0x1a, 0)! as Buffer<NnAccountNas_NasUserBase>, im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 131:
			let ret = try refreshNintendoAccountUserResourceCacheAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 132:
			let (_0, _1) = try refreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed(im.getData(8) as UInt32)
			om.initialize(1, 0, 1)
			om.setData(8, _0)
			om.move(0, _1)
		
		case 140:
			let ret = try getNetworkServiceLicenseCache(nil)
			om.initialize(0, 0, 0)
		
		case 141:
			let ret = try refreshNetworkServiceLicenseCacheAsync(nil)
			om.initialize(0, 0, 0)
		
		case 142:
			let ret = try refreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed(nil)
			om.initialize(0, 0, 0)
		
		case 150:
			let ret = try createAuthorizationRequest(im.getData(8) as UInt32, try Emulator.instance!.kernel.tryGetHandle(im.getCopy(0)) as KObject, im.getBuffer(0x19, 0)! as Buffer<NnAccountNas_NasClientInfo>, im.getBuffer(0x19, 1)! as Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 200:
			let ret = try isRegistered()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 201:
			let ret = try registerAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 202:
			let ret = try unregisterAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 203:
			try deleteRegistrationInfoLocally()
			om.initialize(0, 0, 0)
		
		case 220:
			let ret = try synchronizeProfileAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 221:
			let ret = try uploadProfileAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 222:
			let (_0, _1) = try synchronizeProfileAsyncIfSecondsElapsed(im.getData(8) as UInt32)
			om.initialize(1, 0, 1)
			om.setData(8, _0)
			om.move(0, _1)
		
		case 250:
			let ret = try isLinkedWithNintendoAccount()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 251:
			let ret = try createProcedureToLinkWithNintendoAccount()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 252:
			let ret = try resumeProcedureToLinkWithNintendoAccount(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 255:
			let ret = try createProcedureToUpdateLinkageStateOfNintendoAccount()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 256:
			let ret = try resumeProcedureToUpdateLinkageStateOfNintendoAccount(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 260:
			let ret = try createProcedureToLinkNnidWithNintendoAccount()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 261:
			let ret = try resumeProcedureToLinkNnidWithNintendoAccount(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 280:
			let ret = try proxyProcedureToAcquireApplicationAuthorizationForNintendoAccount(im.getBytes(8, 0x10))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 997:
			let ret = try debugUnlinkNintendoAccountAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 998:
			try debugSetAvailabilityErrorDetail(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::baas::IAdministrator: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountBaas_IAdministrator_Impl: NnAccountBaas_IAdministrator {
	override func checkAvailability() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CheckAvailability") }
	override func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetAccountId") }
	override func ensureIdTokenCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#EnsureIdTokenCacheAsync") }
	override func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#LoadIdTokenCache") }
	override func setSystemProgramIdentification(_ _0: UInt64, _ _1: Pid, _ _2: Buffer<NnAccount_SystemProgramIdentification>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#SetSystemProgramIdentification") }
	override func getServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetServiceEntryRequirementCache") }
	override func invalidateServiceEntryRequirementCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#InvalidateServiceEntryRequirementCache") }
	override func invalidateTokenCache(_ _0: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#InvalidateTokenCache") }
	override func getNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetNintendoAccountId") }
	override func getNintendoAccountUserResourceCache(_ _0: Buffer<NnAccountNas_NasUserBase>, _ _1: Buffer<UInt8>) throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetNintendoAccountUserResourceCache") }
	override func refreshNintendoAccountUserResourceCacheAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNintendoAccountUserResourceCacheAsync") }
	override func refreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed(_ _0: UInt32) throws -> (UInt8, NnAccountDetail_IAsyncContext) { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNintendoAccountUserResourceCacheAsyncIfSecondsElapsed") }
	override func getNetworkServiceLicenseCache(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#GetNetworkServiceLicenseCache") }
	override func refreshNetworkServiceLicenseCacheAsync(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNetworkServiceLicenseCacheAsync") }
	override func refreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RefreshNetworkServiceLicenseCacheAsyncIfSecondsElapsed") }
	override func createAuthorizationRequest(_ _0: UInt32, _ _1: KObject, _ _2: Buffer<NnAccountNas_NasClientInfo>, _ _3: Buffer<NnAccount_NintendoAccountAuthorizationRequestParameters>) throws -> NnAccountNas_IAuthorizationRequest { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateAuthorizationRequest") }
	override func isRegistered() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#IsRegistered") }
	override func registerAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#RegisterAsync") }
	override func unregisterAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#UnregisterAsync") }
	override func deleteRegistrationInfoLocally() throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#DeleteRegistrationInfoLocally") }
	override func synchronizeProfileAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#SynchronizeProfileAsync") }
	override func uploadProfileAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#UploadProfileAsync") }
	override func synchronizeProfileAsyncIfSecondsElapsed(_ _0: UInt32) throws -> (UInt8, NnAccountDetail_IAsyncContext) { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#SynchronizeProfileAsyncIfSecondsElapsed") }
	override func isLinkedWithNintendoAccount() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#IsLinkedWithNintendoAccount") }
	override func createProcedureToLinkWithNintendoAccount() throws -> NnAccountNas_IOAuthProcedureForNintendoAccountLinkage { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateProcedureToLinkWithNintendoAccount") }
	override func resumeProcedureToLinkWithNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountNas_IOAuthProcedureForNintendoAccountLinkage { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ResumeProcedureToLinkWithNintendoAccount") }
	override func createProcedureToUpdateLinkageStateOfNintendoAccount() throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateProcedureToUpdateLinkageStateOfNintendoAccount") }
	override func resumeProcedureToUpdateLinkageStateOfNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ResumeProcedureToUpdateLinkageStateOfNintendoAccount") }
	override func createProcedureToLinkNnidWithNintendoAccount() throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#CreateProcedureToLinkNnidWithNintendoAccount") }
	override func resumeProcedureToLinkNnidWithNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ResumeProcedureToLinkNnidWithNintendoAccount") }
	override func proxyProcedureToAcquireApplicationAuthorizationForNintendoAccount(_ _0: NnAccountDetail_Uuid) throws -> NnAccountHttp_IOAuthProcedure { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#ProxyProcedureToAcquireApplicationAuthorizationForNintendoAccount") }
	override func debugUnlinkNintendoAccountAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#DebugUnlinkNintendoAccountAsync") }
	override func debugSetAvailabilityErrorDetail(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IAdministrator#DebugSetAvailabilityErrorDetail") }
}
*/

class NnAccountBaas_IGuestLoginRequest: IpcService {
	func getSessionId() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetSessionId") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetAccountId") }
	func getLinkedNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetLinkedNintendoAccountId") }
	func getNickname(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetNickname") }
	func getProfileImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetProfileImage") }
	func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#LoadIdTokenCache") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSessionId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 12:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 13:
			let ret = try getLinkedNintendoAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 14:
			try getNickname(im.getBuffer(0xa, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try getProfileImage(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try loadIdTokenCache(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::account::baas::IGuestLoginRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAccountBaas_IGuestLoginRequest_Impl: NnAccountBaas_IGuestLoginRequest {
	override func getSessionId() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetSessionId") }
	override func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetAccountId") }
	override func getLinkedNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetLinkedNintendoAccountId") }
	override func getNickname(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetNickname") }
	override func getProfileImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#GetProfileImage") }
	override func loadIdTokenCache(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::baas::nn::account::baas::IGuestLoginRequest#LoadIdTokenCache") }
}
*/
