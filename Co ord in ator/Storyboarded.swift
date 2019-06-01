//
//  Storyboarded.swift
//  Co ord in ator
//
//  Created by Wissa Azmy on 6/1/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        // Must add the StoryboardID the same as the controller name in the identity inspector for it to work
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
