//
//  LoginViewController.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import UIKit

class LoginViewController: UIViewController {
    
//    private var viewModel = LoginViewModel()
    
    private var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Phone Number"
        textField.layer.cornerRadius = 5
        textField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        let countryCodeLabel = UILabel()
        countryCodeLabel.text = "+91"
        countryCodeLabel.font = UIFont.systemFont(ofSize: 14)
        countryCodeLabel.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
        countryCodeLabel.sizeToFit()
        textField.leftView = countryCodeLabel
        textField.leftViewMode = .always
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel.delegate = self
        view.backgroundColor = .white
        
        // Title label
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .left
        titleLabel.textColor = UIColor(red: 21/255, green: 5/255, blue: 70/255, alpha: 1)
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        titleLabel.text = "Welcome Back 👻"
        self.view.addSubview(titleLabel)
        
        // Login label
        let loginLabel = UILabel()
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.textAlignment = .left
        loginLabel.textColor = .black
        loginLabel.font = UIFont.systemFont(ofSize: 20)
        loginLabel.text = "Login to your Account"
        self.view.addSubview(loginLabel)
        
        // Send One Time Password Button
        let otpButton = UIButton()
        otpButton.translatesAutoresizingMaskIntoConstraints = false
        otpButton.setTitle("Send One Time Password", for: .normal)
        otpButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
        otpButton.layer.cornerRadius = 20
        self.view.addSubview(otpButton)
        
        // Login using Password Button
        let loginPasswordButton = UIButton()
        loginPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        loginPasswordButton.setTitle("Login using Password", for: .normal)
        loginPasswordButton.setTitleColor(UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1), for: .normal)
        loginPasswordButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        loginPasswordButton.layer.cornerRadius = 20
        self.view.addSubview(loginPasswordButton)
        
        self.view.addSubview(phoneNumberTextField)
        
        // Constraints
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 148),
            titleLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            titleLabel.widthAnchor.constraint(equalToConstant: 200),
            titleLabel.heightAnchor.constraint(equalToConstant: 31),
            
            loginLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 202),
            loginLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            loginLabel.widthAnchor.constraint(equalToConstant: 210),
            loginLabel.heightAnchor.constraint(equalToConstant: 26),
            
            phoneNumberTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 280),
            phoneNumberTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            phoneNumberTextField.widthAnchor.constraint(equalToConstant: 300),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
            
            otpButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 378),
            otpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            otpButton.widthAnchor.constraint(equalToConstant: 328),
            otpButton.heightAnchor.constraint(equalToConstant: 55),
            
            loginPasswordButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 454),
            loginPasswordButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            loginPasswordButton.widthAnchor.constraint(equalToConstant: 328),
            loginPasswordButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
    
  
    
    // MARK: - Alert
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}



