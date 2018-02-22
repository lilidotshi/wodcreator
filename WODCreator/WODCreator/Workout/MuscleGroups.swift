enum Muscles: String, Codable {
    case ankle
    case calves
    case quads
    case hamstrings
    case glutes
    case abs
    case hipFlexors = "hip flexors"
    case lowerBack = "lower back"
    case pecs
    case shoulders
    case biceps
    case triceps
    case forearm
    case neck
    case traps
}

struct MuscleGroups: Codable {
    let name: String
    let id: Int
}

struct MuscleGroupList: Codable {
    let muscles: [MuscleGroups]
}
