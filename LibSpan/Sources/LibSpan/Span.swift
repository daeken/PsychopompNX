//
//  Span.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

public class Span<Element>: Collection {
    public typealias Index = Int
    public typealias Element = Element
    
    public static func from(data: DataBox, length: Int? = nil, byteOffset: Int = 0) -> Span<Element> {
        DataSpan<Element>(data, byteOffset, (length ?? data.data.count) / MemoryLayout<Element>.size)
    }
    public static func from(pointer: UnsafePointer<Element>, length: Int, byteOffset: Int = 0) -> Span<Element> {
        let raw = UnsafeMutableRawPointer(mutating: pointer).advanced(by: byteOffset)
        let retyped = raw.bindMemory(to: Element.self, capacity: length)
        return PointerSpan<Element>(retyped, length)
    }
    public static func from<T>(pointer: UnsafePointer<T>, length: Int, byteOffset: Int = 0) -> Span<Element> {
        let raw = UnsafeMutableRawPointer(mutating: pointer).advanced(by: byteOffset)
        let retyped = raw.bindMemory(to: Element.self, capacity: length)
        return PointerSpan<Element>(retyped, length)
    }
    public static func from(mutablePointer: UnsafeMutablePointer<Element>, length: Int, byteOffset: Int = 0) -> Span<Element> {
        PointerSpan<Element>(mutablePointer, length)
    }
    public static func from<T>(mutablePointer: UnsafeMutablePointer<T>, length: Int, byteOffset: Int = 0) -> Span<Element> {
        let raw = UnsafeMutableRawPointer(mutablePointer).advanced(by: byteOffset)
        let retyped = raw.bindMemory(to: Element.self, capacity: length)
        return PointerSpan<Element>(retyped, length)
    }
    
    public let length: Int
    public let byteLength: Int
    public let stride: Int = MemoryLayout<Element>.size
    
    let arr = [Element]()
    
    init(length: Int) {
        self.length = length
        byteLength = length * stride
    }
    
    public subscript(_ index: Int) -> Element {
        get { arr[0] }
        set { }
    }
    public subscript(_ range: Range<Int>) -> Span<Element> { get { self } set { } }

    subscript(_ range: ClosedRange<Int>) -> Span<Element> {
        get { self[range.lowerBound..<(range.upperBound + 1)] }
        set { self[range.lowerBound..<(range.upperBound + 1)] = newValue }
    }
    
    public static func +(left: Span<Element>, right: Int) -> Span<Element> {
        left.offsetBy(elements: right)
    }
    public static func +=(left: inout Span<Element>, right: Int) {
        left = left.offsetBy(elements: right)
    }
    
    public func offsetBy(bytes: Int) -> Span<Element> { self }
    public func offsetBy(elements: Int) -> Span<Element> { self }
    
    public func copyFrom<T: Collection>(source: T, toOffset: Int, length: Int? = nil) where T.Index == Int, T.Element == Element {
        for i in 0..<(length ?? source.count) {
            self[toOffset + i] = source[i]
        }
    }
    
    public func to(type: Element.Type) -> Span<Element> { self }
    public func to<T>(type: T.Type) -> Span<T> { Span<T>(length: -1) }
    
    public var startIndex: Int { 0 }
    public var endIndex: Int { length }
    
    public func index(after i: Int) -> Int { i + 1 }
}
