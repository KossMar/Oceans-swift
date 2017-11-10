

import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests_03: XCTestCase {

    var giantSalmon = GiantSalmon()
    var giantTuna = GiantTuna()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAllGiantSalmonAreFish() {
        
        let fish = giantSalmon as Fish?
        
        XCTAssertNotNil(fish, "all giant salmons are fish")
    }
    
    func testGiantSalmonHasCorrectWeight() {
        
        let result = giantSalmon.weigth
        let expected = 4
        
        XCTAssertEqual(expected,result, "giant salmon's weight 4 pounds")
    }

    func testGiantSalmonHasCorrectValue() {
        
        let result = giantSalmon.value
        let expected = 30
        
        XCTAssertEqual(expected,result, "giant salmon' value is $30")
    }
    
    
    func testAllGiantTunaAreFish() {
        
        let fish = giantTuna as Fish?
        
        XCTAssertNotNil(fish, "all giant tunas are fish")
    }
    
    func testGiantTunaHasCorrectWeight() {
        
        let result = giantTuna.weigth
        let expected = 2
        
        XCTAssertEqual(expected,result, "giant tuna's weight 2 pounds")
    }
    
    func testGiantTunaHasCorrectValue() {
        
        let result = giantTuna.value
        let expected = 25
        
        XCTAssertEqual(expected,result, "giant tuna's value is $25")
    }

}
