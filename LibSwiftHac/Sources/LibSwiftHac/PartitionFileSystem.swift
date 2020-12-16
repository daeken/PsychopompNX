//
//  PartitionFileSystem.swift
//  
//
//  Created by Sera Brocious on 12/14/20.
//

import Foundation
import LibSpan

enum PfsError: Error {
    case unknownMagic
}

public class PartitionFileSystem {
    let storage: IStorage
    public let files: [String:Span<UInt8>]
    
    public init(_ storage: IStorage) throws {
        self.storage = storage
        var files = [String:Span<UInt8>]()
        
        let reader = SpanReader(storage.asSpan)
        
        let magic = reader.read(UInt32.self)
        
        let isHashed: Bool
        switch magic {
        case 0x30534650: // PFS0
            isHashed = false
        case 0x30534648: // HFS0
            isHashed = true
        default:
            throw PfsError.unknownMagic
        }
        
        let numFiles = Int(reader.read(UInt32.self))
        let stringTableSize = Int(reader.read(UInt32.self))
        reader.skip(4)
        
        let entrySize = isHashed ? 0x40 : 0x18
        let stringTableOffset = 16 + entrySize * numFiles
        let headerSize = stringTableOffset + stringTableSize
        
        let nspan = Span<UInt8>.from(data: DataBox(Data([UInt8](repeating: 0, count: 512))))
        
        (0..<numFiles).forEach { _ in
            let offset = headerSize + Int(reader.read(UInt64.self))
            let size = Int(reader.read(UInt64.self))
            let sto = Int(reader.read(UInt32.self))
            reader.skip(isHashed ? 4 + 8 + 32 : 4)
            _ = storage.read(offset: stringTableOffset + sto, destination: nspan)
            let name = String(bytes: nspan[0..<nspan.firstIndex(of: 0)!], encoding: .utf8)!
            files[name] = storage.asSpan[offset ..< offset + size]
        }
        
        self.files = files
    }
}
