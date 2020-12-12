enum NnFssrvSf_Partition: UInt32 {
    case bootPartition1Root = 0
    case bootPartition2Root = 10
    case userDataRoot = 20
    case bootConfigAndPackage2Part1 = 21
    case bootConfigAndPackage2Part2 = 22
    case bootConfigAndPackage2Part3 = 23
    case bootConfigAndPackage2Part4 = 24
    case bootConfigAndPackage2Part5 = 25
    case bootConfigAndPackage2Part6 = 26
    case calibrationBinary = 27
    case calibrationFile = 28
    case safeMode = 29
    case systemProperEncryption = 30
    case user = 31
}
struct NnFssrvSf_IDirectoryEntry {
    var path: [UInt8]
    var unk1: UInt32
    var directory_entry_type: NnFssrvSf_DirectoryEntryType
    var filesize: UInt64

    init(path: [UInt8], unk1: UInt32, directory_entry_type: NnFssrvSf_DirectoryEntryType, filesize: UInt64) {
        self.path = path
        self.unk1 = unk1
        self.directory_entry_type = directory_entry_type
        self.filesize = filesize
    }
}
enum NnFssrvSf_FileSystemType: UInt32 {
    case invalid = 0
    case invalid2 = 1
    case logo = 2
    case contentControl = 3
    case contentManual = 4
    case contentMeta = 5
    case contentData = 6
    case applicationPackage = 7
}
typealias NnFssrvSf_SaveCreateStruct = [UInt8]
typealias NnFssrvSf_SaveStruct = [UInt8]
enum NnFssrvSf_DirectoryEntryType: UInt8 {
    case directory = 0
    case file = 1
}

class NnFssrvSf_IStorage: IpcService {
	func read(_ offset: UInt64, _ length: UInt64, _ data: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func write(_ offset: UInt64, _ length: UInt64, _ data: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func flush() throws { throw IpcError.unimplemented }
	func setSize(_ size: UInt64) throws { throw IpcError.unimplemented }
	func getSize() throws -> UInt64 { throw IpcError.unimplemented }
	func operateRange(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws -> [UInt8] { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try read(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try write(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try flush()
			om.initialize(0, 0, 0)
		
		case 3:
			try setSize(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 5:
			let ret = try operateRange(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 64)
			if ret.count != 0x40 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IStorage: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IFile: IpcService {
	func read(_ _0: UInt32, _ offset: UInt64, _ size: UInt64, _ out_buf: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func write(_ _0: UInt32, _ offset: UInt64, _ size: UInt64, _ in_buf: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func flush() throws { throw IpcError.unimplemented }
	func setSize(_ size: UInt64) throws { throw IpcError.unimplemented }
	func getSize() throws -> UInt64 { throw IpcError.unimplemented }
	func operateRange(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws -> [UInt8] { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try read(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			try write(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getBuffer(0x45, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try flush()
			om.initialize(0, 0, 0)
		
		case 3:
			try setSize(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 4:
			let ret = try getSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 5:
			let ret = try operateRange(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getData(24) as UInt64)
			om.initialize(0, 0, 64)
			if ret.count != 0x40 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IFile: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IFileSystemProxy: IpcService {
	func openFileSystem(_ filesystem_type: NnFssrvSf_FileSystemType, _ _1: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func setCurrentProcess(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented }
	func openDataFileSystemByCurrentProcess() throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openFileSystemWithPatch(_ filesystem_type: NnFssrvSf_FileSystemType, _ id: Nn_ApplicationId) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openFileSystemWithId(_ filesystem_type: NnFssrvSf_FileSystemType, _ tid: Nn_ApplicationId, _ _2: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openDataFileSystemByApplicationId(_ u64: Nn_ApplicationId) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openBisFileSystem(_ partitionId: NnFssrvSf_Partition, _ _1: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openBisStorage(_ partitionId: NnFssrvSf_Partition) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented }
	func invalidateBisCache() throws { throw IpcError.unimplemented }
	func openHostFileSystem(_ _0: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openSdCardFileSystem() throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func formatSdCardFileSystem() throws { throw IpcError.unimplemented }
	func deleteSaveDataFileSystem(_ tid: Nn_ApplicationId) throws { throw IpcError.unimplemented }
	func createSaveDataFileSystem(_ save_struct: NnFssrvSf_SaveStruct, _ ave_create_struct: NnFssrvSf_SaveCreateStruct, _ _2: [UInt8]) throws { throw IpcError.unimplemented }
	func createSaveDataFileSystemBySystemSaveDataId(_ _0: NnFssrvSf_SaveStruct, _ _1: NnFssrvSf_SaveCreateStruct) throws { throw IpcError.unimplemented }
	func registerSaveDataFileSystemAtomicDeletion(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteSaveDataFileSystemBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func formatSdCardDryRun() throws { throw IpcError.unimplemented }
	func isExFatSupported() throws -> UInt8 { throw IpcError.unimplemented }
	func deleteSaveDataFileSystemBySaveDataAttribute(_ _0: UInt8, _ _1: [UInt8]) throws { throw IpcError.unimplemented }
	func openGameCardStorage(_ _0: UInt32, _ _1: UInt32) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented }
	func openGameCardFileSystem(_ _0: UInt32, _ _1: UInt32) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func extendSaveDataFileSystem(_ _0: UInt8, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64) throws { throw IpcError.unimplemented }
	func deleteCacheStorage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getCacheStorageSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func openSaveDataFileSystem(_ save_data_space_id: UInt8, _ save_struct: NnFssrvSf_SaveStruct) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openSaveDataFileSystemBySystemSaveDataId(_ save_data_space_id: UInt8, _ save_struct: NnFssrvSf_SaveStruct) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openReadOnlySaveDataFileSystem(_ save_data_space_id: UInt8, _ save_struct: NnFssrvSf_SaveStruct) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func readSaveDataFileSystemExtraDataBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func readSaveDataFileSystemExtraData(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func writeSaveDataFileSystemExtraData(_ _0: UInt8, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func openSaveDataInfoReader() throws -> NnFssrvSf_ISaveDataInfoReader { throw IpcError.unimplemented }
	func openSaveDataInfoReaderBySaveDataSpaceId(_ _0: UInt8) throws -> NnFssrvSf_ISaveDataInfoReader { throw IpcError.unimplemented }
	func openCacheStorageList(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func openSaveDataInternalStorageFileSystem(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func updateSaveDataMacForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func writeSaveDataFileSystemExtraData2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func openSaveDataMetaFile(_ _0: UInt8, _ _1: UInt32, _ _2: [UInt8]) throws -> NnFssrvSf_IFile { throw IpcError.unimplemented }
	func openSaveDataTransferManager() throws -> NnFssrvSf_ISaveDataTransferManager { throw IpcError.unimplemented }
	func openSaveDataTransferManagerVersion2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func openImageDirectoryFileSystem(_ _0: UInt32) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openContentStorageFileSystem(_ content_storage_id: UInt32) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func openDataStorageByCurrentProcess() throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented }
	func openDataStorageByProgramId(_ tid: Nn_ApplicationId) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented }
	func openDataStorageByDataId(_ storage_id: UInt8, _ tid: Nn_ApplicationId) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented }
	func openPatchDataStorageByCurrentProcess() throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented }
	func openDeviceOperator() throws -> NnFssrvSf_IDeviceOperator { throw IpcError.unimplemented }
	func openSdCardDetectionEventNotifier() throws -> NnFssrvSf_IEventNotifier { throw IpcError.unimplemented }
	func openGameCardDetectionEventNotifier() throws -> NnFssrvSf_IEventNotifier { throw IpcError.unimplemented }
	func openSystemDataUpdateEventNotifier(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func notifySystemDataUpdateEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setCurrentPosixTime(_ time: UInt64) throws { throw IpcError.unimplemented }
	func querySaveDataTotalSize(_ _0: UInt64, _ _1: UInt64) throws -> UInt64 { throw IpcError.unimplemented }
	func verifySaveDataFileSystem(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func corruptSaveDataFileSystem(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func createPaddingFile(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func deleteAllPaddingFiles() throws { throw IpcError.unimplemented }
	func getRightsId(_ _0: UInt8, _ _1: UInt64) throws -> [UInt8] { throw IpcError.unimplemented }
	func registerExternalKey(_ _0: [UInt8], _ _1: [UInt8]) throws { throw IpcError.unimplemented }
	func unregisterAllExternalKey() throws { throw IpcError.unimplemented }
	func getRightsIdByPath(_ _0: Buffer<UInt8>) throws -> [UInt8] { throw IpcError.unimplemented }
	func getRightsIdAndKeyGenerationByPath(_ _0: Buffer<UInt8>) throws -> (UInt8, rights: [UInt8]) { throw IpcError.unimplemented }
	func setCurrentPosixTimeWithTimeDifference(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func getFreeSpaceSizeForSaveData(_ _0: UInt8) throws -> UInt64 { throw IpcError.unimplemented }
	func verifySaveDataFileSystemBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func corruptSaveDataFileSystemBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func querySaveDataInternalStorageTotalSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func setSdCardEncryptionSeed(_ _0: [UInt8]) throws { throw IpcError.unimplemented }
	func setSdCardAccessibility(_ _0: UInt8) throws { throw IpcError.unimplemented }
	func isSdCardAccessible() throws -> UInt8 { throw IpcError.unimplemented }
	func isSignedSystemPartitionOnSdCardValid() throws -> UInt8 { throw IpcError.unimplemented }
	func openAccessFailureResolver(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAccessFailureDetectionEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func isAccessFailureDetected(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func resolveAccessFailure(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func abandonAccessFailure(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func getAndClearFileSystemProxyErrorInfo() throws -> [UInt8] { throw IpcError.unimplemented }
	func setBisRootForHost(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setSaveDataSize(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func setSaveDataRootPath(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func disableAutoSaveDataCreation() throws { throw IpcError.unimplemented }
	func setGlobalAccessLogMode(_ mode: UInt32) throws { throw IpcError.unimplemented }
	func getGlobalAccessLogMode() throws -> UInt32 { throw IpcError.unimplemented }
	func outputAccessLogToSdCard(_ log_text: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func registerUpdatePartition() throws { throw IpcError.unimplemented }
	func openRegisteredUpdatePartition() throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func getAndClearMemoryReportInfo() throws -> [UInt8] { throw IpcError.unimplemented }
	func unknown1010(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func overrideSaveDataTransferTokenSignVerificationKey(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openFileSystem(NnFssrvSf_FileSystemType(rawValue: im.getData(8) as UInt32)!, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			try setCurrentProcess(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try openDataFileSystemByCurrentProcess()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 7:
			let ret = try openFileSystemWithPatch(NnFssrvSf_FileSystemType(rawValue: im.getData(8) as UInt32)!, im.getData(16) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 8:
			let ret = try openFileSystemWithId(NnFssrvSf_FileSystemType(rawValue: im.getData(8) as UInt32)!, im.getData(16) as UInt64, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 9:
			let ret = try openDataFileSystemByApplicationId(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 11:
			let ret = try openBisFileSystem(NnFssrvSf_Partition(rawValue: im.getData(8) as UInt32)!, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 12:
			let ret = try openBisStorage(NnFssrvSf_Partition(rawValue: im.getData(8) as UInt32)!)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 13:
			try invalidateBisCache()
			om.initialize(0, 0, 0)
		
		case 17:
			let ret = try openHostFileSystem(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 18:
			let ret = try openSdCardFileSystem()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 19:
			try formatSdCardFileSystem()
			om.initialize(0, 0, 0)
		
		case 21:
			try deleteSaveDataFileSystem(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 22:
			try createSaveDataFileSystem(im.getBytes(8, 0x40), im.getBytes(72, 0x40), im.getBytes(136, 0x10))
			om.initialize(0, 0, 0)
		
		case 23:
			try createSaveDataFileSystemBySystemSaveDataId(im.getBytes(8, 0x40), im.getBytes(72, 0x40))
			om.initialize(0, 0, 0)
		
		case 24:
			try registerSaveDataFileSystemAtomicDeletion(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 25:
			try deleteSaveDataFileSystemBySaveDataSpaceId(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 26:
			try formatSdCardDryRun()
			om.initialize(0, 0, 0)
		
		case 27:
			let ret = try isExFatSupported()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 28:
			try deleteSaveDataFileSystemBySaveDataAttribute(im.getData(8) as UInt8, im.getBytes(9, 0x40))
			om.initialize(0, 0, 0)
		
		case 30:
			let ret = try openGameCardStorage(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 31:
			let ret = try openGameCardFileSystem(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 32:
			try extendSaveDataFileSystem(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64)
			om.initialize(0, 0, 0)
		
		case 33:
			let ret = try deleteCacheStorage(nil)
			om.initialize(0, 0, 0)
		
		case 34:
			let ret = try getCacheStorageSize(nil)
			om.initialize(0, 0, 0)
		
		case 51:
			let ret = try openSaveDataFileSystem(im.getData(8) as UInt8, im.getBytes(9, 0x40))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 52:
			let ret = try openSaveDataFileSystemBySystemSaveDataId(im.getData(8) as UInt8, im.getBytes(9, 0x40))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 53:
			let ret = try openReadOnlySaveDataFileSystem(im.getData(8) as UInt8, im.getBytes(9, 0x40))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 57:
			try readSaveDataFileSystemExtraDataBySaveDataSpaceId(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 58:
			try readSaveDataFileSystemExtraData(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 59:
			try writeSaveDataFileSystemExtraData(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 60:
			let ret = try openSaveDataInfoReader()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 61:
			let ret = try openSaveDataInfoReaderBySaveDataSpaceId(im.getData(8) as UInt8)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 62:
			let ret = try openCacheStorageList(nil)
			om.initialize(0, 0, 0)
		
		case 64:
			let ret = try openSaveDataInternalStorageFileSystem(nil)
			om.initialize(0, 0, 0)
		
		case 65:
			let ret = try updateSaveDataMacForDebug(nil)
			om.initialize(0, 0, 0)
		
		case 66:
			let ret = try writeSaveDataFileSystemExtraData2(nil)
			om.initialize(0, 0, 0)
		
		case 80:
			let ret = try openSaveDataMetaFile(im.getData(8) as UInt8, im.getData(12) as UInt32, im.getBytes(16, 0x40))
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 81:
			let ret = try openSaveDataTransferManager()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 82:
			let ret = try openSaveDataTransferManagerVersion2(nil)
			om.initialize(0, 0, 0)
		
		case 100:
			let ret = try openImageDirectoryFileSystem(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 110:
			let ret = try openContentStorageFileSystem(im.getData(8) as UInt32)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 200:
			let ret = try openDataStorageByCurrentProcess()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 201:
			let ret = try openDataStorageByProgramId(im.getData(8) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 202:
			let ret = try openDataStorageByDataId(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 203:
			let ret = try openPatchDataStorageByCurrentProcess()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 400:
			let ret = try openDeviceOperator()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 500:
			let ret = try openSdCardDetectionEventNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 501:
			let ret = try openGameCardDetectionEventNotifier()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 510:
			let ret = try openSystemDataUpdateEventNotifier(nil)
			om.initialize(0, 0, 0)
		
		case 511:
			let ret = try notifySystemDataUpdateEvent(nil)
			om.initialize(0, 0, 0)
		
		case 600:
			try setCurrentPosixTime(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 601:
			let ret = try querySaveDataTotalSize(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 602:
			try verifySaveDataFileSystem(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 603:
			try corruptSaveDataFileSystem(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 604:
			try createPaddingFile(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 605:
			try deleteAllPaddingFiles()
			om.initialize(0, 0, 0)
		
		case 606:
			let ret = try getRightsId(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 607:
			try registerExternalKey(im.getBytes(8, 0x10), im.getBytes(24, 0x10))
			om.initialize(0, 0, 0)
		
		case 608:
			try unregisterAllExternalKey()
			om.initialize(0, 0, 0)
		
		case 609:
			let ret = try getRightsIdByPath(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 610:
			let (_0, _1) = try getRightsIdAndKeyGenerationByPath(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 17)
			om.setData(8, _0)
			if _1.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(9, _1)
		
		case 611:
			try setCurrentPosixTimeWithTimeDifference(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 612:
			let ret = try getFreeSpaceSizeForSaveData(im.getData(8) as UInt8)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 613:
			try verifySaveDataFileSystemBySaveDataSpaceId(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 614:
			try corruptSaveDataFileSystemBySaveDataSpaceId(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 615:
			let ret = try querySaveDataInternalStorageTotalSize(nil)
			om.initialize(0, 0, 0)
		
		case 620:
			try setSdCardEncryptionSeed(im.getBytes(8, 0x10))
			om.initialize(0, 0, 0)
		
		case 630:
			try setSdCardAccessibility(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 631:
			let ret = try isSdCardAccessible()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 640:
			let ret = try isSignedSystemPartitionOnSdCardValid()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 700:
			let ret = try openAccessFailureResolver(nil)
			om.initialize(0, 0, 0)
		
		case 701:
			let ret = try getAccessFailureDetectionEvent(nil)
			om.initialize(0, 0, 0)
		
		case 702:
			let ret = try isAccessFailureDetected(nil)
			om.initialize(0, 0, 0)
		
		case 710:
			let ret = try resolveAccessFailure(nil)
			om.initialize(0, 0, 0)
		
		case 720:
			let ret = try abandonAccessFailure(nil)
			om.initialize(0, 0, 0)
		
		case 800:
			let ret = try getAndClearFileSystemProxyErrorInfo()
			om.initialize(0, 0, 128)
			if ret.count != 0x80 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1000:
			try setBisRootForHost(im.getData(8) as UInt32, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1001:
			try setSaveDataSize(im.getData(8) as UInt64, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 1002:
			try setSaveDataRootPath(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1003:
			try disableAutoSaveDataCreation()
			om.initialize(0, 0, 0)
		
		case 1004:
			try setGlobalAccessLogMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 1005:
			let ret = try getGlobalAccessLogMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1006:
			try outputAccessLogToSdCard(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1007:
			try registerUpdatePartition()
			om.initialize(0, 0, 0)
		
		case 1008:
			let ret = try openRegisteredUpdatePartition()
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1009:
			let ret = try getAndClearMemoryReportInfo()
			om.initialize(0, 0, 128)
			if ret.count != 0x80 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 1010:
			let ret = try unknown1010(nil)
			om.initialize(0, 0, 0)
		
		case 1100:
			try overrideSaveDataTransferTokenSignVerificationKey(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IFileSystemProxy: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_ISaveDataImporter: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown1() throws -> UInt64 { throw IpcError.unimplemented }
	func unknown16(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown17() throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 16:
			try unknown16(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 17:
			try unknown17()
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::ISaveDataImporter: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IDeviceOperator: IpcService {
	func isSdCardInserted() throws -> UInt8 { throw IpcError.unimplemented }
	func getSdCardSpeedMode() throws -> UInt64 { throw IpcError.unimplemented }
	func getSdCardCid(_ _0: UInt64, _ cid: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getSdCardUserAreaSize() throws -> UInt64 { throw IpcError.unimplemented }
	func getSdCardProtectedAreaSize() throws -> UInt64 { throw IpcError.unimplemented }
	func getAndClearSdCardErrorInfo(_ _0: UInt64, _ _1: Buffer<UInt8>) throws -> ([UInt8], UInt64) { throw IpcError.unimplemented }
	func getMmcCid(_ _0: UInt64, _ cid: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getMmcSpeedMode() throws -> UInt64 { throw IpcError.unimplemented }
	func eraseMmc(_ _0: UInt32) throws { throw IpcError.unimplemented }
	func getMmcPartitionSize(_ _0: UInt32) throws -> UInt64 { throw IpcError.unimplemented }
	func getMmcPatrolCount() throws -> UInt32 { throw IpcError.unimplemented }
	func getAndClearMmcErrorInfo(_ _0: UInt64, _ _1: Buffer<UInt8>) throws -> ([UInt8], UInt64) { throw IpcError.unimplemented }
	func getMmcExtendedCsd(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func suspendMmcPatrol() throws { throw IpcError.unimplemented }
	func resumeMmcPatrol() throws { throw IpcError.unimplemented }
	func isGameCardInserted() throws -> UInt8 { throw IpcError.unimplemented }
	func eraseGameCard(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented }
	func getGameCardHandle() throws -> UInt32 { throw IpcError.unimplemented }
	func getGameCardUpdatePartitionInfo(_ _0: UInt32) throws -> (version: UInt32, tid: Nn_ApplicationId) { throw IpcError.unimplemented }
	func finalizeGameCardDriver() throws { throw IpcError.unimplemented }
	func getGameCardAttribute(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented }
	func getGameCardDeviceCertificate(_ _0: UInt32, _ _1: UInt64, _ certificate: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getGameCardAsicInfo(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getGameCardIdSet(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func writeToGameCard(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setVerifyWriteEnalbleFlag(_ flag: UInt8) throws { throw IpcError.unimplemented }
	func getGameCardImageHash(_ _0: UInt32, _ _1: UInt64, _ image_hash: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getGameCardErrorInfo(_ _0: UInt64, _ _1: UInt64, _ _2: Buffer<UInt8>, _ error_info: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func eraseAndWriteParamDirectly(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func readParamDirectly(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func forceEraseGameCard() throws { throw IpcError.unimplemented }
	func getGameCardErrorInfo2() throws -> [UInt8] { throw IpcError.unimplemented }
	func getGameCardErrorReportInfo() throws -> [UInt8] { throw IpcError.unimplemented }
	func getGameCardDeviceId(_ _0: UInt64, _ device_id: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func setSpeedEmulationMode(_ emu_mode: UInt32) throws { throw IpcError.unimplemented }
	func getSpeedEmulationMode() throws -> UInt32 { throw IpcError.unimplemented }
	func suspendSdmmcControl(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	func resumeSdmmcControl(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try isSdCardInserted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 1:
			let ret = try getSdCardSpeedMode()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 2:
			try getSdCardCid(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			let ret = try getSdCardUserAreaSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 4:
			let ret = try getSdCardProtectedAreaSize()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 5:
			let (_0, _1) = try getAndClearSdCardErrorInfo(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 24)
			if _0.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.setData(24, _1)
		
		case 100:
			try getMmcCid(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 101:
			let ret = try getMmcSpeedMode()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 110:
			try eraseMmc(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 111:
			let ret = try getMmcPartitionSize(im.getData(8) as UInt32)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 112:
			let ret = try getMmcPatrolCount()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 113:
			let (_0, _1) = try getAndClearMmcErrorInfo(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 24)
			if _0.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, _0)
			om.setData(24, _1)
		
		case 114:
			try getMmcExtendedCsd(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 115:
			try suspendMmcPatrol()
			om.initialize(0, 0, 0)
		
		case 116:
			try resumeMmcPatrol()
			om.initialize(0, 0, 0)
		
		case 200:
			let ret = try isGameCardInserted()
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 201:
			try eraseGameCard(im.getData(8) as UInt32, im.getData(16) as UInt64)
			om.initialize(0, 0, 0)
		
		case 202:
			let ret = try getGameCardHandle()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 203:
			let (_0, _1) = try getGameCardUpdatePartitionInfo(im.getData(8) as UInt32)
			om.initialize(0, 0, 16)
			om.setData(8, _0)
			om.setData(16, _1)
		
		case 204:
			try finalizeGameCardDriver()
			om.initialize(0, 0, 0)
		
		case 205:
			let ret = try getGameCardAttribute(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 206:
			try getGameCardDeviceCertificate(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 207:
			try getGameCardAsicInfo(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 208:
			try getGameCardIdSet(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 209:
			try writeToGameCard(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 210:
			try setVerifyWriteEnalbleFlag(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 211:
			try getGameCardImageHash(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 212:
			try getGameCardErrorInfo(im.getData(8) as UInt64, im.getData(16) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 213:
			try eraseAndWriteParamDirectly(im.getData(8) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 214:
			try readParamDirectly(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 215:
			try forceEraseGameCard()
			om.initialize(0, 0, 0)
		
		case 216:
			let ret = try getGameCardErrorInfo2()
			om.initialize(0, 0, 16)
			if ret.count != 0x10 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 217:
			let ret = try getGameCardErrorReportInfo()
			om.initialize(0, 0, 64)
			if ret.count != 0x40 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 218:
			try getGameCardDeviceId(im.getData(8) as UInt64, im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 300:
			try setSpeedEmulationMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 301:
			let ret = try getSpeedEmulationMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 400:
			let ret = try suspendSdmmcControl(nil)
			om.initialize(0, 0, 0)
		
		case 401:
			let ret = try resumeSdmmcControl(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IDeviceOperator: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IFileSystem: IpcService {
	func createFile(_ mode: UInt32, _ size: UInt64, _ path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteFile(_ path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func createDirectory(_ path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteDirectory(_ path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func deleteDirectoryRecursively(_ path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func renameFile(_ old_path: Buffer<UInt8>, _ new_path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func renameDirectory(_ old_path: Buffer<UInt8>, _ new_path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getEntryType(_ path: Buffer<UInt8>) throws -> NnFssrvSf_DirectoryEntryType { throw IpcError.unimplemented }
	func openFile(_ mode: UInt32, _ path: Buffer<UInt8>) throws -> NnFssrvSf_IFile { throw IpcError.unimplemented }
	func openDirectory(_ filter_flags: UInt32, _ path: Buffer<UInt8>) throws -> NnFssrvSf_IDirectory { throw IpcError.unimplemented }
	func commit() throws { throw IpcError.unimplemented }
	func getFreeSpaceSize(_ path: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func getTotalSpaceSize(_ path: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func cleanDirectoryRecursively(_ path: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func getFileTimeStampRaw(_ path: Buffer<UInt8>) throws -> [UInt8] { throw IpcError.unimplemented }
	func queryEntry(_ _0: UInt32, _ path: Buffer<UInt8>, _ _2: Buffer<UInt8>, _ _3: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try createFile(im.getData(8) as UInt32, im.getData(16) as UInt64, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try deleteFile(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 2:
			try createDirectory(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 3:
			try deleteDirectory(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 4:
			try deleteDirectoryRecursively(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 5:
			try renameFile(im.getBuffer(0x19, 0) as Buffer<UInt8>, im.getBuffer(0x19, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 6:
			try renameDirectory(im.getBuffer(0x19, 0) as Buffer<UInt8>, im.getBuffer(0x19, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 7:
			let ret = try getEntryType(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 1)
			om.setData(8, UInt8(ret.rawValue))
		
		case 8:
			let ret = try openFile(im.getData(8) as UInt32, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 9:
			let ret = try openDirectory(im.getData(8) as UInt32, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 10:
			try commit()
			om.initialize(0, 0, 0)
		
		case 11:
			let ret = try getFreeSpaceSize(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 12:
			let ret = try getTotalSpaceSize(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 13:
			try cleanDirectoryRecursively(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 14:
			let ret = try getFileTimeStampRaw(im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 32)
			if ret.count != 0x20 { throw IpcError.byteCountMismatch }
			om.setBytes(8, ret)
		
		case 15:
			try queryEntry(im.getData(8) as UInt32, im.getBuffer(0x19, 0) as Buffer<UInt8>, im.getBuffer(0x45, 0) as Buffer<UInt8>, im.getBuffer(0x46, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IFileSystem: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_ISaveDataInfoReader: IpcService {
	func readSaveDataInfo(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try readSaveDataInfo(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::fssrv::sf::ISaveDataInfoReader: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IProgramRegistry: IpcService {
	func registerProgram(_ _0: UInt8, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64, _ _4: UInt64, _ _5: Buffer<UInt8>, _ _6: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unregisterProgram(_ _0: UInt64) throws { throw IpcError.unimplemented }
	func setCurrentProcess(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented }
	func setEnabledProgramVerification(_ _0: UInt8) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try registerProgram(im.getData(8) as UInt8, im.getData(16) as UInt64, im.getData(24) as UInt64, im.getData(32) as UInt64, im.getData(40) as UInt64, im.getBuffer(0x5, 0) as Buffer<UInt8>, im.getBuffer(0x5, 1) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			try unregisterProgram(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 2:
			try setCurrentProcess(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		case 256:
			try setEnabledProgramVerification(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IProgramRegistry: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IEventNotifier: IpcService {
	func getEventHandle() throws -> KObject { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getEventHandle()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IEventNotifier: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_ISaveDataTransferManager: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown16(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown32(_ _0: UInt8, _ _1: UInt64) throws -> NnFssrvSf_ISaveDataExporter { throw IpcError.unimplemented }
	func unknown64(_ _0: UInt8, _ _1: [UInt8], _ _2: Buffer<UInt8>) throws -> (UInt64, NnFssrvSf_ISaveDataImporter) { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 16:
			try unknown16(im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 32:
			let ret = try unknown32(im.getData(8) as UInt8, im.getData(16) as UInt64)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 64:
			let (_0, _1) = try unknown64(im.getData(8) as UInt8, im.getBytes(9, 0x10), im.getBuffer(0x5, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 8)
			om.setData(8, _0)
			om.move(0, _1)
		
		default:
			print("Unhandled command to nn::fssrv::sf::ISaveDataTransferManager: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IFileSystemProxyForLoader: IpcService {
	func openCodeFileSystem(_ Tid: Nn_ApplicationId, _ content_path: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented }
	func isArchivedProgram(_ _0: UInt64) throws -> UInt8 { throw IpcError.unimplemented }
	func setCurrentProcess(_ _0: UInt64, _ _1: Pid) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try openCodeFileSystem(im.getData(8) as UInt64, im.getBuffer(0x19, 0) as Buffer<UInt8>)
			om.initialize(1, 0, 0)
			om.move(0, ret)
		
		case 1:
			let ret = try isArchivedProgram(im.getData(8) as UInt64)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 2:
			try setCurrentProcess(im.getData(8) as UInt64, im.pid)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IFileSystemProxyForLoader: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_ISaveDataExporter: IpcService {
	func unknown0(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	func unknown1() throws -> UInt64 { throw IpcError.unimplemented }
	func unknown16(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func unknown17(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			try unknown0(im.getBuffer(0x1a, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		case 1:
			let ret = try unknown1()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 16:
			let ret = try unknown16(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 17:
			try unknown17(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::fssrv::sf::ISaveDataExporter: \(im.commandId)")
			try! bailout()
		}
	}
}

class NnFssrvSf_IDirectory: IpcService {
	func read(_ _0: Buffer<UInt8>) throws -> UInt64 { throw IpcError.unimplemented }
	func getEntryCount() throws -> UInt64 { throw IpcError.unimplemented }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try read(im.getBuffer(0x6, 0) as Buffer<UInt8>)
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		case 1:
			let ret = try getEntryCount()
			om.initialize(0, 0, 8)
			om.setData(8, ret)
		
		default:
			print("Unhandled command to nn::fssrv::sf::IDirectory: \(im.commandId)")
			try! bailout()
		}
	}
}
