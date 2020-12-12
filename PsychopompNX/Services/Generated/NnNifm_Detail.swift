class NnNifmDetail_IScanRequest: IpcService {
	func submit() throws { throw IpcError.unimplemented }
	func isProcessing() throws -> UInt8 { throw IpcError.unimplemented }
	func getResult() throws { throw IpcError.unimplemented }
	func getSystemEventReadableHandle() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try submit()
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try isProcessing()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 2:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getSystemEventReadableHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::nifm::detail::IScanRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNifmDetail_INetworkProfile: IpcService {
	func update(_ _0: Buffer<NnNifmDetailSf_NetworkProfileData>) throws -> NnUtil_Uuid { throw IpcError.unimplemented }
	func persistOld(_ _0: NnUtil_Uuid) throws -> NnUtil_Uuid { throw IpcError.unimplemented }
	func persist() throws -> NnUtil_Uuid { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try update(im.getBuffer(0x19, 0) as Buffer<NnNifmDetailSf_NetworkProfileData>)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1:
			let ret = try persistOld(im.getBytes(8, 0x10))
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 2:
			let ret = try persist()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::nifm::detail::INetworkProfile: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNifmDetail_IRequest: IpcService {
	func getRequestState() throws -> UInt32 { throw IpcError.unimplemented }
	func getResult() throws { throw IpcError.unimplemented }
	func getSystemEventReadableHandles() throws -> (KObject, KObject) { throw IpcError.unimplemented }
	func cancel() throws { throw IpcError.unimplemented }
	func submit() throws { throw IpcError.unimplemented }
	func setRequirement(_ _0: NnNifm_Requirement) throws { throw IpcError.unimplemented }
	func setRequirementPreset(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func setPriority(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setNetworkProfileId(_ _0: NnUtil_Uuid) throws { throw IpcError.unimplemented }
	func setRejectable(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setConnectionConfirmationOption(_ _0: Int8) throws { throw IpcError.unimplemented }
	func setPersistent(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setInstant(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setSustainable(_ _0: UInt8, _ _1: UInt8) throws { throw IpcError.unimplemented }
	func setRawPriority(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setGreedy(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setSharable(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setRequirementByRevision(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getRequirement() throws -> NnNifm_Requirement { throw IpcError.unimplemented }
	func getRevision() throws -> UInt32 { throw IpcError.unimplemented }
	func getAppletInfo(_ _0: UInt32, _ _1: Buffer<UInt8>) throws -> (UInt32, UInt32, UInt32) { throw IpcError.unimplemented }
	func getAdditionalInfo(_ _0: Buffer<NnNifm_AdditionalInfo>) throws -> UInt32 { throw IpcError.unimplemented }
	func setKeptInSleep(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func registerSocketDescriptor(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func unregisterSocketDescriptor(_ _0: UInt32) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getRequestState()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try getResult()
			om.initialize(0, 0, 0)
		
		case 2:
			let (_0, _1) = try getSystemEventReadableHandles()
			om.initialize(0, 2, 0)
			om.copy(0, _0)
			om.copy(1, _1)
		
		case 3:
			try cancel()
			om.initialize(0, 0, 0)
		
		case 4:
			try submit()
			om.initialize(0, 0, 0)
		
		case 5:
			try setRequirement(im.getBytes(8, 0x24))
			om.initialize(0, 0, 0)
		
		case 6:
			try setRequirementPreset(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 8:
			try setPriority(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 9:
			try setNetworkProfileId(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 10:
			try setRejectable(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 11:
			try setConnectionConfirmationOption(im.getData(8) as Int8)
			om.initialize(0, 0, 0)
		
		case 12:
			try setPersistent(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 13:
			try setInstant(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 14:
			try setSustainable(im.getData(8) as UInt8, im.getData(9) as UInt8)
			om.initialize(0, 0, 0)
		
		case 15:
			try setRawPriority(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 16:
			try setGreedy(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 17:
			try setSharable(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 18:
			try setRequirementByRevision(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 19:
			let ret = try getRequirement()
			om.initialize(0, 0, 36)
			if ret.count != 0x24 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 20:
			let ret = try getRevision()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 21:
			let (_0, _1, _2) = try getAppletInfo(im.getData(8) as UInt32, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 12)
			om.setData(8, _0)
			om.setData(12, _1)
			om.setData(16, _2)
		
		case 22:
			let ret = try getAdditionalInfo(im.getBuffer(0x16, 0) as Buffer<NnNifm_AdditionalInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 23:
			try setKeptInSleep(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 24:
			try registerSocketDescriptor(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 25:
			try unregisterSocketDescriptor(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nifm::detail::IRequest: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNifmDetail_IStaticService: IpcService {
	func createGeneralServiceOld() throws -> NnNifmDetail_IGeneralService { throw IpcError.unimplemented }
	func createGeneralService(_ _0: UInt64, _ _1: Pid) throws -> NnNifmDetail_IGeneralService { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 4:
			let ret = try createGeneralServiceOld()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 5:
			let ret = try createGeneralService(im.getData(8) as UInt64, im.pid)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::nifm::detail::IStaticService: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnNifmDetail_IGeneralService: IpcService {
	func getClientId(_ _0: Buffer<NnNifm_ClientId>) throws { throw IpcError.unimplemented }
	func createScanRequest() throws -> NnNifmDetail_IScanRequest { throw IpcError.unimplemented }
	func createRequest(_ _0: UInt32) throws -> NnNifmDetail_IRequest { throw IpcError.unimplemented }
	func getCurrentNetworkProfile(_ _0: Buffer<NnNifmDetailSf_NetworkProfileData>) throws { throw IpcError.unimplemented }
	func enumerateNetworkInterfaces(_ _0: UInt32, _ _1: Buffer<NnNifmDetailSf_NetworkInterfaceInfo>) throws -> UInt32 { throw IpcError.unimplemented }
	func enumerateNetworkProfiles(_ _0: UInt8, _ _1: Buffer<NnNifmDetailSf_NetworkProfileBasicInfo>) throws -> UInt32 { throw IpcError.unimplemented }
	func getNetworkProfile(_ _0: NnUtil_Uuid, _ _1: Buffer<NnNifmDetailSf_NetworkProfileData>) throws { throw IpcError.unimplemented }
	func setNetworkProfile(_ _0: Buffer<NnNifmDetailSf_NetworkProfileData>) throws -> NnUtil_Uuid { throw IpcError.unimplemented }
	func removeNetworkProfile(_ _0: NnUtil_Uuid) throws { throw IpcError.unimplemented }
	func getScanDataOld(_ _0: Buffer<NnNifmDetailSf_AccessPointDataOld>) throws -> UInt32 { throw IpcError.unimplemented }
	func getCurrentIpAddress() throws -> NnNifm_IpV4Address { throw IpcError.unimplemented }
	func getCurrentAccessPointOld(_ _0: Buffer<NnNifmDetailSf_AccessPointDataOld>) throws { throw IpcError.unimplemented }
	func createTemporaryNetworkProfile(_ _0: Buffer<NnNifmDetailSf_NetworkProfileData>) throws -> (NnUtil_Uuid, NnNifmDetail_INetworkProfile) { throw IpcError.unimplemented }
	func getCurrentIpConfigInfo() throws -> (NnNifm_IpAddressSetting, NnNifm_DnsSetting) { throw IpcError.unimplemented }
	func setWirelessCommunicationEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func isWirelessCommunicationEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func getInternetConnectionStatus() throws -> NnNifmDetailSf_InternetConnectionStatus { throw IpcError.unimplemented }
	func setEthernetCommunicationEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func isEthernetCommunicationEnabled() throws -> UInt8 { throw IpcError.unimplemented }
	func isAnyInternetRequestAccepted(_ _0: Buffer<NnNifm_ClientId>) throws -> UInt8 { throw IpcError.unimplemented }
	func isAnyForegroundRequestAccepted() throws -> UInt8 { throw IpcError.unimplemented }
	func putToSleep() throws { throw IpcError.unimplemented }
	func wakeUp() throws { throw IpcError.unimplemented }
	func getSsidListVersion() throws -> NnNifm_SsidListVersion { throw IpcError.unimplemented }
	func setExclusiveClient(_ _0: Buffer<NnNifm_ClientId>) throws { throw IpcError.unimplemented }
	func getDefaultIpSetting(_ _0: Buffer<NnNifm_IpSettingData>) throws { throw IpcError.unimplemented }
	func setDefaultIpSetting(_ _0: Buffer<NnNifm_IpSettingData>) throws { throw IpcError.unimplemented }
	func setWirelessCommunicationEnabledForTest(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func setEthernetCommunicationEnabledForTest(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getTelemetorySystemEventReadableHandle() throws -> KObject { throw IpcError.unimplemented }
	func getTelemetryInfo(_ _0: Buffer<NnNifm_TelemetryInfo>) throws { throw IpcError.unimplemented }
	func confirmSystemAvailability() throws { throw IpcError.unimplemented }
	func setBackgroundRequestEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func getScanData(_ _0: Buffer<NnNifmDetailSf_AccessPointData>) throws -> UInt32 { throw IpcError.unimplemented }
	func getCurrentAccessPoint(_ _0: Buffer<NnNifmDetailSf_AccessPointData>) throws { throw IpcError.unimplemented }
	func shutdown() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 1:
			try getClientId(im.getBuffer(0x1a, 0) as Buffer<NnNifm_ClientId>)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try createScanRequest()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 4:
			let ret = try createRequest(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 5:
			try getCurrentNetworkProfile(im.getBuffer(0x1a, 0) as Buffer<NnNifmDetailSf_NetworkProfileData>)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try enumerateNetworkInterfaces(im.getData(8) as UInt32, im.getBuffer(0xa, 0) as Buffer<NnNifmDetailSf_NetworkInterfaceInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 7:
			let ret = try enumerateNetworkProfiles(im.getData(8) as UInt8, im.getBuffer(0x6, 0) as Buffer<NnNifmDetailSf_NetworkProfileBasicInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 8:
			try getNetworkProfile(im.getBytes(8, 0x10), im.getBuffer(0x1a, 0) as Buffer<NnNifmDetailSf_NetworkProfileData>)
			om.initialize(0, 0, 0)
		
		case 9:
			let ret = try setNetworkProfile(im.getBuffer(0x19, 0) as Buffer<NnNifmDetailSf_NetworkProfileData>)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 10:
			try removeNetworkProfile(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getScanDataOld(im.getBuffer(0x6, 0) as Buffer<NnNifmDetailSf_AccessPointDataOld>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 12:
			let ret = try getCurrentIpAddress()
			om.initialize(0, 0, 4)
			if ret.count != 0x4 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 13:
			try getCurrentAccessPointOld(im.getBuffer(0x1a, 0) as Buffer<NnNifmDetailSf_AccessPointDataOld>)
			om.initialize(0, 0, 0)
		
		case 14:
			let (_0, _1) = try createTemporaryNetworkProfile(im.getBuffer(0x19, 0) as Buffer<NnNifmDetailSf_NetworkProfileData>)
			om.initialize(1, 0, 16)
			if _0.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.move(0, _1)
		
		case 15:
			let (_0, _1) = try getCurrentIpConfigInfo()
			om.initialize(0, 0, 22)
			if _0.count != 0xd { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			if _1.count != 0x9 { throw IpcError.byteCountMismatch }
			om.setBytes(21, _1)
		
		case 16:
			try setWirelessCommunicationEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try isWirelessCommunicationEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 18:
			let ret = try getInternetConnectionStatus()
			om.initialize(0, 0, 3)
			if ret.count != 0x3 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 19:
			try setEthernetCommunicationEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try isEthernetCommunicationEnabled()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 21:
			let ret = try isAnyInternetRequestAccepted(im.getBuffer(0x19, 0) as Buffer<NnNifm_ClientId>)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 22:
			let ret = try isAnyForegroundRequestAccepted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 23:
			try putToSleep()
			om.initialize(0, 0, 0)
		
		case 24:
			try wakeUp()
			om.initialize(0, 0, 0)
		
		case 25:
			let ret = try getSsidListVersion()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 26:
			try setExclusiveClient(im.getBuffer(0x19, 0) as Buffer<NnNifm_ClientId>)
			om.initialize(0, 0, 0)
		
		case 27:
			try getDefaultIpSetting(im.getBuffer(0x1a, 0) as Buffer<NnNifm_IpSettingData>)
			om.initialize(0, 0, 0)
		
		case 28:
			try setDefaultIpSetting(im.getBuffer(0x19, 0) as Buffer<NnNifm_IpSettingData>)
			om.initialize(0, 0, 0)
		
		case 29:
			try setWirelessCommunicationEnabledForTest(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 30:
			try setEthernetCommunicationEnabledForTest(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try getTelemetorySystemEventReadableHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 32:
			try getTelemetryInfo(im.getBuffer(0x16, 0) as Buffer<NnNifm_TelemetryInfo>)
			om.initialize(0, 0, 0)
		
		case 33:
			try confirmSystemAvailability()
			om.initialize(0, 0, 0)
		
		case 34:
			try setBackgroundRequestEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 35:
			let ret = try getScanData(im.getBuffer(0x6, 0) as Buffer<NnNifmDetailSf_AccessPointData>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 36:
			try getCurrentAccessPoint(im.getBuffer(0x1a, 0) as Buffer<NnNifmDetailSf_AccessPointData>)
			om.initialize(0, 0, 0)
		
		case 37:
			try shutdown()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nifm::detail::IGeneralService: \(im.commandId)")
			try! bailout()
		}
	}
}