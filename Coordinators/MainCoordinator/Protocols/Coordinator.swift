//
//  Coordinator.swift
//  Coordinators
//
//  Created by Tito Ciuro on 1/30/19.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}


