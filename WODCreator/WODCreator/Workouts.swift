struct Workout: Codable {
    struct Component: Codable {
        let compenent: WorkoutComponent
        let reps: Int
    }

    let components: [Component]
}

struct WorkoutComponent: Codable {
    let name: String
    let equipment: 
    let musclesWorked: [MuscleGroups]
}
