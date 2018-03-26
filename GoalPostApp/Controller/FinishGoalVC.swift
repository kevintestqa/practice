//
//  FinishGoalVC.swift
//  GoalPostApp
//
//  Created by Kevin Willocks on 3/20/18.
//  Copyright © 2018 Kevin Willocks. All rights reserved.
//

import UIKit
import CoreData

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
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    
    func save(completion: (_ finished: Bool)->()){
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
    }
    
    
    
    
    
    
    
    
}
