//
//  NvDevice.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation
import LibSpan

protocol NvDevice {
    func ioctl(_ cmd: UInt32, _ input: Span<UInt8>, _ output: Span<UInt8>) -> UInt32
    func getEvent(_ eventId: UInt32) -> KEvent
}
