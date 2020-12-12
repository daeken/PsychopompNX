class NnNimDetail_INetworkInstallManager: IpcService {
	func createSystemUpdateTask(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func destroySystemUpdateTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listSystemUpdateTask(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestSystemUpdateTaskRun(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getSystemUpdateTaskInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func commitSystemUpdateTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func createNetworkInstallTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func destroyNetworkInstallTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listNetworkInstallTask(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestNetworkInstallTaskRun(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getNetworkInstallTaskInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func commitNetworkInstallTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func requestLatestSystemUpdateMeta() throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func listApplicationNetworkInstallTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func listNetworkInstallTaskContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestLatestVersion(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func setNetworkInstallTaskAttribute(_ _0: Any?) throws { throw IpcError.unimplemented }
	func addNetworkInstallTaskContentMeta(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getDownloadedSystemDataPath(_ _0: Any?, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func calculateNetworkInstallTaskRequiredSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isExFatDriverIncluded(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getBackgroundDownloadStressTaskInfo() throws -> Any? { throw IpcError.unimplemented }
	func requestDeviceAuthenticationToken() throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestGameCardRegistrationStatus(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestRegisterGameCard(_ _0: Any?, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestRegisterNotificationToken(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestDownloadTaskList(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncData) { throw IpcError.unimplemented }
	func requestApplicationControl(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestLatestApplicationControl(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestVersionList(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncData) { throw IpcError.unimplemented }
	func createApplyDeltaTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func destroyApplyDeltaTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func listApplicationApplyDeltaTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func requestApplyDeltaTaskRun(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func getApplyDeltaTaskInfo(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func listApplyDeltaTask(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func commitApplyDeltaTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func calculateApplyDeltaTaskRequiredSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func prepareShutdown() throws { throw IpcError.unimplemented }
	func listApplyDeltaTask2(_ _0: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func clearNotEnoughSpaceStateOfApplyDeltaTask(_ _0: Any?) throws { throw IpcError.unimplemented }
	func unknown42(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown43() throws -> Any? { throw IpcError.unimplemented }
	func unknown44(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown45(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func unknown46() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try createSystemUpdateTask(nil)
			om.initialize(0, 0, 0)
		
		case 1:
			try destroySystemUpdateTask(nil)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try listSystemUpdateTask(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let (_0, _1) = try requestSystemUpdateTaskRun(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 4:
			let ret = try getSystemUpdateTaskInfo(nil)
			om.initialize(0, 0, 0)
		
		case 5:
			try commitSystemUpdateTask(nil)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try createNetworkInstallTask(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			try destroyNetworkInstallTask(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try listNetworkInstallTask(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 9:
			let (_0, _1) = try requestNetworkInstallTaskRun(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 10:
			let ret = try getNetworkInstallTaskInfo(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			try commitNetworkInstallTask(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let (_0, _1) = try requestLatestSystemUpdateMeta()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 14:
			let ret = try listApplicationNetworkInstallTask(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try listNetworkInstallTaskContentMeta(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			let (_0, _1) = try requestLatestVersion(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 17:
			try setNetworkInstallTaskAttribute(nil)
			om.initialize(0, 0, 0)
		
		case 18:
			try addNetworkInstallTaskContentMeta(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			try getDownloadedSystemDataPath(nil, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try calculateNetworkInstallTaskRequiredSize(nil)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try isExFatDriverIncluded(nil)
			om.initialize(0, 0, 0)
		
		case 22:
			let ret = try getBackgroundDownloadStressTaskInfo()
			om.initialize(0, 0, 0)
		
		case 23:
			let (_0, _1) = try requestDeviceAuthenticationToken()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 24:
			let (_0, _1) = try requestGameCardRegistrationStatus(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 25:
			let (_0, _1) = try requestRegisterGameCard(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 26:
			let (_0, _1) = try requestRegisterNotificationToken(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 27:
			let (_0, _1) = try requestDownloadTaskList(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 28:
			let (_0, _1) = try requestApplicationControl(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 29:
			let (_0, _1) = try requestLatestApplicationControl(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 30:
			let (_0, _1) = try requestVersionList(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 31:
			let ret = try createApplyDeltaTask(nil, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 32:
			try destroyApplyDeltaTask(nil)
			om.initialize(0, 0, 0)
		
		case 33:
			let ret = try listApplicationApplyDeltaTask(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 34:
			let (_0, _1) = try requestApplyDeltaTaskRun(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 35:
			let ret = try getApplyDeltaTaskInfo(nil)
			om.initialize(0, 0, 0)
		
		case 36:
			let ret = try listApplyDeltaTask(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 37:
			try commitApplyDeltaTask(nil)
			om.initialize(0, 0, 0)
		
		case 38:
			let ret = try calculateApplyDeltaTaskRequiredSize(nil)
			om.initialize(0, 0, 0)
		
		case 39:
			try prepareShutdown()
			om.initialize(0, 0, 0)
		
		case 40:
			let ret = try listApplyDeltaTask2(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 41:
			try clearNotEnoughSpaceStateOfApplyDeltaTask(nil)
			om.initialize(0, 0, 0)
		
		case 42:
			let ret = try unknown42(nil)
			om.initialize(0, 0, 0)
		
		case 43:
			let ret = try unknown43()
			om.initialize(0, 0, 0)
		
		case 44:
			let ret = try unknown44(nil)
			om.initialize(0, 0, 0)
		
		case 45:
			let ret = try unknown45(nil)
			om.initialize(0, 0, 0)
		
		case 46:
			try unknown46()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nim::detail::INetworkInstallManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNimDetail_IShopServiceManager: IpcService {
	func requestDeviceAuthenticationToken() throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestCachedDeviceAuthenticationToken(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestRegisterDeviceAccount() throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestUnregisterDeviceAccount() throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestDeviceAccountStatus() throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func getDeviceAccountInfo() throws -> Any? { throw IpcError.unimplemented }
	func requestDeviceRegistrationInfo() throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func requestTransferDeviceAccount() throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestSyncRegistration() throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func isOwnDeviceId(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestRegisterNotificationToken(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestUnlinkDevice(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestUnlinkDeviceIntegrated(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestLinkDevice(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func hasDeviceLink(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestUnlinkDeviceAll() throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestCreateVirtualAccount(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestDeviceLinkStatus(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	func getAccountByVirtualAccount(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func requestSyncTicket() throws -> (KObject, NnNimDetail_IAsyncProgressResult) { throw IpcError.unimplemented }
	func requestDownloadTicket(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncResult) { throw IpcError.unimplemented }
	func requestDownloadTicketForPrepurchasedContents(_ _0: Any?) throws -> (KObject, NnNimDetail_IAsyncValue) { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let (_0, _1) = try requestDeviceAuthenticationToken()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 1:
			let (_0, _1) = try requestCachedDeviceAuthenticationToken(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 100:
			let (_0, _1) = try requestRegisterDeviceAccount()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 101:
			let (_0, _1) = try requestUnregisterDeviceAccount()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 102:
			let (_0, _1) = try requestDeviceAccountStatus()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 103:
			let ret = try getDeviceAccountInfo()
			om.initialize(0, 0, 0)
		
		case 104:
			let (_0, _1) = try requestDeviceRegistrationInfo()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 105:
			let (_0, _1) = try requestTransferDeviceAccount()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 106:
			let (_0, _1) = try requestSyncRegistration()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 107:
			let ret = try isOwnDeviceId(nil)
			om.initialize(0, 0, 0)
		
		case 200:
			let (_0, _1) = try requestRegisterNotificationToken(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 300:
			let (_0, _1) = try requestUnlinkDevice(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 301:
			let (_0, _1) = try requestUnlinkDeviceIntegrated(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 302:
			let (_0, _1) = try requestLinkDevice(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 303:
			let ret = try hasDeviceLink(nil)
			om.initialize(0, 0, 0)
		
		case 304:
			let (_0, _1) = try requestUnlinkDeviceAll()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 305:
			let (_0, _1) = try requestCreateVirtualAccount(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 306:
			let (_0, _1) = try requestDeviceLinkStatus(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 400:
			let ret = try getAccountByVirtualAccount(nil)
			om.initialize(0, 0, 0)
		
		case 500:
			let (_0, _1) = try requestSyncTicket()
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 501:
			let (_0, _1) = try requestDownloadTicket(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		case 502:
			let (_0, _1) = try requestDownloadTicketForPrepurchasedContents(nil)
			om.initialize(1, 1, 0)
			om.copy(0, _0)
			om.move(0, _1)
		
		default:
			print("Unhandled command to nn::nim::detail::IShopServiceManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNimDetail_IAsyncValue: IpcService {
	func unknown0() throws -> Any? { throw IpcError.unimplemented }
	func unknown1(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown2() throws { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nim::detail::IAsyncValue: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNimDetail_IAsyncResult: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			try unknown2(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nim::detail::IAsyncResult: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNimDetail_IAsyncProgressResult: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2() throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			try unknown3(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nim::detail::IAsyncProgressResult: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNimDetail_IAsyncData: IpcService {
	func unknown0() throws { throw IpcError.unimplemented }
	func unknown1() throws { throw IpcError.unimplemented }
	func unknown2() throws -> Any? { throw IpcError.unimplemented }
	func unknown3(_ _0: Any?, _ _1: Buffer<UInt8>) throws -> Any? { throw IpcError.unimplemented }
	func unknown4() throws -> Any? { throw IpcError.unimplemented }
	func unknown5(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0()
			om.initialize(0, 0, 0)
		
		case 1:
			try unknown1()
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try unknown2()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try unknown3(nil, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try unknown4()
			om.initialize(0, 0, 0)
		
		case 5:
			try unknown5(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nim::detail::IAsyncData: \(im.commandId)")
			try! bailout()
		}
	}
}
