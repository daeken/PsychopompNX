//
//  NxoReader.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/8/20.
//

import Foundation
import Compression

enum NxoError: Error {
    case invalidMagic
    case decompressionFailed
}

class NxoReader {
    let text: (Data, UInt64)
    let rodata: (Data, UInt64)
    let data: (Data, UInt64)
    let bssSize: UInt64

    init(_ data: Data) throws {
        let br = BinaryReader(data)
        guard try br.read() as UInt32 == 0x304f534e else {
            throw NxoError.invalidMagic
        }
        br.skip(8)
        let flags: UInt32 = try br.read()

        let textHeader: (fileOffset: UInt32, memoryOffset: UInt32, size: UInt32) = try br.read()
        //let moduleNameOffset: UInt32 = try br.read()
        br.skip(4)
        let rodataHeader: (fileOffset: UInt32, memoryOffset: UInt32, size: UInt32) = try br.read()
        //let moduleNameSize: UInt32 = try br.read()
        br.skip(4)
        let dataHeader: (fileOffset: UInt32, memoryOffset: UInt32, size: UInt32) = try br.read()
        let bssSize: UInt32 = try br.read()
        self.bssSize = UInt64(bssSize)

        br.skip(0x20) // Module ID

        let fileSizes: (text: UInt32, rodata: UInt32, data: UInt32) = try br.read()

        br.skip(0x1C) // Reserved

        //let apiInfoHeader: (offset: UInt32, size: UInt32) = try br.read()
        //let dynstrHeader: (offset: UInt32, size: UInt32) = try br.read()
        //let dynsymHeader: (offset: UInt32, size: UInt32) = try br.read()
        br.skip(2 * 4 * 3)

        br.skip(0x20 * 3) // Hashes

        func decompSection(_ info: (fileOffset: UInt32, UInt32, size: UInt32), _ fileSize: UInt32, _ num: Int) throws -> Data {
            if ((flags >> num) & 1) == 0 {
                return data[info.fileOffset..<info.fileOffset + fileSize]
            }
            var sdata = Data(count: Int(info.size))
            try sdata.withUnsafeMutableBytes { dbuf in
                try data.withUnsafeBytes { sbuf in
                    let stptr = sbuf.bindMemory(to: UInt8.self)
                    let dtptr = dbuf.bindMemory(to: UInt8.self)
                    let count = compression_decode_buffer(
                            dtptr.baseAddress!, Int(info.size),
                            stptr.baseAddress! + Int(info.fileOffset), Int(fileSize),
                            nil,
                            COMPRESSION_LZ4_RAW
                    )
                    guard count == info.size else {
                        throw NxoError.decompressionFailed
                    }
                }
            }
            return sdata
        }

        text = (try decompSection(textHeader, fileSizes.text, 0), UInt64(textHeader.memoryOffset))
        rodata = (try decompSection(rodataHeader, fileSizes.rodata, 1), UInt64(rodataHeader.memoryOffset))
        self.data = (try decompSection(dataHeader, fileSizes.data, 2), UInt64(dataHeader.memoryOffset))
    }
}
