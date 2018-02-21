import Foundation

class Utilities {
    static let shared = Utilities()
    let dateFormatter: DateFormatter = {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MM/dd/YY"
        return dateformatter
    }()
    
    private init(){}
    
    
}
