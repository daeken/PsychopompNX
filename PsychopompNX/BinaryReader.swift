//
//  BinaryReader.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/8/20.
//

import Foundation

enum BinaryReaderErrors: Error {
    case OutOfRange
}

class BinaryReader {
    let data: Data
    var offset: Int = 0

    lazy var length = data.count

    init(_ data: Data) {
        self.data = data
    }

    func read<T>(_ offset: Int? = nil) throws -> T {
        let start = offset ?? self.offset
        let end = start + MemoryLayout<T>.size
        guard end < length else {
            throw BinaryReaderErrors.OutOfRange
        }
        let temp = UnsafeMutableBufferPointer<T>.allocate(capacity: 1)
        data.copyBytes(to: temp, from: start..<end)
        if offset == nil {
            self.offset += MemoryLayout<T>.size
        }
        return temp[0]
    }

    func skip(_ count: Int) {
        offset += count
    }

    func seek(_ offset: Int) {
        self.offset = offset
    }
}
