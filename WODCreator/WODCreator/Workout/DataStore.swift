import Foundation

class EquipmentContext {
    static let shared = EquipmentContext()
    
    var equipment = [Equipment]()
    
    private init(){}
    
    func configure(with data: Data) throws {
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        equipment = try JSONDecoder().decode(EquipmentList.self, from: data).equipment
    }
}

class MuscleGroupsContext {
    static let shared = MuscleGroupsContext()
    
    var muscleGroups = [MuscleGroups]()
    
    private init() {}
    
    func configure(with data: Data) throws {
        muscleGroups = try JSONDecoder().decode(MuscleGroupList.self, from: data).muscles
    }
}

