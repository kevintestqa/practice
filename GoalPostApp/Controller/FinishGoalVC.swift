//
//  FinishGoalVC.swift
//  GoalPostApp
//
//  Created by Kevin Willocks on 3/20/18.
//  Copyright © 2018 Kevin Willocks. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var pointsTextField: UITextField!
    
    @IBOutlet weak var createGoalButton: UIButton!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type :GoalType){
        self.goalDescription = description
        self.goalType = type
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        pointsTextField.delegate = self
        pointsTextField.delegate = self

      
    }

    @IBAction func createGoalButtonWasPressed(_ sender: Any) {
        //Pass data into Core Data Goal Model
    }
    
}
