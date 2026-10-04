import Foundation

struct TableRow{
    enum Accessory {
        case arrow
        case toggle
        case none
    }
    
    
    let image : String
    let title : String
    let sub : String?
    var accessoryType : Accessory = .arrow
    let typePage : PageTypes
}

