//
//  HomeViewController.swift
//  WODCreator
//
//  Created by Lili Shi on 2/20/18.
//  Copyright © 2018 Lili Shi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var welcomeMessageLabel: UILabel!
    @IBOutlet var briefHistoryLabel: UILabel!
    @IBOutlet var workButton: UIButton!
    @IBOutlet var historyTableView: UITableView!

    @IBAction func createWorkout(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        historyTableView.dataSource = self
        historyTableView.delegate = self
        historyTableView.register(UINib(nibName: "WorkoutHistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "historyCell")
    }

    // MARK: - UITableViewDataSource

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let exercise1 = Exercise(name: "Front Squat", equipment: Equipment(defaultEquipment: .barbell, weight: 95), musclesWorked: [.glutes, .quads])
        let exercise2 = Exercise(name: "Back Squat", equipment: Equipment(defaultEquipment: .barbell, weight: 95), musclesWorked: [.glutes, .quads])
        let squat1 = Workout.Component(exercise: exercise1, repScheme: [50])
        let squat2 = Workout.Component(exercise: exercise2, repScheme: [50])
        let squatHell = Workout(components: [squat1, squat2], workoutNickName: "Squat Hell", lastPerformed: Date())
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as? WorkoutHistoryTableViewCell else {
            let cell = WorkoutHistoryTableViewCell(style: .default, reuseIdentifier: "historyCell")
            cell.configure(with: squatHell)
            return cell
        }
        cell.configure(with: squatHell)
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Top Workouts"
    }

}
