//
//  DataSpan.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

public final class DataSpan<Element>: Span<Element> {
    public let byteOffset: Int

    public override func offsetBy(bytes: Int) -> Span<Element> {
        DataSpan<Element>(data, byteOffset + bytes, (byteLength - bytes) / MemoryLayout<Element>.size)
    }
    
    public override func offsetBy(elements: Int) -> Span<Element> {
        DataSpan<Element>(data, byteOffset + elements * stride, length - elements)
    }
    
    var data: DataBox
    
    init(_ data: DataBox, _ byteOffset: Int, _ length: Int) {
        self.data = data
        self.byteOffset = byteOffset
        super.init(length: length)
    }
    
    public override subscript(index: Int) -> Element {
        get { data.data.withUnsafeBytes { (buf: UnsafeRawBufferPointer) in
            let ptr = buf.baseAddress!.advanced(by: byteOffset + index * stride)
            return ptr.assumingMemoryBound(to: Element.self).pointee
        } }
        set { data.data.withUnsafeMutableBytes { (buf: UnsafeMutableRawBufferPointer) in
            let ptr = buf.baseAddress!.advanced(by: byteOffset + index * stride)
            ptr.assumingMemoryBound(to: Element.self).pointee = newValue
        } }
    }
    
    public override subscript(range: Range<Int>) -> Span<Element> {
        get { DataSpan<Element>(data, byteOffset + range.lowerBound * stride, range.upperBound - range.lowerBound) }
        set {
            data.data.withUnsafeMutableBytes { (buf: UnsafeMutableRawBufferPointer) in
                let ptr = buf.baseAddress!.advanced(by: byteOffset)
                let tptr = ptr.assumingMemoryBound(to: Element.self)
                for i in 0..<(range.upperBound - range.lowerBound) {
                    tptr[range.lowerBound + i] = newValue[i]
                }
            }
        }
    }
    
    public override func to<T>(type: T.Type) -> Span<T> { DataSpan<T>(data, byteOffset, byteLength / MemoryLayout<T>.size) }
}
