//
//  IStorage.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation
import LibSpan

public protocol IStorage {
    var asSpan: Span<UInt8> { get }
    func read(offset: Int, destination: Span<UInt8>) -> Result
    func write(offset: Int, source: Span<UInt8>) -> Result
    func flush() -> Result
    func setSize(size: Int) -> Result
    func getSize() -> (Result, Int)
}
