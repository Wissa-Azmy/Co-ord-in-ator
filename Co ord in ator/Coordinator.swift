//
//  Coordinator.swift
//  Co ord in ator
//
//  Created by Wissa Azmy on 6/1/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator]? { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
