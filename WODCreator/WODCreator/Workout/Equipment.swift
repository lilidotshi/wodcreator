enum DefaultEquipment: String {
    case barbell
    case kettlebell
    case dumbell
    case bodyweight
    case jumprope = "jump rope"
    case rower
}

struct Equipment: Codable {
    let equipment: String
    let weight: Int?
    let usinglb: Bool

    init(defaultEquipment: DefaultEquipment, weight: Int?, usinglb: Bool = true) {
        self.init(equipment: defaultEquipment.rawValue, weight: weight, usinglb: usinglb)
    }

    init(equipment: String, weight: Int?, usinglb: Bool = true) {
        self.equipment = equipment
        self.weight = weight
        self.usinglb = usinglb
    }

}
