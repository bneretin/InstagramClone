//
//  LoginViewController.swift
//  InstagramClone
//
//  Created by Boris Neretin on 04.10.18.
//  Copyright © 2018 MyiOSApp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: -Outlet
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    //MARK: -View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        addTargetToTextField()
    }
   
    //MARK: - Methoden
    func setupViews() {
        emailTextField.backgroundColor = UIColor(white:1.0, alpha: 0.8)
        emailTextField.borderStyle = .roundedRect
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        passwordTextField.backgroundColor = UIColor(white:1.0, alpha: 0.8)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        loginButton.backgroundColor = UIColor(white: 0.8, alpha:0.2)
        loginButton.layer.cornerRadius = 5
        loginButton.isEnabled = false
        
    }
    
    
    func addTargetToTextField() {
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
    }
    
    @objc func textFieldDidChange(){
        let isText = emailTextField.text?.count ?? 0 > 0 && passwordTextField.text?.count ?? 0 > 0
        if isText {
            loginButton.backgroundColor = UIColor(white: 1.0, alpha:0.8)
            loginButton.layer.cornerRadius = 5
                    loginButton.isEnabled = true
        }
        else{
            loginButton.backgroundColor = UIColor(white: 0.8, alpha:0.2)
            loginButton.layer.cornerRadius = 5
            loginButton.isEnabled = false
        }
    }
    
    
    //MARK: - Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("Login")
        
    }


}
