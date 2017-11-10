

import Foundation


protocol CaptainDelegate
{
    func goFish() -> Bool?
    
}

class Submarine: NSObject
{


    var depth = 0
    var tile = 0
    var captainDelegate : CaptainDelegate?
    var cargo : [Fish]
    
    override init()
    {
        depth = 0
        cargo = []
    }
 
    func dive()
    {
        if depth < 1
        {
        depth = 1
        }

    }
    
    func surface()
    {
        if depth == 1
        {
        depth = 0
        }
    }
    
    func descend()
    {
        if depth < Ocean.kMAX_DEPTH && depth != 0
        {
        depth += 1
        }
    }
    
    func ascend()
    {
        if depth > 1
        {
        depth -= 1
        }
    }
    
    func forward()
    {
        if tile >= 0 && tile < Ocean.kMAX_TILE && depth > 0
        {
            tile += 1
        }
    }
    
    func backwards()
    {
        if tile > 0 && tile <= Ocean.kMAX_TILE && depth > 0
        {
            tile -= 1
        }
    }
    
    func goFish(o: Ocean, depth: Int, tile: Int) -> Fish?
    {
        let canFish = captainDelegate?.goFish()
        var fish : Fish?
        if canFish == true
        {
            fish = o.findFish(atDepth: depth, andTile: tile)
            if let fish = fish
            {
            self.cargo.append(fish)
            }
        }
        else
        {
            fish = nil
        }
        return fish
    }
}
