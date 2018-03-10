//
//  CreateGoalsVC.swift
//  GoalPostApp
//
//  Created by Kevin Willocks on 3/10/18.
//  Copyright © 2018 Kevin Willocks. All rights reserved.
//

import UIKit

class CreateGoalsVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextButtonWasPressed(_ sender: Any) {
    }
    

    @IBAction func shortTermButtonWasPressed(_ sender: Any) {
    }
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
    }
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
