

import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests_02: XCTestCase {

    var fish1 = Fish(weigth: 1, value: 15)
    var fish2 = Fish(weigth: 3, value: 25)
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFish1HasCorrectWeight() {
        
        let result = fish1.weigth
        let expected = 1
        
        XCTAssertEqual(expected,result, "fish1 should weight 1 pound")
    }
    
    func testFish1HasCorrectValue() {
        
        let result = fish1.value
        let expected = 15
        
        XCTAssertEqual(expected,result, "fish2 should value $15")
    }
    
    func testFish2HasCorrectWeight() {
        
        let result = fish2.weigth
        let expected = 3
        
        XCTAssertEqual(expected,result, "fish2 should weight 3 pounds")
    }
    
    func testFish2HasCorrectValue() {
        
        let result = fish2.value
        let expected = 25
        
        XCTAssertEqual(expected,result, "fish2 should value $25")
    }
}
