import XCTest
@testable import SMC

final class SMCTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SMC().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
