//
//  LoginViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation
import FirebaseAuth

protocol LoginViewModelDelegate: AnyObject {
	func loginSuccess()
	func loginError(message: String)
}

class LoginViewModel {
	
	weak var delegate: LoginViewModelDelegate?
	
	private var email: String = ""
	private var password: String = ""

	/// This function sets the user credentials
	/// - Parameters:
	///   - email: User's email
	///   - password: User's password
	func setUserCredentials(email: String, password: String) {
		self.email = email
		self.password = password
	}
	
	/// This function logs in the user
	func login() {
		if email.isEmpty || password.isEmpty {
			delegate?.loginError(message: "Email and password cannot be empty")
			return
		}
		
		Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
			if let error = error as NSError? {
				if let authErrorCode = AuthErrorCode.Code(rawValue: error.code) {
					switch authErrorCode {
					case .userNotFound:
						self.delegate?.loginError(message: "No user found with this email.")
					case .wrongPassword:
						self.delegate?.loginError(message: "Incorrect password.")
					case .invalidEmail:
						self.delegate?.loginError(message: "The email address is badly formatted.")
					default:
						self.delegate?.loginError(message: "Login failed! Try again.")
					}
				} else {
					self.delegate?.loginError(message: "Unknown error occurred")
				}
			} else {
				print("User signed in successfully")
				self.delegate?.loginSuccess()
			}
		}
	}
}
