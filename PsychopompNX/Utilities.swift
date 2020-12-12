//
//  Utilities.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/7/20.
//

import Foundation

enum BailoutError: Error {
    case bailout
}

func bailout() throws {
    throw BailoutError.bailout
}

func print_hex(_ values: Any...) {
    var args = [String]()
    for value in values {
        switch value {
        case let iv as Int:
            args.append(iv >= 0 ? "0x" + String(iv, radix: 16) : "-0x" + String(-iv, radix: 16))
        case let iv as UInt16:
            args.append("0x" + String(iv, radix: 16))
        case let iv as UInt32:
            args.append("0x" + String(iv, radix: 16))
        case let iv as UInt64:
            args.append("0x" + String(iv, radix: 16))
        default:
            args.append(String(describing: value))
        }
    }
    print(args.joined(separator: " "))
}

func print_bin(_ values: Any...) {
    var args = [String]()
    for value in values {
        switch value {
        case let iv as UInt16:
            args.append("0b" + String(iv, radix: 2))
        case let iv as UInt32:
            args.append("0b" + String(iv, radix: 2))
        case let iv as UInt64:
            args.append("0b" + String(iv, radix: 2))
        default:
            args.append(String(describing: value))
        }
    }
    print(args.joined(separator: " "))
}

func readNullTerminatedString(_ address: uint64) -> String {
    var data = [UInt8]()
    var i = 0
    let gp = GuestPointer<UInt8>(address)
    while true {
        let v = gp[i]
        i += 1
        if v == 0 {
            break
        }
        data.append(v)
    }
    return String(bytes: data, encoding: .utf8)!
}

func hexdump(_ data: [UInt8]) {
    let printable = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()_+`-=[]{}\\|;':\",./<>?"
    var buf = ""
    for i in stride(from: 0, to: data.count, by: 16) {
        buf += String(format: "%04x | ", i)
        for j in 0..<16 {
            buf += i + j < data.count ? String(format: "%02x ", data[i + j]) : "   "
            if j == 7 {
                buf += " "
            }
        }
        buf += "| "
        for j in 0..<16 {
            if i + j >= data.count {
                break
            }
            let c = Character(UnicodeScalar(data[i + j]))
            buf += printable.contains(c) ? c.description : "."
            if j == 7 {
                buf += " "
            }
        }
        buf += "\n"
    }
    buf += String(format: "%04x", data.count)
    print(buf)
}

extension Array {
    func withUnsafeBufferPointer<T, Result>(of: T.Type, body: (UnsafeBufferPointer<T>) throws -> Result) rethrows -> Result {
        return try withUnsafeBufferPointer {
            let bytes = $0.count * MemoryLayout<Element>.size
            let newCount = bytes / MemoryLayout<T>.size
            return try $0.baseAddress!.withMemoryRebound(to: of, capacity: newCount) {
                try body(UnsafeBufferPointer(start: $0, count: newCount))
            }
        }
    }

    func getValueAtOffset<T>(of: T.Type, offset: Int) -> T {
        if T.self == Element.self {
            return self[offset / MemoryLayout<T>.stride] as! T
        }
        return withUnsafeBufferPointer {
            UnsafeRawPointer($0.baseAddress!).load(fromByteOffset: offset, as: T.self)
        }
    }
    
    mutating func setValueAtOffset<T>(offset: Int, value: T) {
        if T.self == Element.self {
            self[offset / MemoryLayout<T>.stride] = value as! Element
        } else {
            withUnsafeMutableBufferPointer {
                UnsafeMutableRawPointer($0.baseAddress!).storeBytes(of: value, toByteOffset: offset, as: T.self)
            }
        }
    }
}
