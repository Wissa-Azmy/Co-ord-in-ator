//
//  ViewController.swift
//  Co ord in ator
//
//  Created by Wissa Azmy on 6/1/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyBtnTapped(_ sender: UIButton) {
        coordinator?.buy()
    }
    
    @IBAction func createAccountBtnTapped(_ sender: UIButton) {
        coordinator?.createAccount()
    }


}

