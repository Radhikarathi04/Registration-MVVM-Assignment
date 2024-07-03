//
//  SignUpViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation
import FirebaseAuth

protocol SignUpViewModelDelegate: AnyObject {
	func didUpdateData()
	func signUpSuccess()
	func signUpError(message: String)
}

class SignUpViewModel {
	weak var delegate: SignUpViewModelDelegate?
	
	var fullName: String = "" {
		didSet{
			validateForm()
		}
	}
	
	var email: String = "" {
		didSet{
			validateForm()
		}
	}
	
	var password: String = "" {
		didSet{
			validateForm()
		}
	}
	
	var phoneNumber: String = "" {
		didSet{
			validateForm()
		}
	}
	
	var isNameVisible: Bool = false {
		didSet{
			delegate?.didUpdateData()
		}
	}
	
	var selectedPrivacyOption: String? {
		didSet{
			delegate?.didUpdateData()
		}
	}
	
	var isFormValid: Bool = false {
		didSet{
			delegate?.didUpdateData()
		}
	}
	
	private func validateForm() {
		isFormValid = validateFullName() && validateEmail() && validatePassword() && validatePhoneNumber()
	}
	
	private func validateFullName() -> Bool {
		return !fullName.isEmpty
	}
	
	private func validateEmail() -> Bool {
		let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
		let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
		return emailTest.evaluate(with: email)
	}
	
	private func validatePassword() -> Bool {
		return password.count >= 6
	}
	
	private func validatePhoneNumber() -> Bool {
		let phoneNumberRegEx = "^[0-9]{10,15}$"
		let phoneNumberTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegEx)
		return phoneNumberTest.evaluate(with: phoneNumber)
	}
	
	func signUp() {
		Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
			if let error = error {
				print("Error signing up: \(error.localizedDescription)")
				self.delegate?.signUpError(message: error.localizedDescription)
				return
			}
			guard let user = authResult?.user else {
				print("Error: User result is nil")
				self.delegate?.signUpError(message: "Unexpected error: User result is nil")
				return
			}
			print("User signed up successfully: \(user.uid)")
			self.delegate?.signUpSuccess()
		}
	}
}
