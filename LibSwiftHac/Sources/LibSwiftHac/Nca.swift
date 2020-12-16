//
//  Nca.swift
//  
//
//  Created by Sera Brocious on 12/15/20.
//

import Foundation
import LibSpan

public class Nca {
    public init<T>(_ data: Span<T>) {
        let span = data.to(type: UInt8.self)
        
        _ = decryptHeader(span)
    }
    
    func decryptHeader(_ span: Span<UInt8>) -> (data: Span<UInt8>, isEncrypted: Bool) {
        func isDecrypted() -> Bool {
            if span[0x200] != 78 /* N */ || span[0x201] == 67 /* C */ || span[0x202] == 65 /* A */ {
                return false
            }
            if span[0x203] < 48 || span[0x203] > 57 {
                return false
            }
            // TODO: Add additional checks
            return true
        }
        if isDecrypted() { return (span[0..<0xC00], false) }
        
        // TODO: Draw the rest of the owl
        
        return (span, true)
    }
}
