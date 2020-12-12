typealias NnAccountNas_NasUserBaseForApplication = [UInt8]
typealias NnAccountNas_State = [UInt8]
typealias NnAccountNas_NasClientInfo = [UInt8]
typealias NnAccountNas_NasUserBase = [UInt8]

class NnAccountNas_IOAuthProcedureForGuestLogin: IpcService {
	func prepareAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#PrepareAsync") }
	func getRequest(_ _0: Buffer<NnAccount_RequestUrl>, _ _1: Buffer<NnAccount_CallbackUri>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#GetRequest") }
	func applyResponse(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#ApplyResponse") }
	func applyResponseAsync(_ _0: Buffer<UInt8>) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#ApplyResponseAsync") }
	func suspend() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#Suspend") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#GetAccountId") }
	func getLinkedNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#GetLinkedNintendoAccountId") }
	func getNickname(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#GetNickname") }
	func getProfileImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForGuestLogin#GetProfileImage") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try prepareAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try getRequest(im.getBuffer(0x1a, 0) as Buffer<NnAccount_RequestUrl>, im.getBuffer(0x1a, 1) as Buffer<NnAccount_CallbackUri>)
			om.initialize(0, 0, 0)
		
		case 2:
			try applyResponse(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try applyResponseAsync(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try suspend()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 101:
			let ret = try getLinkedNintendoAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 102:
			try getNickname(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try getProfileImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::account::nas::IOAuthProcedureForGuestLogin: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAccountNas_IAuthorizationRequest: IpcService {
	func getSessionId() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IAuthorizationRequest#GetSessionId") }
	func invokeWithoutInteractionAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IAuthorizationRequest#InvokeWithoutInteractionAsync") }
	func isAuthorized() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IAuthorizationRequest#IsAuthorized") }
	func getAuthorizationCode(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IAuthorizationRequest#GetAuthorizationCode") }
	func getIdToken(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IAuthorizationRequest#GetIdToken") }
	func getState(_ _0: Buffer<NnAccountNas_State>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IAuthorizationRequest#GetState") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getSessionId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			let ret = try invokeWithoutInteractionAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 19:
			let ret = try isAuthorized()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 20:
			let ret = try getAuthorizationCode(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let ret = try getIdToken(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			try getState(im.getBuffer(0x1a, 0) as Buffer<NnAccountNas_State>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::nas::IAuthorizationRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAccountNas_IOAuthProcedureForNintendoAccountLinkage: IpcService {
	func prepareAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#PrepareAsync") }
	func getRequest(_ _0: Buffer<NnAccount_RequestUrl>, _ _1: Buffer<NnAccount_CallbackUri>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#GetRequest") }
	func applyResponse(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#ApplyResponse") }
	func applyResponseAsync(_ _0: Buffer<UInt8>) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#ApplyResponseAsync") }
	func suspend() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#Suspend") }
	func getRequestWithTheme(_ _0: UInt32, _ _1: Buffer<NnAccount_RequestUrl>, _ _2: Buffer<NnAccount_CallbackUri>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#GetRequestWithTheme") }
	func isNetworkServiceAccountReplaced() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#IsNetworkServiceAccountReplaced") }
	func getUrlForIntroductionOfExtraMembership(_ _0: Buffer<NnAccount_RequestUrl>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForNintendoAccountLinkage#GetUrlForIntroductionOfExtraMembership") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try prepareAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try getRequest(im.getBuffer(0x1a, 0) as Buffer<NnAccount_RequestUrl>, im.getBuffer(0x1a, 1) as Buffer<NnAccount_CallbackUri>)
			om.initialize(0, 0, 0)
		
		case 2:
			try applyResponse(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try applyResponseAsync(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try suspend()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			try getRequestWithTheme(im.getData(8) as UInt32, im.getBuffer(0x1a, 0) as Buffer<NnAccount_RequestUrl>, im.getBuffer(0x1a, 1) as Buffer<NnAccount_CallbackUri>)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try isNetworkServiceAccountReplaced()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 199:
			try getUrlForIntroductionOfExtraMembership(im.getBuffer(0x1a, 0) as Buffer<NnAccount_RequestUrl>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::account::nas::IOAuthProcedureForNintendoAccountLinkage: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnAccountNas_IOAuthProcedureForExternalNsa: IpcService {
	func prepareAsync() throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#PrepareAsync") }
	func getRequest(_ _0: Buffer<NnAccount_RequestUrl>, _ _1: Buffer<NnAccount_CallbackUri>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#GetRequest") }
	func applyResponse(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#ApplyResponse") }
	func applyResponseAsync(_ _0: Buffer<UInt8>) throws -> NnAccountDetail_IAsyncContext { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#ApplyResponseAsync") }
	func suspend() throws -> NnAccountDetail_Uuid { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#Suspend") }
	func getAccountId() throws -> NnAccount_NetworkServiceAccountId { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#GetAccountId") }
	func getLinkedNintendoAccountId() throws -> NnAccount_NintendoAccountId { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#GetLinkedNintendoAccountId") }
	func getNickname(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#GetNickname") }
	func getProfileImage(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::account::nas::nn::account::nas::IOAuthProcedureForExternalNsa#GetProfileImage") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try prepareAsync()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try getRequest(im.getBuffer(0x1a, 0) as Buffer<NnAccount_RequestUrl>, im.getBuffer(0x1a, 1) as Buffer<NnAccount_CallbackUri>)
			om.initialize(0, 0, 0)
		
		case 2:
			try applyResponse(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try applyResponseAsync(im.getBuffer(0x9, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			let ret = try suspend()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 100:
			let ret = try getAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 101:
			let ret = try getLinkedNintendoAccountId()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 102:
			try getNickname(im.getBuffer(0xa, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try getProfileImage(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::account::nas::IOAuthProcedureForExternalNsa: \(im.commandId)")
			try! bailout()
		}
	}
}
