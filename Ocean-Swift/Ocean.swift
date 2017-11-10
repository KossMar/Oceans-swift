import Foundation

public struct Ocean {
    
    static let kMAX_DEPTH = 4
    static let kMAX_TILE = 5
    static let kSURFACE = 0
    
    enum FishType {
        case empty
        case tuna
        case salmon
    }
    
    // The board below represents the ocean. It's an array of tuples
    // Tuple order is (depth, tile, FishType)
    // Each tile is either .Empty or has a fish: .Salmon or .Tuna
    
    var board:[(Int,Int,FishType)] = [
        
        /* => => Forward direction => => */
        /* 1 2 3 4 5 # Tile Number */
        
        (1,1,.empty),(1,2,.empty),(1,3,.empty),(1,4,.salmon),(1,5,.empty), //Depth1
        (2,1,.tuna),(2,2,.salmon),(2,3,.empty),(2,4,.empty),(2,5,.salmon), //Depth2
        (3,1,.salmon),(3,2,.empty),(3,3,.empty),(3,4,.tuna),(3,5,.empty), //Depth3
        (4,1,.empty),(4,2,.empty),(4,3,.empty),(4,4,.tuna),(4,5,.empty)] //Depth4
    
    /* => => Forward direction => => */
    
    func findFish(atDepth depth:Int, andTile tile:Int) -> Fish? {
        
        let tuple = board.first { (aDepth, aTile, aType) -> Bool in
            return depth == aDepth && tile == aTile
        }
        
        if let tuple = tuple {
            switch tuple.2 {
            case .salmon:
                return GiantSalmon()
            case .tuna:
                return GiantTuna()
            case .empty:
                return nil
            }
        } else {
            return nil
        }
    }
}
