//
//  Span.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

public protocol SpanProtocol: Collection where Index == Int {
    associatedtype Element
    
    var length: Int { get }
    var byteLength: Int { get }
    var stride: Int { get }
    
    subscript(_ index: Int) -> Element { get set }
    subscript(_ range: Range<Int>) -> Self { get set }

    static func +(left: Self, right: Int) -> Self
    static func +=(left: inout Self, right: Int)
    
    func offsetBy(bytes: Int) -> Self
    func offsetBy(elements: Int) -> Self
}

public extension SpanProtocol {
    var startIndex: Int { 0 }
    var endIndex: Int { length }
    
    func index(after i: Int) -> Int { i + 1 }
    
    subscript<T: SpanProtocol>(_ range: Range<Int>) -> T? where T.Element == Element {
        get { nil }
        set {
            copyFrom(source: newValue!, toOffset: range.lowerBound, length: range.upperBound - range.lowerBound)
        }
    }
    
    subscript(_ range: ClosedRange<Int>) -> Self {
        get { self[range.lowerBound..<(range.upperBound + 1)] }
        set { self[range.lowerBound..<(range.upperBound + 1)] = newValue }
    }
    
    subscript<T: SpanProtocol>(_ range: ClosedRange<Int>) -> T? where T.Element == Element {
        get { self[range.lowerBound..<(range.upperBound + 1)] }
        set { self[range.lowerBound..<(range.upperBound + 1)] = newValue }
    }
    
    mutating func copyFrom<T: Collection>(source: T, toOffset: Int, length: Int? = nil) where T.Index == Int, T.Element == Element {
        for i in 0..<(length ?? source.count) {
            self[toOffset + i] = source[i]
        }
    }
}

public class Span<Element> {
    public static func from(data: DataBox, length: Int? = nil, byteOffset: Int = 0) -> DataSpan<Element> {
        DataSpan<Element>(data, byteOffset, (length ?? data.data.count) / MemoryLayout<Element>.size)
    }
    public static func from(pointer: UnsafePointer<Element>, length: Int, byteOffset: Int = 0) -> PointerSpan<Element> {
        let raw = UnsafeMutableRawPointer(mutating: pointer).advanced(by: byteOffset)
        let retyped = raw.bindMemory(to: Element.self, capacity: length)
        return PointerSpan<Element>(retyped, length)
    }
    public static func from<T>(pointer: UnsafePointer<T>, length: Int, byteOffset: Int = 0) -> PointerSpan<Element> {
        let raw = UnsafeMutableRawPointer(mutating: pointer).advanced(by: byteOffset)
        let retyped = raw.bindMemory(to: Element.self, capacity: length)
        return PointerSpan<Element>(retyped, length)
    }
    public static func from(mutablePointer: UnsafeMutablePointer<Element>, length: Int, byteOffset: Int = 0) -> PointerSpan<Element> {
        PointerSpan<Element>(mutablePointer, length)
    }
    public static func from<T>(mutablePointer: UnsafeMutablePointer<T>, length: Int, byteOffset: Int = 0) -> PointerSpan<Element> {
        let raw = UnsafeMutableRawPointer(mutablePointer).advanced(by: byteOffset)
        let retyped = raw.bindMemory(to: Element.self, capacity: length)
        return PointerSpan<Element>(retyped, length)
    }
}
