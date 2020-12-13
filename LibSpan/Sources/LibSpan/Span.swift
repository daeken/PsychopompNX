//
//  Span.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation

protocol ISpan {
    associatedtype Element
    
    subscript(_ index: Int) -> Element { get }
}

protocol IMutableSpan: ISpan {
    subscript(_ index: Int) -> Element { get set }
}

public class Span<Element> {
    static func from(data: Data, byteOffset: Int = 0) -> DataSpan<Element> { DataSpan<Element>() }
    static func from(pointer: UnsafeMutablePointer<Element>, byteOffset: Int = 0) -> PointerSpan<Element> { PointerSpan<Element>() }
    static func from<T>(pointer: UnsafeMutablePointer<T>, byteOffset: Int = 0) -> PointerSpan<Element> { PointerSpan<Element>() }
}
