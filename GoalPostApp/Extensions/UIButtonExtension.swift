//
//  UIButtonExtension.swift
//  GoalPostApp
//
//  Created by Kevin Willocks on 3/17/18.
//  Copyright © 2018 Kevin Willocks. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0, green: 0.7462092042, blue: 0, alpha: 1)
    }
    
    
    func setDeselectedColor() {
         self.backgroundColor = #colorLiteral(red: 0.7464011312, green: 0.8857318759, blue: 0.7402122021, alpha: 1)
    }
}
