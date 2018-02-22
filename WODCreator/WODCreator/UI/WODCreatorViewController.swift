//
//  ViewController.swift
//  WODCreator
//
//  Created by Lili Shi on 2/19/18.
//  Copyright © 2018 Lili Shi. All rights reserved.
//

import UIKit

class WODCreatorViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sharedEquipment = EquipmentContext.shared
        let sharedMuscles = MuscleGroupsContext.shared
        if let path = Bundle.main.path(forResource: "TestData", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                try sharedEquipment.configure(with: data)
                try sharedMuscles.configure(with: data)
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        print(sharedEquipment.equipment)
        print(sharedMuscles.muscleGroups)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

