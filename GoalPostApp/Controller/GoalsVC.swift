//
//  GoalVC.swift
//  GoalPostApp
//
//  Created by Kevin Willocks on 2/19/18.
//  Copyright © 2018 Kevin Willocks. All rights reserved.
//

import UIKit

let appDelegate = UIApplication.shared.delegate as? AppDelegate
class GoalsVC: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func addGoalButtonWasPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC")  else {
            return}
        presentDetail(createGoalVC)
    }
    
  


}

extension GoalsVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell()}
        cell.configureCell(description: "To do some more programming", type: .longTerm, goalProgressAmount: 2)
        return cell
    }
    
}











