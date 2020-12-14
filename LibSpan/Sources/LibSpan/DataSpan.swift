//
//  DataSpan.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

final class DataSpan<Element>: SpanProtocol {
    var length: Int
    var byteLength: Int
    let byteOffset: Int
    let stride: Int = MemoryLayout<Element>.size

    func offsetBy(bytes: Int) -> DataSpan<Element> {
        DataSpan<Element>(data, byteOffset + bytes, (byteLength - bytes) / MemoryLayout<Element>.size)
    }
    
    func offsetBy(elements: Int) -> DataSpan<Element> {
        DataSpan<Element>(data, byteOffset + elements * stride, length - elements)
    }
    
    var data: DataBox
    
    init(_ data: DataBox, _ byteOffset: Int, _ length: Int) {
        self.data = data
        self.byteOffset = byteOffset
        self.length = length
        byteLength = length * stride
    }
    
    subscript(index: Int) -> Element {
        get { data.data.withUnsafeBytes { (buf: UnsafeRawBufferPointer) in
            let ptr = buf.baseAddress!.advanced(by: byteOffset + index * stride)
            return ptr.assumingMemoryBound(to: Element.self).pointee
        } }
        set { data.data.withUnsafeMutableBytes { (buf: UnsafeMutableRawBufferPointer) in
            let ptr = buf.baseAddress!.advanced(by: byteOffset + index * stride)
            ptr.assumingMemoryBound(to: Element.self).pointee = newValue
        } }
    }
    
    subscript(range: Range<Int>) -> DataSpan<Element> {
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
    
    static func +(left: DataSpan<Element>, right: Int) -> DataSpan<Element> {
        DataSpan<Element>(left.data, left.byteOffset + right * left.stride, left.length - right)
    }
    
    static func +=(left: inout DataSpan<Element>, right: Int) {
        left = left + right
    }
    
    func to<T>() -> DataSpan<T> {
        DataSpan<T>(data, byteOffset, byteLength / MemoryLayout<T>.size)
    }
    
    func to<T>(type: T.Type) -> DataSpan<T> { to() as DataSpan<T> }
}
