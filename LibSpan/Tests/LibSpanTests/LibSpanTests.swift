import XCTest
@testable import LibSpan

final class LibSpanTests: XCTestCase {
    func testData() {
        let deadbeef = DataBox(Data([0xEF, 0xBE, 0xAD, 0xDE]))
        var span = Span<UInt8>.from(data: deadbeef)
        XCTAssertEqual(span[0], 0xEF)
        XCTAssertEqual(span[1], 0xBE)
        XCTAssertEqual(span[2], 0xAD)
        XCTAssertEqual(span[3], 0xDE)
        span = Span<UInt8>.from(data: deadbeef, byteOffset: 1)
        XCTAssertEqual(span[0], 0xBE)
        span = Span<UInt8>.from(data: deadbeef, byteOffset: 2)
        XCTAssertEqual(span[0], 0xAD)
        span = Span<UInt8>.from(data: deadbeef, byteOffset: 3)
        XCTAssertEqual(span[0], 0xDE)
        
        span = Span<UInt8>.from(data: deadbeef)
        XCTAssertEqual(Array(span), [0xEF, 0xBE, 0xAD, 0xDE])
        span = Span<UInt8>.from(data: deadbeef, length: 2)
        XCTAssertEqual(Array(span), [0xEF, 0xBE])
        
        let span2 = Span<UInt32>.from(data: deadbeef, length: 1)
        XCTAssertEqual(span2[0], 0xDEADBEEF)
        
        span = Span<UInt8>.from(data: deadbeef)
        XCTAssertEqual(Array(span), [0xEF, 0xBE, 0xAD, 0xDE])
        
        XCTAssertEqual(Array(span[1..<3]), [0xBE, 0xAD])
        XCTAssertEqual(Array(span[1...3]), [0xBE, 0xAD, 0xDE])
        
        var span3 = Span<UInt16>.from(data: deadbeef, length: 1, byteOffset: 2)
        XCTAssertEqual(span3[0], 0xDEAD)
        span3[0] = 0xF00B
        XCTAssertEqual(span3[0], 0xF00B)
        
        XCTAssertEqual(Array(deadbeef.data), [0xEF, 0xBE, 0x0B, 0xF0])
        
        span3 = Span<UInt16>.from(data: deadbeef, length: 1, byteOffset: 1)
        XCTAssertEqual(span3[0], 0x0BBE)
        span3[0] = 0xF00B
        XCTAssertEqual(span3[0], 0xF00B)
        
        XCTAssertEqual(Array(deadbeef.data), [0xEF, 0x0B, 0xF0, 0xF0])
        
        let deadbeef2 = DataBox(Data([0xEF, 0xBE, 0xAD, 0xDE]))
        span = Span<UInt8>.from(data: deadbeef2)
        span[1...2] = Span<UInt8>.from(data: DataBox(Data([0x34, 0x12])))
        XCTAssertEqual(Array(span), [0xEF, 0x34, 0x12, 0xDE])
        span[1..<3] = Span<UInt8>.from(data: DataBox(Data([0x12, 0x34])))
        XCTAssertEqual(Array(span), [0xEF, 0x12, 0x34, 0xDE])
    }
    
    func testPointers() {
        var deadbeef: UInt32 = 0xDEADBEEF
        var span = Span<UInt8>.from(pointer: &deadbeef, length: 4)
        XCTAssertEqual(span[0], 0xEF)
        XCTAssertEqual(span[1], 0xBE)
        XCTAssertEqual(span[2], 0xAD)
        XCTAssertEqual(span[3], 0xDE)
        span = Span<UInt8>.from(pointer: &deadbeef, length: 3, byteOffset: 1)
        XCTAssertEqual(span[0], 0xBE)
        span = Span<UInt8>.from(pointer: &deadbeef, length: 2, byteOffset: 2)
        XCTAssertEqual(span[0], 0xAD)
        span = Span<UInt8>.from(pointer: &deadbeef, length: 1, byteOffset: 3)
        XCTAssertEqual(span[0], 0xDE)
        
        XCTAssertEqual(Span<UInt16>.from(pointer: &deadbeef, length: 1, byteOffset: 1)[0], 0xADBE)
        
        var span2 = Span<UInt8>.from(pointer: &deadbeef, length: 4)
        XCTAssertEqual(span2[0], 0xEF)
        span2 += 1
        XCTAssertEqual(span2[0], 0xBE)
        XCTAssertEqual(span2[1], 0xAD)
        span2 += 2
        XCTAssertEqual(span2[0], 0xDE)
        
        span = Span<UInt8>.from(pointer: &deadbeef, length: 4)
        var span3 = span.to(type: UInt16.self)
        XCTAssertEqual(span3[0], 0xBEEF)
        XCTAssertEqual(span3[1], 0xDEAD)
        span3 += 1
        XCTAssertEqual(span3[0], 0xDEAD)
        span3 += -2
        XCTAssertEqual(span3[1], 0xBEEF)
        XCTAssertEqual(span3[2], 0xDEAD)
        
        XCTAssertEqual(Array(span), [0xEF, 0xBE, 0xAD, 0xDE])
        
        XCTAssertEqual(Array(span[1..<3]), [0xBE, 0xAD])
        XCTAssertEqual(Array(span[1...3]), [0xBE, 0xAD, 0xDE])
        
        var _1234 = UInt16(0x1234)
        span[1...2] = Span<UInt8>.from(pointer: &_1234, length: 2)
        XCTAssertEqual(Array(span), [0xEF, 0x34, 0x12, 0xDE])
        
        XCTAssertEqual(deadbeef, 0xDE1234EF)
    }
    
    func testBoth() {
        let deadbeef = DataBox(Data([0xEF, 0xBE, 0xAD, 0xDE]))
        var span = Span<UInt8>.from(data: deadbeef)
        var _1234 = UInt16(0x1234)
        let ptrspan = Span<UInt8>.from(pointer: &_1234, length: 2)
        span.copyFrom(source: ptrspan, toOffset: 1)
        XCTAssertEqual(Array(span), [0xEF, 0x34, 0x12, 0xDE])
        
        span[0..<2] = ptrspan
        XCTAssertEqual(Array(span), [0x34, 0x12, 0x12, 0xDE])

        span[2...3] = ptrspan
        XCTAssertEqual(Array(span), [0x34, 0x12, 0x34, 0x12])
    }

    static var allTests = [
        ("testData", testData),
        ("testPointers", testPointers),
        ("testBoth", testBoth),
    ]
}
