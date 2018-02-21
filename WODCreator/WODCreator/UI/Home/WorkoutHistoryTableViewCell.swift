//
//  WorkoutHistoryTableViewCell.swift
//  WODCreator
//
//  Created by Lili Shi on 2/19/18.
//  Copyright © 2018 Lili Shi. All rights reserved.
//

import UIKit

class WorkoutHistoryTableViewCell: UITableViewCell {

    @IBOutlet var workoutLabel: UILabel!
    @IBOutlet var lastDone: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with workout: Workout) {
        workoutLabel.text = workout.displayableString
        let dateFormatter = Utilities.shared.dateFormatter
        lastDone.text = dateFormatter.string(from: workout.lastPerformed)
    }

}
