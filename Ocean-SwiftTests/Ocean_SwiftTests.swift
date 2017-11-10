

import UIKit
import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests: XCTestCase {
    
    var sub = Submarine()
    
    func testSubHasInitialDepth() {
        
        let result = sub.depth
        let expected = 0
        
        XCTAssertEqual(expected,result, "sub's inital depth should be at the SURFACE (0)")
    }
    
    func testSubInitalDive() {
        
        sub.dive()
        let result = sub.depth
        let expected = 1
        
        XCTAssertEqual(expected,result, "sub intally dives down to depth 1")
    }
    
    func testSubCannotDive() {
        
        sub.depth = 2
        sub.dive()
        let result = sub.depth
        let expected = 2
        
        XCTAssertEqual(expected,result, "sub cannot dive if the sub is already below the surface")
    }
    
    func testSubSurfaces() {
        
        sub.depth = 1
        sub.surface()
        let result = sub.depth
        let expected = 0
        
        XCTAssertEqual(expected,result, "only brings the sub out of the water if it is at depth = 1")
    }
    
    func testSubCannotSurface() {
        
        sub.depth = 2
        sub.surface()
        let result = sub.depth
        let expected = 2
        
        XCTAssertEqual(expected,result, "can't surface the submarine when its in deeper waters")
    }
    
    func testSubDescend() {
        
        sub.depth = 2
        sub.descend()
        let result = sub.depth
        let expected = 3
        
        XCTAssertEqual(expected,result, "descend takes the sub deeper into the ocean")
    }
    
    func testSubCannotDescendAtSurface() {
        
        sub.descend()
        let result = sub.depth
        let expected = 0
        
        XCTAssertEqual(expected,result, "descend doesn't work if the submarine is at the surface")
    }
    
    func testSubCannotDescendAtMaxDepth() {
        
        sub.depth = 9
        sub.descend()
        let result = sub.depth
        let expected = 9
        
        XCTAssertEqual(expected,result, "descend doesn't work if the submarine is at MaxDepth")
    }
    
    func testSubAscend() {
        
        sub.depth = 3
        sub.ascend()
        let result = sub.depth
        let expected = 2
        
        XCTAssertEqual(expected,result, "ascend allows the sub to get closer to the surface")
    }
    
    func testSubCannotAscendAtDepth1() {
        
        sub.depth = 1
        sub.ascend()
        let result = sub.depth
        let expected = 1
        
        XCTAssertEqual(expected,result, "ascend only works if the submarine is under water and not directly under the surface")
        
    }
}
