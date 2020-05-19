import XCTest
@testable import VCWeakContainer

final class VCWeakContainerTests: XCTestCase {

    class Foo { }

    func test_array() {
        var array: [Weak<Foo>] = []
        array.append(Weak(Foo()))
        array.append(Weak(Foo()))
        array.append(Weak(Foo()))
        XCTAssertEqual(array.filter { $0.object != nil }.count, 0)
    }
}
