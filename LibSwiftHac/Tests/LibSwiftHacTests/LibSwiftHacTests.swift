import XCTest
@testable import LibSwiftHac

final class LibSwiftHacTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LibSwiftHac().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
