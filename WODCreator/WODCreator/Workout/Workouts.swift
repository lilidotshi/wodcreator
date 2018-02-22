import Foundation

struct Workout: Codable {
    struct Component: Codable {
        let exercise: Exercise
        let repScheme: [Int]
        let weight: Int?
        
        var displayableComponent: String {
            var fullString = "\(exercise.name) ("
            for (index, item) in repScheme.enumerated() {
                fullString += index < repScheme.count - 1 ? "\(item)-" : "\(item)"
            }
            fullString += ")"
            return fullString
        }
    }

    let components: [Component]
    let workoutNickName: String
    let lastPerformed: Date

    var displayableString: String {
        var fullString = workoutNickName + ": "
        for (index, component) in components.enumerated() {
            fullString += index < components.count - 1 ? "\(component.displayableComponent), " : "\(component.displayableComponent)"
        }
        return fullString
    }
}

/**
 Specific, scientific name of an exercise of the work out
 - parameters:
    - name: The name of the exercise
    - equipment: The equipment needed (e.g. barbell, kettlebell) See `DefaultEquipment` for examples
 */
struct Exercise: Codable {
    let name: String
    let id: String
    let equipment: Equipment
    let musclesWorked: [MuscleGroups]
}


