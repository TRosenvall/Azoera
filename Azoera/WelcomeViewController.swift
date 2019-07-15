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
    @IBOutlet weak var emailTextField: AzoeraTextField!
    @IBOutlet weak var passwordTextField: AzoeraTextField!
    @IBOutlet weak var confirmPasswordTextField: AzoeraTextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var signMeUpButton: AzoeraButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        toggleSignup()
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
        toggleLogin()
    }
    
    @IBAction func helpButtonTapped(_ sender: Any) {
    }
    
    @IBAction func faqButton(_ sender: Any) {
    }
    
    @IBAction func signMeUpButtonTapped(_ sender: Any) {
    }
    
    func setupUI () {
        signupButton.rotate()
        loginButton.rotate()
        self.view.backgroundColor = .azoeraBackground
        loginButton.setTitleColor(.subltleTextColor, for: .normal)
        signupButton.setTitleColor(.mainTextColor, for: .normal)
        faqButton.setTitleColor(.azoeraGreen, for: .normal)
        helpButton.setTitleColor(.mainTextColor, for: .normal)
        welcomeLabel.textColor = .mainTextColor
        loginLabel.textColor = .subltleTextColor
    }
    
    func toggleLogin () {
        UIView.animate(withDuration: 0.2) {
            self.signupButton.setTitleColor(.mainTextColor, for: .normal)
            self.loginButton.setTitleColor(.subltleTextColor, for: .normal)
            self.helpButton.setTitle("Help?", for: .normal)
            self.faqButton.setTitle("FAQ", for: .normal)
            self.signMeUpButton.setTitle("Sign Me Up", for: .normal)
            self.confirmPasswordTextField.isHidden = false
        }
    }
    
    func toggleSignup () {
        UIView.animate(withDuration: 0.2) {
            self.loginButton.setTitleColor(.mainTextColor, for: .normal)
            self.signupButton.setTitleColor(.subltleTextColor, for: .normal)
            self.helpButton.setTitle("Forgot?", for: .normal)
            self.faqButton.setTitle("Remind", for: .normal)
            self.signMeUpButton.setTitle("Log me in", for: .normal)
            self.confirmPasswordTextField.isHidden = true
        }
    }
}
