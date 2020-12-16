//
//  PointerSpan.swift
//  
//
//  Created by Sera Brocious on 12/13/20.
//

import Foundation

public final class PointerSpan<Element>: Span<Element> {
    public override func offsetBy(bytes: Int) -> PointerSpan<Element> {
        let raw = UnsafeMutableRawPointer(ptr)
        let count = (byteLength - bytes) / MemoryLayout<Element>.size
        return PointerSpan<Element>(raw.bindMemory(to: Element.self, capacity: count), count)
    }
    
    public override func offsetBy(elements: Int) -> PointerSpan<Element> {
        PointerSpan<Element>(ptr + elements, length - elements)
    }
    
    let ptr: UnsafeMutablePointer<Element>
    
    init(_ pointer: UnsafeMutablePointer<Element>, _ length: Int) {
        ptr = pointer
        super.init(length: length)
    }
    
    public override subscript(index: Int) -> Element {
        get { ptr[index] }
        set { ptr[index] = newValue }
    }
    
    public override subscript(range: Range<Int>) -> Span<Element> {
        get { PointerSpan<Element>(ptr + range.lowerBound, range.upperBound - range.lowerBound) }
        set {
            for i in 0..<(range.upperBound - range.lowerBound) {
                ptr[range.lowerBound + i] = newValue[i]
            }
        }
    }
    
    public override func to<T>(type: T.Type) -> Span<T> {
        let raw = UnsafeMutableRawPointer(ptr)
        let count = byteLength / MemoryLayout<T>.size
        return PointerSpan<T>(raw.bindMemory(to: T.self, capacity: count), count)
    }
}
