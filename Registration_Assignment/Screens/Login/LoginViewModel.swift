//
//  LoginViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation
import FirebaseAuth

protocol LoginScreenViewModelDelegate: AnyObject {
	func didUpdateFormValidity(isValid: Bool)
}

class LoginViewModel {
	weak var delegate: LoginScreenViewModelDelegate?
	
	var password: String = "" {
		didSet {
			validateForm()
		}
	}
	
	private func validateForm() {
		let isValid = !password.isEmpty && password.count >= 6
		delegate?.didUpdateFormValidity(isValid: isValid)
	}
}
