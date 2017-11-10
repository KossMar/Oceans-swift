
import Foundation

class Captain: NSObject, CaptainDelegate {

    let capType : CaptainType
    
    enum CaptainType {
        case Normal, Drunk
    }

    
    init(captainType: CaptainType)
    {
        self.capType = captainType
    }
    
    func goFish() -> Bool?
    {
        switch self.capType
        {
        case CaptainType.Normal:
            return true
        case CaptainType.Drunk:
            return false
        }
    }
    
}
