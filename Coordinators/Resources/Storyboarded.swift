//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Tito Ciuro on 1/30/19.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

protocol Storyboarded {
  static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate() -> Self {
        // Returns the full name of this class (e.g. "Coordinators.ViewController")
        let fullName = NSStringFromClass(self)
        
        // Retrieve the second element of the full name
        let className = fullName.components(separatedBy: ".").last!
        
        // Load the referenced storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate the view controller
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
}
