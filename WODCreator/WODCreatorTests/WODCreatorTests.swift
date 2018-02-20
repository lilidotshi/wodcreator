//
//  WODCreatorTests.swift
//  WODCreatorTests
//
//  Created by Lili Shi on 2/19/18.
//  Copyright © 2018 Lili Shi. All rights reserved.
//

import XCTest
@testable import WODCreator

class WODCreatorTests: XCTestCase {
    
    func testWorkout() {
        let barbell = Equipment(defaultEquipment: .barbell, weight: 95)
        let exercise = Exercise(name: "Back Squat", equipment: barbell, musclesWorked: [.glutes, .hamstrings])
        let component = Workout.Component(exercise: exercise, repScheme: [5,5,3,3,1,1])
        let kettlebell = Equipment(defaultEquipment: .kettlebell, weight: 35)
        let exercise2 = Exercise(name: "Russian Swing", equipment: kettlebell, musclesWorked: [.glutes, .shoulders])
        let component2 = Workout.Component(exercise: exercise2, repScheme: [21])
        let workout = Workout(components: [component, component2], workoutNickName: "Barbells & Kettlebells", lastPerformed: Date())
        XCTAssertEqual(workout.displayableString, "Barbells & Kettlebells: Back Squat (5-5-3-3-1-1), Russian Swing (21)")
    }
    
}
