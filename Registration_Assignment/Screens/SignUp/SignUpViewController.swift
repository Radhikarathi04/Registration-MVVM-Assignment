//
//  SignUpViewController.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import UIKit

class SignUpViewController: UIViewController, SignUpViewModelDelegate {
	
	private let signUpView = SignUpView()
	private var viewModel = SignUpViewModel()
	
	private let privacyOptions = [
		"Show to all",
		"Hide from all",
		"Show to members I express interest in"
	]
	
	override func loadView() {
		print("loadView called")
		view = signUpView
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel.delegate = self
		view.backgroundColor = .white
		setUpBindings()
		setUpNextButton()
		
	}
	
	@objc private func didTapNext(_ sender: UIButton) {
		viewModel.signUp()
	}
	
	// Assuming `showNameToAll` is determined by some other logic or UI state
	//	let showNameToAll = true
	
	//        viewModel.signUp(fullName: fullName, email: email, password: password, phoneNumber: phoneNumber, showNameToAll: showNameToAll)
	
	
	//    @objc private func handleLabelTap(_ sender: UITapGestureRecognizer) {
	//        if let label = sender.view as? UILabel {
	//            if label.layer.borderColor == CGColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1) {
	//                // If selected, unselect and change to original border color
	//                label.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
	//            } else {
	//                // If unselected, select and change to highlight border color
	//                label.layer.borderColor = CGColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
	//            }
	//        }
	//    }
	//
	//    @objc private func togglePasswordVisibility() {
	//        passwordTextField.isSecureTextEntry.toggle()
	//        showPasswordLabel.text = passwordTextField.isSecureTextEntry ? "Show" : "Hide"
	//    }
	
	private func setUpNextButton() {
		signUpView.nextButton.addTarget(self, action: #selector(didTapNext(_:)), for: .touchUpInside)
	}
	
	private func updateNextButtonState(isEnabled: Bool) {
		signUpView.nextButton.isEnabled = isEnabled
		signUpView.nextButton.alpha = isEnabled ? 1.0 : 0.5
	}
	
	private func setUpBindings() {
		signUpView.fullNameTextField.addTarget(self, action: #selector(fullNameChanged(_:)), for: .editingChanged)
		signUpView.emailTextField.addTarget(self, action: #selector(emailChanged(_:)), for: .editingChanged)
		signUpView.passwordTextField.addTarget(self, action: #selector(passwordChanged(_:)), for: .editingChanged)
		signUpView.phoneNumberTextField.addTarget(self, action: #selector(phoneNumberChanged(_:)), for: .editingChanged)
	}
	
	@objc private func fullNameChanged(_ textField: UITextField) {
		viewModel.fullName = textField.text ?? ""
	}
	
	@objc private func emailChanged(_ textField: UITextField) {
		viewModel.email = textField.text ?? ""
	}
	
	@objc private func passwordChanged(_ textField: UITextField) {
		viewModel.password = textField.text ?? ""
	}
	
	@objc private func phoneNumberChanged(_ textField: UITextField) {
		viewModel.phoneNumber = textField.text ?? ""
	}
	
	// MARK: - SignUpViewModelDelegate
	
	func didUpdateData() {
		updateNextButtonState(isEnabled: viewModel.isFormValid)
	}
	
	func signUpSuccess() {
		showAlert(title: "Success", message: "Sign-up successful!")
	}
	
	func signUpError(message: String) {
		showAlert(title: "Error", message: message)
	}
	
	// MARK: - Alert
	
	@objc private func showAlert(title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
		present(alert, animated: true, completion: nil)
	}
}
