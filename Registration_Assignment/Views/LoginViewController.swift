//
//  LoginViewController.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import UIKit

class LoginViewController: UIViewController {
	
	private var viewModel = LoginViewModel()
	
	private var emailTextField: UITextField = {
		let textField = UITextField()
		textField.translatesAutoresizingMaskIntoConstraints = false
		textField.placeholder = "Enter Email"
		textField.autocapitalizationType = .none
		textField.layer.cornerRadius = 5
		textField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		return textField
	}()
	
	private var passwordTextField: UITextField = {
		let textField = UITextField()
		textField.translatesAutoresizingMaskIntoConstraints = false
		textField.placeholder = "Enter Password"
		textField.layer.cornerRadius = 5
		textField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		textField.isSecureTextEntry = true
		return textField
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel.delegate = self
		view.backgroundColor = .white
		
		// Title label
		let titleLabel = UILabel()
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.textAlignment = .left
		titleLabel.textColor = UIColor(red: 21/255, green: 5/255, blue: 70/255, alpha: 1)
		titleLabel.font = UIFont.systemFont(ofSize: 24)
		titleLabel.text = "Welcome Back 👻"
		//        titleLabel.numberOfLines = 0
		self.view.addSubview(titleLabel)
		
		// Login label
		let loginLabel = UILabel()
		loginLabel.translatesAutoresizingMaskIntoConstraints = false
		loginLabel.textAlignment = .left
		loginLabel.textColor = .black
		loginLabel.font = UIFont.systemFont(ofSize: 20)
		loginLabel.text = "Login to your Account with password"
		loginLabel.numberOfLines = 0
		self.view.addSubview(loginLabel)
		
		// Send One Time Password Button
		let loginToAccountButton = UIButton()
		loginToAccountButton.translatesAutoresizingMaskIntoConstraints = false
		loginToAccountButton.setTitle("Login to your account", for: .normal)
		loginToAccountButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
		loginToAccountButton.layer.cornerRadius = 20
		loginToAccountButton.addTarget(self, action: #selector(didTapLoginToAccount(_:)), for: .touchUpInside)
		self.view.addSubview(loginToAccountButton)
		
		// Login using Password Button
		let loginPasswordButton = UIButton()
		loginPasswordButton.translatesAutoresizingMaskIntoConstraints = false
		loginPasswordButton.setTitle("Login with One Time Password", for: .normal)
		loginPasswordButton.setTitleColor(UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1), for: .normal)
		loginPasswordButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		loginPasswordButton.layer.cornerRadius = 20
		//        otpButton.addTarget(self, action: #selector(didTapNext(_:)), for: .touchUpInside)
		self.view.addSubview(loginPasswordButton)
		
		self.view.addSubview(emailTextField)
		self.view.addSubview(passwordTextField)
		
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
			
			emailTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 240),
			emailTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
			emailTextField.widthAnchor.constraint(equalToConstant: 300),
			emailTextField.heightAnchor.constraint(equalToConstant: 50),
			
			passwordTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 310),
			passwordTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
			passwordTextField.widthAnchor.constraint(equalToConstant: 300),
			passwordTextField.heightAnchor.constraint(equalToConstant: 50),
			
			loginToAccountButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 378),
			loginToAccountButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
			loginToAccountButton.widthAnchor.constraint(equalToConstant: 328),
			loginToAccountButton.heightAnchor.constraint(equalToConstant: 55),
			
			loginPasswordButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 454),
			loginPasswordButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
			loginPasswordButton.widthAnchor.constraint(equalToConstant: 328),
			loginPasswordButton.heightAnchor.constraint(equalToConstant: 55),
		])
	}
	
	
	@objc private func didTapLoginToAccount(_ sender: UIButton) {
		guard let email = emailTextField.text, !email.isEmpty,
			  let password = passwordTextField.text, !password.isEmpty else {
			showAlert(title: "Error", message: "Please enter your email and password.")
			return
		}
		
		viewModel.setUserCredentials(email: email, password: password)
		viewModel.login()
	}
	
	// MARK: - Alert
	
	private func showAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
		present(alert, animated: true, completion: nil)
	}
	
}

// MARK: - LoginViewModelDelegate

extension LoginViewController: LoginViewModelDelegate {
	func loginSuccess() {
		showAlert(title: "Success", message: "Login successful!")
	}
	
	func loginError(message: String) {
		showAlert(title: "Error", message: message)
	}
}
