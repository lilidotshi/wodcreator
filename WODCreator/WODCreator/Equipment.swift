enum DefaultEquipment: String {
    case barbell
    case kettlebell
    case dumbell
    case bodyweight
    case jumprope = "jump rope"
    case rower
}

struct Equipment {
    let equipment: String
    let weight: Int?
    let usinglb: Bool
}
