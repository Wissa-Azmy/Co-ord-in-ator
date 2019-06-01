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
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
}
