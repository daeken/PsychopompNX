//
//  Ticket.swift
//  
//
//  Created by Sera Brocious on 12/15/20.
//

import Foundation
import LibSpan

public class Ticket {
    public let rightsId: [UInt8]
    public let titleKey: [UInt8]
    
    public init<T>(_ data: Span<T>) {
        let span = data.to(type: UInt8.self)
        // TODO: Add actual ticket reader
        titleKey = Array(span[0x180..<0x190])
        rightsId = Array(span[0x2a0..<0x2b0])
    }
}
