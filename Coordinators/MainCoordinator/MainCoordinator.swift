//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Tito Ciuro on 1/30/19.
//  Copyright © 2020 Tito Ciuro. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func testOne() {
        let vc = VC_One.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func testTwo() {
        let vc = VC_Two.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

}
