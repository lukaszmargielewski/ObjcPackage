import Foundation
import XCTest
@testable import ObjcPackage

class ObjcPackageTests: XCTestCase {

    private lazy var objcPackage = ObjcPackage(title: "A")

    func testPublic() {
        XCTAssertEqual(objcPackage?.title, "A")
    }

    func testInternal() {
        // How to expose internal Objective-C header to the test package, without making it public?
        //XCTAssertEqual(objcPackage.generateInternalSecret, "A_internal_secret")
    }
}
