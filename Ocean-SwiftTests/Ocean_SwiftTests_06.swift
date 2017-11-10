


import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests_06: XCTestCase {
    
    /*
    The submarine contains cargo where the fish are stored (in order of first caught to last caught).
    */
    var sub:Submarine = Submarine()
    var ocean:Ocean = Ocean()
    var normal:Captain = Captain(captainType: Captain.CaptainType.Normal)
    var drunky:Captain = Captain(captainType: Captain.CaptainType.Drunk)
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSubHasEmptyCargo() {
       
        /* at initalization sub should have empty cargo. Test that the count of cargo items is 0 */
        
        let result = self.sub.cargo.count
        let expected = 0
        XCTAssertEqual(result, expected)
        
    }
    
    func testSubGoesFishing() {
        
        /* count of cargo after submarine picks up a fish at depth = 1, tile = 3 is 1.
            Test that the count of cargo items is 0 */
        
//        self.sub.captainDelegate = normal
        self.sub.captainDelegate = normal
        let fish = self.sub.goFish(o: ocean, depth: 1, tile: 3)
        let result = self.sub.cargo.count
        let expected = 0
        XCTAssertEqual(result, expected)

    }
    
    func testSubGoesFishingCorrectly() {
        
        /* submarine's cargo initially contains a Giant Tuna and then navigates to the giant salmon at depth = 2, tile = 1. 
        Test that in cargo[0] is a Giant Tuna and in cargo[1] is a Giant Salmon */
       
        self.sub.captainDelegate = normal
        self.sub.cargo.append(GiantTuna())
        let fish = self.sub.goFish(o: ocean, depth: 3, tile: 1)
        let result = self.sub.cargo[0]
        let result2 = self.sub.cargo[1]
        let expected = self.sub.cargo[0] as? GiantTuna
        let expected2 = self.sub.cargo[1] as? GiantSalmon
        XCTAssertEqual(result, expected)
        XCTAssertEqual(result2, expected2)

    }
}
