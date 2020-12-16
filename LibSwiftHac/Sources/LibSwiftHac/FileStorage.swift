//
//  FileStorage.swift
//  
//
//  Created by Sera Brocious on 12/14/20.
//

import Foundation
import LibSpan

public class FileStorage: IStorage {
    let file: MmappedFile
    
    public var asSpan: Span<UInt8> { file.data }
    
    public init(_ file: MmappedFile) {
        self.file = file
    }
    
    public func read(offset: Int, destination: Span<UInt8>) -> Result{
        destination.copyFrom(source: file.data + offset, toOffset: 0, length: destination.byteLength)
        return Result.Success
    }
    
    public func write(offset: Int, source: Span<UInt8>) -> Result {
        print("FileStorage#write not implemented")
        return Result.Success
    }
    
    public func flush() -> Result {
        print("FileStorage#flush not implemented")
        return Result.Success
    }
    
    public func setSize(size: Int) -> Result {
        print("FileStorage#setSize not implemented")
        return Result.Success
    }
    
    public func getSize() -> (Result, Int) {
        (Result.Success, file.size)
    }
    
    
}
