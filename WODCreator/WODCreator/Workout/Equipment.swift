enum DefaultEquipment {
    case barbell
    case kettlebell
    case dumbbell
    case bodyweight
    case jumprope
    case rower
    case box
    case other(String)
    
    var displayableName: String {
        switch self {
        case .barbell:
            return "barbell"
        case .dumbbell:
            return "dumbbell"
        case .kettlebell:
            return "kettlebell"
        case .bodyweight:
            return "body weight"
        case .jumprope:
            return "jump rope"
        case .rower:
            return "rower"
        case .box:
            return "box"
        case .other(let name):
            return name
        }
    }
}

struct Equipment: Codable {
    let name: String
    let id: Int
}

struct EquipmentList: Codable {
    let equipment: [Equipment]
}
