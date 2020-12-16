//
//  SpanWriter.swift
//  
//
//  Created by Sera Brocious on 12/16/20.
//

import Foundation

public class SpanWriter {
    let base: Span<UInt8>
    var span: Span<UInt8>
    public var bytesWritten: Int = 0
    
    public init<T>(_ span: Span<T>) {
        self.span = span.to(type: UInt8.self)
        base = self.span
    }
    
    public func write<T>(_ value: T) {
        let tspan = span.to(type: T.self)
        span += tspan.stride
        bytesWritten += tspan.stride
        tspan[0] = value
    }
    
    public func skip(_ bytes: Int) {
        span += bytes
        bytesWritten += bytes
    }
    
    public func writeAll<T>(_ values: [T]) {
        values.forEach { write($0) }
    }
    
    public func getSpan() -> Span<UInt8> {
        base[0..<bytesWritten]
    }
}
