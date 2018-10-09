//
//  RegistrationViewController.swift
//  InstagramClone
//
//  Created by Boris Neretin on 04.10.18.
//  Copyright © 2018 MyiOSApp. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var haveAccountButton: UIButton!
    
    
    
        //MARK: -View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        addTargetToTextField()
    }
    
        //MARK: - Methoden
    func setupViews() {
        //Comment
        let attributeText = NSMutableAttributedString(string: "You have an Account?", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17), NSAttributedString.Key.foregroundColor : UIColor.white])
        
        attributeText.append(NSMutableAttributedString(string: " " + "Login", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor.red]))
        
        haveAccountButton.setAttributedTitle(attributeText, for: .normal)
        
        
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.borderWidth = 2
        
        usernameTextField.backgroundColor = UIColor(white:1.0, alpha: 0.8)
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.attributedPlaceholder = NSAttributedString(string: usernameTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        emailTextField.backgroundColor = UIColor(white:1.0, alpha: 0.8)
        emailTextField.borderStyle = .roundedRect
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        passwordTextField.backgroundColor = UIColor(white:1.0, alpha: 0.8)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        createButton.backgroundColor = UIColor(white: 0.8, alpha:0.2)
        createButton.layer.cornerRadius = 5
        createButton.isEnabled = false
 
    }
    
    
    func addTargetToTextField() {
        usernameTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
    }
    
    @objc func textFieldDidChange(){
        let isText = usernameTextField.text?.count ?? 0 > 0 && emailTextField.text?.count ?? 0 > 0 && passwordTextField.text?.count ?? 0 > 0
        if isText {
            createButton.backgroundColor = UIColor(white: 1.0, alpha:0.8)
            createButton.layer.cornerRadius = 5
            createButton.isEnabled = true
        }
        else{
            createButton.backgroundColor = UIColor(white: 0.8, alpha:0.2)
            createButton.layer.cornerRadius = 5
            createButton.isEnabled = false
        }
    }
    
    
    
    
    
        //MARK: - Actions

    @IBAction func dismissButtonTapped(_ sender: UIButton) {
            dismiss(animated: true, completion: nil)

    }
    
    @IBAction func createButtonTapped(_ sender: UIButton) {
        print("Create")
    }
    
    

}
