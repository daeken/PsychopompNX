//
//  NvhostCtrlGpu.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation
import LibSpan

class NvhostCtrlGpu: NvDevice {
    func ioctl(_ cmd: UInt32, _ input: Span<UInt8>, _ output: Span<UInt8>) -> UInt32 {
        let sw = SpanWriter(output)
        let tspan = output.to(type: UInt32.self)
        switch (cmd & 0xFF00FFFF) {
        case 0xc0004705: // GetCharacteristics
            sw.write(0xa0 as Int64) // BufferSize
            sw.write(0x0 as Int64) // BufferAddress
            sw.write(0x120 as Int32) // Arch
            sw.write(0xb as Int32) // Impl
            sw.write(0xa1 as Int32) // Rev
            sw.write(0x1 as Int32) // NumGpc
            sw.write(0x40000 as Int64) // L2CacheSize
            sw.write(0x0 as Int64) // OnBoardVideoMemorySize
            sw.write(0x2 as Int32) // NumTpcPerGpc
            sw.write(0x20 as Int32) // BusType
            sw.write(0x20000 as Int32) // BigPageSize
            sw.write(0x20000 as Int32) // CompressionPageSize
            sw.write(0x1b as Int32) // PdeCoverageBitCount
            sw.write(0x30000 as Int32) // AvailableBigPageSizes
            sw.write(0x1 as Int32) // GpcMask
            sw.write(0x503 as Int32) // SmArchSmVersion
            sw.write(0x503 as Int32) // SmArchSpaVersion
            sw.write(0x80 as Int32) // SmArchWarpCount
            sw.write(0x28 as Int32) // GpuVaBitCount
            sw.write(0x0 as Int32) // Reserved
            sw.write(0x55 as Int64) // Flags
            sw.write(0x902d as Int32) // TwodClass
            sw.write(0xb197 as Int32) // ThreedClass
            sw.write(0xb1c0 as Int32) // ComputeClass
            sw.write(0xb06f as Int32) // GpfifoClass
            sw.write(0xa140 as Int32) // InlineToMemoryClass
            sw.write(0xb0b5 as Int32) // DmaCopyClass
            sw.write(0x1 as Int32) // MaxFbpsCount
            sw.write(0x0 as Int32) // FbpEnMask
            sw.write(0x2 as Int32) // MaxLtcPerFbp
            sw.write(0x1 as Int32) // MaxLtsPerLtc
            sw.write(0x0 as Int32) // MaxTexPerTpc
            sw.write(0x1 as Int32) // MaxGpcCount
            sw.write(0x21d70 as Int32) // RopL2EnMask0
            sw.write(0x0 as Int32) // RopL2EnMask1
            sw.write(0x6230326d67 as Int64) // ChipName
            sw.write(0x0 as Int64) // GrCompbitStoreBaseHw
        
        case 0xc0004706: // GetTpcMasks
            output.copyFrom(source: input, toOffset: 0)
            if tspan[0] != 0 {
                tspan[4] = 3
            }
            
        case 0x80004701: // ZCullGetCtxSize
            tspan[0] = 1
            
        case 0x80004702: // ZCullGetInfo
            tspan[0] = 0x20  // WidthAlignPixels
            tspan[1] = 0x20  // HeightAlignPixels
            tspan[2] = 0x400 // PixelSquaresByAliquots
            tspan[3] = 0x800 // AliquotTotal
            tspan[4] = 0x20  // RegionByteMultiplier
            tspan[5] = 0x20  // RegionHeaderSize
            tspan[6] = 0xc0  // SubregionHeaderSize
            tspan[7] = 0x20  // SubregionWidthAlignPixels
            tspan[8] = 0x40  // SubregionHeightAlignPixels
            tspan[9] = 0x10  // SubregionCount

        default:
            print_hex("Unhandled ioctl to NvhostCtrlGpu:", (cmd & 0xFF00FFFF), "-- full ioctl:", cmd)
            try! bailout()
        }
        return 0
    }
    
    func getEvent(_ eventId: UInt32) -> KEvent { KEvent() }
}
