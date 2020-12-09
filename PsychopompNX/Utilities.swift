//
//  Utilities.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/7/20.
//

import Foundation

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
