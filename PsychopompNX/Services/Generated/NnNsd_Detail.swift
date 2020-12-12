class NnNsdDetail_IManager: IpcService {
	func getSettingName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetSettingName") }
	func getEnvironmentIdentifier(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetEnvironmentIdentifier") }
	func getDeviceId() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetDeviceId") }
	func deleteSettings(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#DeleteSettings") }
	func importSettings(_ _0: UInt32, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#ImportSettings") }
	func resolve(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#Resolve") }
	func resolveEx(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#ResolveEx") }
	func getNasServiceSetting(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasServiceSetting") }
	func getNasServiceSettingEx(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasServiceSettingEx") }
	func getNasRequestFqdn(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasRequestFqdn") }
	func getNasRequestFqdnEx(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasRequestFqdnEx") }
	func getNasApiFqdn(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasApiFqdn") }
	func getNasApiFqdnEx(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasApiFqdnEx") }
	func getCurrentSetting(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetCurrentSetting") }
	func readSaveDataFromFsForTest(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#ReadSaveDataFromFsForTest") }
	func writeSaveDataToFsForTest(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#WriteSaveDataToFsForTest") }
	func deleteSaveDataOfFsForTest() throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#DeleteSaveDataOfFsForTest") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 10:
			try getSettingName(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 11:
			try getEnvironmentIdentifier(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getDeviceId()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 13:
			try deleteSettings(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 14:
			try importSettings(im.getData(8) as UInt32, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			try resolve(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 21:
			let ret = try resolveEx(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 30:
			try getNasServiceSetting(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 31:
			let ret = try getNasServiceSettingEx(im.getBuffer(0x15, 0) as Buffer<UInt8>, im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 40:
			try getNasRequestFqdn(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 41:
			let ret = try getNasRequestFqdnEx(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 42:
			try getNasApiFqdn(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 43:
			let ret = try getNasApiFqdnEx(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 50:
			try getCurrentSetting(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 60:
			try readSaveDataFromFsForTest(im.getBuffer(0x16, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 61:
			try writeSaveDataToFsForTest(im.getBuffer(0x15, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 62:
			try deleteSaveDataOfFsForTest()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::nsd::detail::IManager: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnNsdDetail_IManager_Impl: NnNsdDetail_IManager {
	override func getSettingName(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetSettingName") }
	override func getEnvironmentIdentifier(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetEnvironmentIdentifier") }
	override func getDeviceId() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetDeviceId") }
	override func deleteSettings(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#DeleteSettings") }
	override func importSettings(_ _0: UInt32, _ _1: Buffer<UInt8>, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#ImportSettings") }
	override func resolve(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#Resolve") }
	override func resolveEx(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#ResolveEx") }
	override func getNasServiceSetting(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasServiceSetting") }
	override func getNasServiceSettingEx(_ _0: Buffer<UInt8>, _ _1: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasServiceSettingEx") }
	override func getNasRequestFqdn(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasRequestFqdn") }
	override func getNasRequestFqdnEx(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasRequestFqdnEx") }
	override func getNasApiFqdn(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasApiFqdn") }
	override func getNasApiFqdnEx(_ _0: Buffer<UInt8>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetNasApiFqdnEx") }
	override func getCurrentSetting(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#GetCurrentSetting") }
	override func readSaveDataFromFsForTest(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#ReadSaveDataFromFsForTest") }
	override func writeSaveDataToFsForTest(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#WriteSaveDataToFsForTest") }
	override func deleteSaveDataOfFsForTest() throws { throw IpcError.unimplemented(name: "nn::nsd::detail::nn::nsd::detail::IManager#DeleteSaveDataOfFsForTest") }
}
*/
