//
//  MmappedFile.swift
//  
//
//  Created by Sera Brocious on 12/14/20.
//

import Foundation
import LibSpan

public enum FileError: Error {
    case FileNotFound
    case StatFailed
    case MmapFailed
    case Unknown
}

public class MmappedFile {
    let fd: Int32
    let addr: UnsafeMutableRawPointer
    let memSize: Int
    
    public let data: Span<UInt8>
    public let size: Int

    public init(_ filename: String) throws {
        fd = open(filename, O_RDONLY)
        if fd < 0 { throw FileError.FileNotFound }
        
        var statBuf = stat()
        if fstat(fd, &statBuf) < 0 { throw FileError.StatFailed }
        size = Int(statBuf.st_size)
        memSize = size & 0x3FFF != 0
            ? (size & ~0x3FFF) + 0x4000
            : size
        
        guard let addr = mmap(nil, size, PROT_READ, MAP_SHARED, fd, 0) else {
            close(fd)
            throw FileError.MmapFailed
        }
        self.addr = addr
        data = Span<UInt8>.from(pointer: addr.bindMemory(to: UInt8.self, capacity: size), length: size)
    }
    
    deinit {
        munmap(addr, memSize)
        close(fd)
    }
}
