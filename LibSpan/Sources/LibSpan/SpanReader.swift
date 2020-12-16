//
//  SpanReader.swift
//  
//
//  Created by Sera Brocious on 12/14/20.
//

import Foundation

public class SpanReader {
    var span: Span<UInt8>
    public var bytesConsumed: Int = 0
    
    public init<T>(_ span: Span<T>) {
        self.span = span.to(type: UInt8.self)
    }
    
    public func read<T>(_ of: T.Type) -> T {
        let tspan = span.to(type: T.self)
        span += tspan.stride
        bytesConsumed += tspan.stride
        return tspan[0]
    }
    
    public func skip(_ bytes: Int) {
        span += bytes
        bytesConsumed += bytes
    }
    
    public func readBytes(_ count: Int) -> [UInt8] {
        let bytes = Array(span[0..<count])
        span += count
        bytesConsumed += count
        return bytes
    }
}
