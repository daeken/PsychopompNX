class NnMiiDetail_IImageDatabaseService: IpcService {
	func initialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#Initialize") }
	func reload(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#Reload") }
	func getCount(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#GetCount") }
	func isEmpty(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#IsEmpty") }
	func isFull(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#IsFull") }
	func getAttribute(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#GetAttribute") }
	func loadImage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#LoadImage") }
	func addOrUpdateImage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#AddOrUpdateImage") }
	func deleteImages(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#DeleteImages") }
	func deleteFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#DeleteFile") }
	func destroyFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#DestroyFile") }
	func importFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#ImportFile") }
	func exportFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#ExportFile") }
	func forceInitialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#ForceInitialize") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try initialize(nil)
			om.initialize(0, 0, 0)
		
		case 10:
			let ret = try reload(nil)
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getCount(nil)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try isEmpty(nil)
			om.initialize(0, 0, 0)
		
		case 13:
			let ret = try isFull(nil)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try getAttribute(nil)
			om.initialize(0, 0, 0)
		
		case 15:
			let ret = try loadImage(nil)
			om.initialize(0, 0, 0)
		
		case 16:
			let ret = try addOrUpdateImage(nil)
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try deleteImages(nil)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try deleteFile(nil)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try destroyFile(nil)
			om.initialize(0, 0, 0)
		
		case 102:
			let ret = try importFile(nil)
			om.initialize(0, 0, 0)
		
		case 103:
			let ret = try exportFile(nil)
			om.initialize(0, 0, 0)
		
		case 104:
			let ret = try forceInitialize(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::mii::detail::IImageDatabaseService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnMiiDetail_IImageDatabaseService_Impl: NnMiiDetail_IImageDatabaseService {
	override func initialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#Initialize") }
	override func reload(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#Reload") }
	override func getCount(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#GetCount") }
	override func isEmpty(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#IsEmpty") }
	override func isFull(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#IsFull") }
	override func getAttribute(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#GetAttribute") }
	override func loadImage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#LoadImage") }
	override func addOrUpdateImage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#AddOrUpdateImage") }
	override func deleteImages(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#DeleteImages") }
	override func deleteFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#DeleteFile") }
	override func destroyFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#DestroyFile") }
	override func importFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#ImportFile") }
	override func exportFile(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#ExportFile") }
	override func forceInitialize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IImageDatabaseService#ForceInitialize") }
}
*/

class NnMiiDetail_IStaticService: IpcService {
	func getDatabaseService(_ _0: UInt32) throws -> NnMiiDetail_IDatabaseService { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IStaticService#GetDatabaseService") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getDatabaseService(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		default:
			print("Unhandled command to nn::mii::detail::IStaticService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnMiiDetail_IStaticService_Impl: NnMiiDetail_IStaticService {
	override func getDatabaseService(_ _0: UInt32) throws -> NnMiiDetail_IDatabaseService { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IStaticService#GetDatabaseService") }
}
*/

class NnMiiDetail_IDatabaseService: IpcService {
	func isUpdated(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#IsUpdated") }
	func isFullDatabase() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#IsFullDatabase") }
	func getCount(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#GetCount") }
	func get(_ _0: UInt32, _ _1: Buffer<NnMii_CharInfoElement>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get") }
	func get1(_ _0: UInt32, _ _1: Buffer<NnMii_CharInfo>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get1") }
	func updateLatest(_ _0: NnMii_CharInfo, _ _1: UInt32) throws -> NnMii_CharInfo { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#UpdateLatest") }
	func buildRandom(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws -> NnMii_CharInfo { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#BuildRandom") }
	func buildDefault(_ _0: UInt32) throws -> NnMii_CharInfo { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#BuildDefault") }
	func get2(_ _0: UInt32, _ _1: Buffer<NnMii_StoreDataElement>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get2") }
	func get3(_ _0: UInt32, _ _1: Buffer<NnMii_StoreData>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get3") }
	func updateLatest1(_ _0: NnMii_StoreData, _ _1: UInt32) throws -> NnMii_StoreData { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#UpdateLatest1") }
	func findIndex(_ _0: NnMii_CreateId, _ _1: UInt8) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#FindIndex") }
	func move(_ _0: NnMii_CreateId, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Move") }
	func addOrReplace(_ _0: NnMii_StoreData) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#AddOrReplace") }
	func delete(_ _0: NnMii_CreateId) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Delete") }
	func destroyFile() throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#DestroyFile") }
	func deleteFile() throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#DeleteFile") }
	func format() throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Format") }
	func _import(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Import") }
	func export(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Export") }
	func isBrokenDatabaseWithClearFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#IsBrokenDatabaseWithClearFlag") }
	func getIndex(_ _0: NnMii_CharInfo) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#GetIndex") }
	func setInterfaceVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#SetInterfaceVersion") }
	func convert(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Convert") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try isUpdated(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1:
			let ret = try isFullDatabase()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 2:
			let ret = try getCount(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try get(im.getData(8) as UInt32, im.getBuffer(0x6, 0)! as Buffer<NnMii_CharInfoElement>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try get1(im.getData(8) as UInt32, im.getBuffer(0x6, 0)! as Buffer<NnMii_CharInfo>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 5:
			let ret = try updateLatest(im.getBytes(8, 0x58), im.getData(96) as UInt32)
			om.initialize(0, 0, 88)
			if ret.count != 0x58 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 6:
			let ret = try buildRandom(im.getData(8) as UInt32, im.getData(12) as UInt32, im.getData(16) as UInt32)
			om.initialize(0, 0, 88)
			if ret.count != 0x58 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 7:
			let ret = try buildDefault(im.getData(8) as UInt32)
			om.initialize(0, 0, 88)
			if ret.count != 0x58 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 8:
			let ret = try get2(im.getData(8) as UInt32, im.getBuffer(0x6, 0)! as Buffer<NnMii_StoreDataElement>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			let ret = try get3(im.getData(8) as UInt32, im.getBuffer(0x6, 0)! as Buffer<NnMii_StoreData>)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			let ret = try updateLatest1(im.getBytes(8, 0x44), im.getData(76) as UInt32)
			om.initialize(0, 0, 68)
			if ret.count != 0x44 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 11:
			let ret = try findIndex(im.getBytes(8, 0x10), im.getData(24) as UInt8)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 12:
			try move(im.getBytes(8, 0x10), im.getData(24) as UInt32)
			om.initialize(0, 0, 0)
		
		case 13:
			try addOrReplace(im.getBytes(8, 0x44))
			om.initialize(0, 0, 0)
		
		case 14:
			try delete(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 15:
			try destroyFile()
			om.initialize(0, 0, 0)
		
		case 16:
			try deleteFile()
			om.initialize(0, 0, 0)
		
		case 17:
			try format()
			om.initialize(0, 0, 0)
		
		case 18:
			try _import(im.getBuffer(0x5, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 19:
			try export(im.getBuffer(0x6, 0)! as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 20:
			let ret = try isBrokenDatabaseWithClearFlag()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 21:
			let ret = try getIndex(im.getBytes(8, 0x58))
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			let ret = try setInterfaceVersion(nil)
			om.initialize(0, 0, 0)
		
		case 23:
			let ret = try convert(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::mii::detail::IDatabaseService: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnMiiDetail_IDatabaseService_Impl: NnMiiDetail_IDatabaseService {
	override func isUpdated(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#IsUpdated") }
	override func isFullDatabase() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#IsFullDatabase") }
	override func getCount(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#GetCount") }
	override func get(_ _0: UInt32, _ _1: Buffer<NnMii_CharInfoElement>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get") }
	override func get1(_ _0: UInt32, _ _1: Buffer<NnMii_CharInfo>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get1") }
	override func updateLatest(_ _0: NnMii_CharInfo, _ _1: UInt32) throws -> NnMii_CharInfo { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#UpdateLatest") }
	override func buildRandom(_ _0: UInt32, _ _1: UInt32, _ _2: UInt32) throws -> NnMii_CharInfo { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#BuildRandom") }
	override func buildDefault(_ _0: UInt32) throws -> NnMii_CharInfo { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#BuildDefault") }
	override func get2(_ _0: UInt32, _ _1: Buffer<NnMii_StoreDataElement>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get2") }
	override func get3(_ _0: UInt32, _ _1: Buffer<NnMii_StoreData>) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Get3") }
	override func updateLatest1(_ _0: NnMii_StoreData, _ _1: UInt32) throws -> NnMii_StoreData { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#UpdateLatest1") }
	override func findIndex(_ _0: NnMii_CreateId, _ _1: UInt8) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#FindIndex") }
	override func move(_ _0: NnMii_CreateId, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Move") }
	override func addOrReplace(_ _0: NnMii_StoreData) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#AddOrReplace") }
	override func delete(_ _0: NnMii_CreateId) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Delete") }
	override func destroyFile() throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#DestroyFile") }
	override func deleteFile() throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#DeleteFile") }
	override func format() throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Format") }
	override func _import(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Import") }
	override func export(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Export") }
	override func isBrokenDatabaseWithClearFlag() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#IsBrokenDatabaseWithClearFlag") }
	override func getIndex(_ _0: NnMii_CharInfo) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#GetIndex") }
	override func setInterfaceVersion(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#SetInterfaceVersion") }
	override func convert(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::mii::detail::nn::mii::detail::IDatabaseService#Convert") }
}
*/
