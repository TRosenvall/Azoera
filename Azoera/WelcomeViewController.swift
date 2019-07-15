//
//  WelcomeViewController.swift
//  Azoera
//
//  Created by Timothy Rosenvall on 7/15/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var logoImageBiew: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var signMeUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signupButton.rotate()
        loginButton.rotate()
    }
}
