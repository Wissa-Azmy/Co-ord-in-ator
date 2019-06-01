//
//  MainCoordinator.swift
//  Co ord in ator
//
//  Created by Wissa Azmy on 6/1/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        childCoordinators = [Coordinator]()
    }
    
    // Navigate to the home controller when the app starts
    func start() {
        let vc = HomeViewController.instantiate()
        // Set our initial view controller coordinator property to self
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buy() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
