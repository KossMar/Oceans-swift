


import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests_04: XCTestCase {

    var sub = Submarine()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSubOnInitialTileof0() {
        
        let result = sub.tile
        let expected = 0
        
        XCTAssertEqual(expected,result, "sub should initially be on the surface")
    }

    func testSubMovesForward() {
        
        sub.dive()
        sub.forward()
        let result = sub.tile
        let expected = 1
        
        XCTAssertEqual(expected,result, "once the sub dives, the sub can move forward (towards the right) in the ocean")
    }
    
    func testSubCannotMoveForwardAtSurface() {
        
        sub.forward()
        let result = sub.tile
        let expected = 0
        
        XCTAssertEqual(expected,result, "sub cannot be on the surface to move forward in the ocean")
    }
    
    func testSubCannotMoveForwardAtEdge() {
        
        sub.tile = 5
        sub.forward()
        let result = sub.tile
        let expected = 5
        
        XCTAssertEqual(expected,result, "sub cannot move past the right edge of the ocean")
    }
    
    func testSubMovesBackwards() {
        
        sub.tile = 4
        sub.dive()
        sub.backwards()
        let result = sub.tile
        let expected = 3
        
        XCTAssertEqual(expected,result, "oves the sub backward (towards the right) in the ocean")
    }
    
    func testSubCannotMoveBackwardsAtSurface() {
    
        sub.tile = 4
        sub.backwards()
        let result = sub.tile
        let expected = 4
        
        XCTAssertEqual(expected,result, "sub cannot be on the surface to move forward in the ocean")
    }
    
    func testSubCannotMoveBackwardsAtTile1() {
        
        sub.dive()
        sub.backwards()
        let result = sub.tile
        let expected = 0
        
        XCTAssertEqual(expected,result, "sub cannot move past the left edge of the ocean")
    }
    

}
