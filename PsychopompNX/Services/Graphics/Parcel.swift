//
//  Parcel.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation
import LibSpan

func makeParcel(_ buf: Span<UInt8>, _ objs: [UInt8], _ body: (_ sw: SpanWriter) -> ()) -> UInt64 {
    let sw = SpanWriter(Span<UInt8>.from(data: DataBox(Data(count: 0x1000))))
    body(sw)
    
    let pbuf = buf.to(type: Int32.self)
    pbuf[0] = Int32(sw.bytesWritten)
    pbuf[1] = 0x10
    pbuf[2] = Int32(objs.count)
    pbuf[3] = Int32(sw.bytesWritten + 0x10)
    buf.copyFrom(source: sw.getSpan(), toOffset: 16)
    buf.copyFrom(source: objs, toOffset: 16 + sw.bytesWritten)
    
    return UInt64(16 + sw.bytesWritten + objs.count)
}
