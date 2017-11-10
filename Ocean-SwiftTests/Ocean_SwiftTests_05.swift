


import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests_05: XCTestCase {

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
    
    /*
    The submarine DELEGATES fishing duties to it's captain. A Captain can either be normal or drunk. If the sub has a normal captain, the submarine catches the fish at that depth and tile, if the sub has a drunk captain, whenever the captain tries to catch a fish, he always comes up empty.
    */

    func testNormalCaptianFindsGiantSalmon() {
        
        self.sub.captainDelegate = normal
        let fish = self.sub.goFish(o: ocean, depth: 1, tile: 4) as! GiantSalmon?
        XCTAssertNotNil(fish, "if the tile contais returns a giant salmon if there is an S at the position")
        
    }

    func testDrunkCaptianCannotFindGiantSalmon() {
        
        self.sub.captainDelegate = drunky
        let fish = self.sub.goFish(o: ocean, depth: 1, tile: 4) as! GiantSalmon?
        XCTAssertNil(fish, "a drunk captain cannot find a giant salmon even on a tile that contains a giant salmon")
        
    }
    
    func testNormalCaptianFindsGiantTuna() {
        
        self.sub.captainDelegate = normal
        let fish = self.sub.goFish(o: ocean, depth: 2, tile: 1) as! GiantTuna?
        XCTAssertNotNil(fish, "a normal captain finds a giant tuna on a tile that contains a giant tuna")
        
    }
    
    func testNormalCaptianCannotFindFishIfEmptyTile() {
        
        self.sub.captainDelegate = normal
        let fish = self.sub.goFish(o: ocean, depth: 1, tile: 1) as! GiantTuna?
        XCTAssertNil(fish, "if the tile is empty, even a normal captain cannot find a fish")
        
    }

}
