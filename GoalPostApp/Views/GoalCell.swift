//
//  GoalCell.swift
//  GoalPostApp
//
//  Created by Kevin Willocks on 2/21/18.
//  Copyright © 2018 Kevin Willocks. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel: UILabel!
    
    @IBOutlet weak var goalTypeLabel: UILabel!
    
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    func configureCell(description: String, type: String, goalProgressAmount: Int ) {
        self.goalDescriptionLabel.text = description
        self.goalTypeLabel.text = type
        self.goalProgressLabel.text = String(describing: goalProgressAmount)
}

}
