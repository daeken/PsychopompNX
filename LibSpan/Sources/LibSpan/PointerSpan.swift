//
//  PointerSpan.swift
//  
//
//  Created by Sera Brocious on 12/13/20.
//

import Foundation

final class PointerSpan<Element>: SpanProtocol {
    var length: Int
    var byteLength: Int
    let stride: Int = MemoryLayout<Element>.size
    
    func offsetBy(bytes: Int) -> PointerSpan<Element> {
        let raw = UnsafeMutableRawPointer(ptr)
        let count = (byteLength - bytes) / MemoryLayout<Element>.size
        return PointerSpan<Element>(raw.bindMemory(to: Element.self, capacity: count), count)
    }
    
    func offsetBy(elements: Int) -> PointerSpan<Element> {
        PointerSpan<Element>(ptr + elements, length - elements)
    }
    
    let ptr: UnsafeMutablePointer<Element>
    
    init(_ pointer: UnsafeMutablePointer<Element>, _ length: Int) {
        ptr = pointer
        self.length = length
        byteLength = length * stride
    }
    
    subscript(index: Int) -> Element {
        get { ptr[index] }
        set { ptr[index] = newValue }
    }
    
    subscript(range: Range<Int>) -> PointerSpan<Element> {
        get { PointerSpan<Element>(ptr + range.lowerBound, range.upperBound - range.lowerBound) }
        set {
            for i in 0..<(range.upperBound - range.lowerBound) {
                ptr[range.lowerBound + i] = newValue[i]
            }
        }
    }
    
    static func +(left: PointerSpan<Element>, right: Int) -> PointerSpan<Element> {
        PointerSpan<Element>(left.ptr + right, left.length - right)
    }
    
    static func +=(left: inout PointerSpan<Element>, right: Int) {
        left = left + right
    }
    
    func to<T>() -> PointerSpan<T> {
        let raw = UnsafeMutableRawPointer(ptr)
        let count = byteLength / MemoryLayout<T>.size
        return PointerSpan<T>(raw.bindMemory(to: T.self, capacity: count), count)
    }
    
    func to<T>(type: T.Type) -> PointerSpan<T> { to() as PointerSpan<T> }
}
