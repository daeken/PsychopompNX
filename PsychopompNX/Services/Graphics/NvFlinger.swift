//
//  NvFlinger.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation
import LibSpan

class NvFlinger {
    func processParcel(_ code: UInt32, _ rawParcel: Span<UInt8>, _ replyBuffer: Span<UInt8>) {
        let parcel = getParcelData(rawParcel)
        hexdump(Array(parcel))
        let slen = Int(parcel.to(type: UInt32.self)[1])
        let service = String(bytes: parcel[8..<8+slen*2], encoding: .utf16LittleEndian)!
        
        switch (service, code) {
        case ("android.gui.IGraphicBufferProducer", 0xA):
            print("GbpConnect!")
            _ = makeParcel(replyBuffer, []) {
                $0.write(1280 as UInt32)
                $0.write(720 as UInt32)
                $0.write(0 as UInt32)
                $0.write(0 as UInt32)
                $0.write(0 as UInt32)
            }
        default:
            print_hex("Unhandled command to NvFlinger service '\(service)', code", code)
            try! bailout()
        }
    }
}
