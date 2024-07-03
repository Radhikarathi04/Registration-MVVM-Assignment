//
//  LoginViewController.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import UIKit

class LoginViewController: UIViewController, LoginScreenViewModelDelegate {
	
	private let loginView = LoginView()
	private var viewModel = LoginViewModel()
	
	override func loadView() {
		view = loginView
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel.delegate = self
		view.backgroundColor = .white
		
		setUpBindings()
		setupButtons()
		
		let loginScreenItem = LoginScreenItem(
			title: "Welcome Back 👻",
			description: "Login to your Account with password",
			placeholder: " Enter password",
			loginButtonText: "Login to your account",
			loginOTPButtonText: "Login with One Time Password"
		)
		
		loginView.configure(with: loginScreenItem)
		
	}
	
	private func setUpBindings() {
		loginView.textField.addTarget(self, action: #selector(passwordChanged(_:)), for: .editingChanged)
	}
	
	private func setupButtons() {
		loginView.loginToYourAccountButton.addTarget(self, action: #selector(loginUsingPassword), for: .touchUpInside)
		loginView.loginWithOneTimePasswordButton.addTarget(self, action: #selector(sendOTP), for: .touchUpInside)
	}
	
	@objc private func passwordChanged(_ textField: UITextField) {
		viewModel.password = textField.text ?? ""
	}
	
	@objc private func sendOTP() {
		
	}
	
	@objc private func loginUsingPassword() {
		
	}
	
	// MARK: - LoginViewModelDelegate
	func didUpdateFormValidity(isValid: Bool) {
		loginView.loginToYourAccountButton.isEnabled = isValid
		loginView.loginToYourAccountButton.alpha = isValid ? 1.0 : 0.5
	}
	
	
	// MARK: - Alert
	
	private func showAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
		present(alert, animated: true, completion: nil)
	}
	
}



