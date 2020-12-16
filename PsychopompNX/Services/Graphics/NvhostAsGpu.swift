//
//  NvhostAsGpu.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation
import LibSpan

class NvhostAsGpu: NvDevice {
    func ioctl(_ cmd: UInt32, _ input: Span<UInt8>, _ output: Span<UInt8>) -> UInt32 {
        let sw = SpanWriter(output)
        let tspan = output.to(type: UInt32.self)
        switch (cmd & 0xFF00FFFF) {
        case 0x40004109:
            print("NvhostAsGpu initialized")
        case 0xc0004108:
            print("GetVaRegions")
        default:
            print_hex("Unhandled ioctl to NvhostAsGpu:", (cmd & 0xFF00FFFF), "-- full ioctl:", cmd)
            try! bailout()
        }
        return 0
    }
    
    func getEvent(_ eventId: UInt32) -> KEvent { KEvent() }
}
