//
//  NnFssrv_Sf_Impl.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation
import LibSpan

class NnFssrvSf_IFileSystemProxy_Impl: NnFssrvSf_IFileSystemProxy {
    override func openFileSystem(_ filesystem_type: NnFssrvSf_FileSystemType, _ _1: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenFileSystem") }
    override func setCurrentProcess(_ _0: UInt64, _ _1: Pid) throws { }
    override func openDataFileSystemByCurrentProcess() throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenDataFileSystemByCurrentProcess") }
    override func openFileSystemWithPatch(_ filesystem_type: NnFssrvSf_FileSystemType, _ id: Nn_ApplicationId) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenFileSystemWithPatch") }
    override func openFileSystemWithId(_ filesystem_type: NnFssrvSf_FileSystemType, _ tid: Nn_ApplicationId, _ _2: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenFileSystemWithId") }
    override func openDataFileSystemByApplicationId(_ u64: Nn_ApplicationId) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenDataFileSystemByApplicationId") }
    override func openBisFileSystem(_ partitionId: NnFssrvSf_Partition, _ _1: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenBisFileSystem") }
    override func openBisStorage(_ partitionId: NnFssrvSf_Partition) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenBisStorage") }
    override func invalidateBisCache() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#InvalidateBisCache") }
    override func openHostFileSystem(_ _0: Buffer<UInt8>) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenHostFileSystem") }
    override func openSdCardFileSystem() throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSdCardFileSystem") }
    override func formatSdCardFileSystem() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#FormatSdCardFileSystem") }
    override func deleteSaveDataFileSystem(_ tid: Nn_ApplicationId) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#DeleteSaveDataFileSystem") }
    override func createSaveDataFileSystem(_ save_struct: NnFssrvSf_SaveStruct, _ ave_create_struct: NnFssrvSf_SaveCreateStruct, _ _2: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#CreateSaveDataFileSystem") }
    override func createSaveDataFileSystemBySystemSaveDataId(_ _0: NnFssrvSf_SaveStruct, _ _1: NnFssrvSf_SaveCreateStruct) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#CreateSaveDataFileSystemBySystemSaveDataId") }
    override func registerSaveDataFileSystemAtomicDeletion(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#RegisterSaveDataFileSystemAtomicDeletion") }
    override func deleteSaveDataFileSystemBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#DeleteSaveDataFileSystemBySaveDataSpaceId") }
    override func formatSdCardDryRun() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#FormatSdCardDryRun") }
    override func isExFatSupported() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#IsExFatSupported") }
    override func deleteSaveDataFileSystemBySaveDataAttribute(_ _0: UInt8, _ _1: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#DeleteSaveDataFileSystemBySaveDataAttribute") }
    override func openGameCardStorage(_ _0: UInt32, _ _1: UInt32) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenGameCardStorage") }
    override func openGameCardFileSystem(_ _0: UInt32, _ _1: UInt32) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenGameCardFileSystem") }
    override func extendSaveDataFileSystem(_ _0: UInt8, _ _1: UInt64, _ _2: UInt64, _ _3: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#ExtendSaveDataFileSystem") }
    override func deleteCacheStorage(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#DeleteCacheStorage") }
    override func getCacheStorageSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetCacheStorageSize") }
    override func openSaveDataFileSystem(_ save_data_space_id: UInt8, _ save_struct: NnFssrvSf_SaveStruct) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataFileSystem") }
    override func openSaveDataFileSystemBySystemSaveDataId(_ save_data_space_id: UInt8, _ save_struct: NnFssrvSf_SaveStruct) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataFileSystemBySystemSaveDataId") }
    override func openReadOnlySaveDataFileSystem(_ save_data_space_id: UInt8, _ save_struct: NnFssrvSf_SaveStruct) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenReadOnlySaveDataFileSystem") }
    override func readSaveDataFileSystemExtraDataBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#ReadSaveDataFileSystemExtraDataBySaveDataSpaceId") }
    override func readSaveDataFileSystemExtraData(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#ReadSaveDataFileSystemExtraData") }
    override func writeSaveDataFileSystemExtraData(_ _0: UInt8, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#WriteSaveDataFileSystemExtraData") }
    override func openSaveDataInfoReader() throws -> NnFssrvSf_ISaveDataInfoReader { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataInfoReader") }
    override func openSaveDataInfoReaderBySaveDataSpaceId(_ _0: UInt8) throws -> NnFssrvSf_ISaveDataInfoReader { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataInfoReaderBySaveDataSpaceId") }
    override func openCacheStorageList(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenCacheStorageList") }
    override func openSaveDataInternalStorageFileSystem(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataInternalStorageFileSystem") }
    override func updateSaveDataMacForDebug(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#UpdateSaveDataMacForDebug") }
    override func writeSaveDataFileSystemExtraData2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#WriteSaveDataFileSystemExtraData2") }
    override func openSaveDataMetaFile(_ _0: UInt8, _ _1: UInt32, _ _2: [UInt8]) throws -> NnFssrvSf_IFile { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataMetaFile") }
    override func openSaveDataTransferManager() throws -> NnFssrvSf_ISaveDataTransferManager { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataTransferManager") }
    override func openSaveDataTransferManagerVersion2(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSaveDataTransferManagerVersion2") }
    override func openImageDirectoryFileSystem(_ _0: UInt32) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenImageDirectoryFileSystem") }
    override func openContentStorageFileSystem(_ content_storage_id: UInt32) throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenContentStorageFileSystem") }
    
    override func openDataStorageByCurrentProcess() throws -> NnFssrvSf_IStorage { NnFssrvSf_IStorage_RO_Span(Emulator.instance!.romfsFile.data) }
    
    override func openDataStorageByProgramId(_ tid: Nn_ApplicationId) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenDataStorageByProgramId") }
    override func openDataStorageByDataId(_ storage_id: UInt8, _ tid: Nn_ApplicationId) throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenDataStorageByDataId") }
    override func openPatchDataStorageByCurrentProcess() throws -> NnFssrvSf_IStorage { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenPatchDataStorageByCurrentProcess") }
    override func openDeviceOperator() throws -> NnFssrvSf_IDeviceOperator { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenDeviceOperator") }
    override func openSdCardDetectionEventNotifier() throws -> NnFssrvSf_IEventNotifier { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSdCardDetectionEventNotifier") }
    override func openGameCardDetectionEventNotifier() throws -> NnFssrvSf_IEventNotifier { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenGameCardDetectionEventNotifier") }
    override func openSystemDataUpdateEventNotifier(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenSystemDataUpdateEventNotifier") }
    override func notifySystemDataUpdateEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#NotifySystemDataUpdateEvent") }
    override func setCurrentPosixTime(_ time: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetCurrentPosixTime") }
    override func querySaveDataTotalSize(_ _0: UInt64, _ _1: UInt64) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#QuerySaveDataTotalSize") }
    override func verifySaveDataFileSystem(_ _0: UInt64, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#VerifySaveDataFileSystem") }
    override func corruptSaveDataFileSystem(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#CorruptSaveDataFileSystem") }
    override func createPaddingFile(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#CreatePaddingFile") }
    override func deleteAllPaddingFiles() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#DeleteAllPaddingFiles") }
    override func getRightsId(_ _0: UInt8, _ _1: UInt64) throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetRightsId") }
    override func registerExternalKey(_ _0: [UInt8], _ _1: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#RegisterExternalKey") }
    override func unregisterAllExternalKey() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#UnregisterAllExternalKey") }
    override func getRightsIdByPath(_ _0: Buffer<UInt8>) throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetRightsIdByPath") }
    override func getRightsIdAndKeyGenerationByPath(_ _0: Buffer<UInt8>) throws -> (UInt8, rights: [UInt8]) { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetRightsIdAndKeyGenerationByPath") }
    override func setCurrentPosixTimeWithTimeDifference(_ _0: UInt32, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetCurrentPosixTimeWithTimeDifference") }
    override func getFreeSpaceSizeForSaveData(_ _0: UInt8) throws -> UInt64 { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetFreeSpaceSizeForSaveData") }
    override func verifySaveDataFileSystemBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64, _ _2: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#VerifySaveDataFileSystemBySaveDataSpaceId") }
    override func corruptSaveDataFileSystemBySaveDataSpaceId(_ _0: UInt8, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#CorruptSaveDataFileSystemBySaveDataSpaceId") }
    override func querySaveDataInternalStorageTotalSize(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#QuerySaveDataInternalStorageTotalSize") }
    override func setSdCardEncryptionSeed(_ _0: [UInt8]) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetSdCardEncryptionSeed") }
    override func setSdCardAccessibility(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetSdCardAccessibility") }
    override func isSdCardAccessible() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#IsSdCardAccessible") }
    override func isSignedSystemPartitionOnSdCardValid() throws -> UInt8 { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#IsSignedSystemPartitionOnSdCardValid") }
    override func openAccessFailureResolver(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenAccessFailureResolver") }
    override func getAccessFailureDetectionEvent(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetAccessFailureDetectionEvent") }
    override func isAccessFailureDetected(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#IsAccessFailureDetected") }
    override func resolveAccessFailure(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#ResolveAccessFailure") }
    override func abandonAccessFailure(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#AbandonAccessFailure") }
    override func getAndClearFileSystemProxyErrorInfo() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetAndClearFileSystemProxyErrorInfo") }
    override func setBisRootForHost(_ _0: UInt32, _ _1: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetBisRootForHost") }
    override func setSaveDataSize(_ _0: UInt64, _ _1: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetSaveDataSize") }
    override func setSaveDataRootPath(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetSaveDataRootPath") }
    override func disableAutoSaveDataCreation() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#DisableAutoSaveDataCreation") }
    override func setGlobalAccessLogMode(_ mode: UInt32) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#SetGlobalAccessLogMode") }
    override func getGlobalAccessLogMode() throws -> UInt32 { 0 }
    override func outputAccessLogToSdCard(_ log_text: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OutputAccessLogToSdCard") }
    override func registerUpdatePartition() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#RegisterUpdatePartition") }
    override func openRegisteredUpdatePartition() throws -> NnFssrvSf_IFileSystem { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OpenRegisteredUpdatePartition") }
    override func getAndClearMemoryReportInfo() throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#GetAndClearMemoryReportInfo") }
    override func unknown1010(_ _0: Any?) throws -> Any? { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#Unknown1010") }
    override func overrideSaveDataTransferTokenSignVerificationKey(_ _0: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IFileSystemProxy#OverrideSaveDataTransferTokenSignVerificationKey") }
}

class NnFssrvSf_IStorage_RO_Span: NnFssrvSf_IStorage {
    let data: Span<UInt8>
    
    init(_ data: Span<UInt8>) {
        self.data = data
    }
    
    override func read(_ offset: UInt64, _ length: UInt64, _ data: Buffer<UInt8>) throws {
        //print_hex("Reading from file at offset", offset, "length:", length)
        data.copyFrom(source: self.data[Int(offset)..<Int(offset + length)], toOffset: 0)
        //hexdump(Array(data))
    }
    override func write(_ offset: UInt64, _ length: UInt64, _ data: Buffer<UInt8>) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IStorage#Write") }
    override func flush() throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IStorage#Flush") }
    override func setSize(_ size: UInt64) throws { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IStorage#SetSize") }
    override func getSize() throws -> UInt64 { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IStorage#GetSize") }
    override func operateRange(_ _0: UInt32, _ _1: UInt64, _ _2: UInt64) throws -> [UInt8] { throw IpcError.unimplemented(name: "nn::fssrv::sf::nn::fssrv::sf::IStorage#OperateRange") }
}
