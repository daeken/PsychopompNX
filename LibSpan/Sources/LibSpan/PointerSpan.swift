//
//  PointerSpan.swift
//  
//
//  Created by Sera Brocious on 12/13/20.
//

import Foundation

public final class PointerSpan<Element>: SpanProtocol {
    public var length: Int
    public var byteLength: Int
    public let stride: Int = MemoryLayout<Element>.size
    
    public func offsetBy(bytes: Int) -> PointerSpan<Element> {
        let raw = UnsafeMutableRawPointer(ptr)
        let count = (byteLength - bytes) / MemoryLayout<Element>.size
        return PointerSpan<Element>(raw.bindMemory(to: Element.self, capacity: count), count)
    }
    
    public func offsetBy(elements: Int) -> PointerSpan<Element> {
        PointerSpan<Element>(ptr + elements, length - elements)
    }
    
    let ptr: UnsafeMutablePointer<Element>
    
    init(_ pointer: UnsafeMutablePointer<Element>, _ length: Int) {
        ptr = pointer
        self.length = length
        byteLength = length * stride
    }
    
    public subscript(index: Int) -> Element {
        get { ptr[index] }
        set { ptr[index] = newValue }
    }
    
    public subscript(range: Range<Int>) -> PointerSpan<Element> {
        get { PointerSpan<Element>(ptr + range.lowerBound, range.upperBound - range.lowerBound) }
        set {
            for i in 0..<(range.upperBound - range.lowerBound) {
                ptr[range.lowerBound + i] = newValue[i]
            }
        }
    }
    
    public static func +(left: PointerSpan<Element>, right: Int) -> PointerSpan<Element> {
        PointerSpan<Element>(left.ptr + right, left.length - right)
    }
    
    public static func +=(left: inout PointerSpan<Element>, right: Int) {
        left = left + right
    }
    
    public func to<T>() -> PointerSpan<T> {
        let raw = UnsafeMutableRawPointer(ptr)
        let count = byteLength / MemoryLayout<T>.size
        return PointerSpan<T>(raw.bindMemory(to: T.self, capacity: count), count)
    }
    
    public func to<T>(type: T.Type) -> PointerSpan<T> { to() as PointerSpan<T> }
}
