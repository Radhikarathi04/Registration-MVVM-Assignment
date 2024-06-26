//
//  SignUpViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation
import FirebaseAuth

protocol SignUpViewModelDelegate: AnyObject {
    func signUpSuccess()
    func signUpError(message: String)
}

class SignUpViewModel {
    weak var delegate: SignUpViewModelDelegate?

    private var signUpModel: User

    init() {
        self.signUpModel = User(fullName: "", email: "", password: "", phoneNumber: "", showNameToAll: true)
    }
    
    /// This function is used for signUp
    /// - Parameters:
    ///   - fullName: abc
    ///   - email: b
    ///   - password: c
    ///   - phoneNumber: d
    ///   - showNameToAll: e
    func signUp(fullName: String, email: String, password: String, phoneNumber: String, showNameToAll: Bool) {
        signUpModel.fullName = fullName
        signUpModel.email = email
        signUpModel.password = password
        signUpModel.phoneNumber = phoneNumber
        signUpModel.showNameToAll = showNameToAll

        let validation = validateFields()
        if validation.isValid {
            // Simulate sign-up success
//            delegate?.signUpSuccess()
			
            Auth.auth().createUser(withEmail: email, password: password) { signUpResult, error in
                guard error == nil else {return}
                
                guard let signUpResult = signUpResult else {return}
				print("sign up successful")
                
            }
        } else {
            delegate?.signUpError(message: validation.errorMessage ?? "Unknown error")
        }
    }

    private func validateFields() -> (isValid: Bool, errorMessage: String?) {
        if signUpModel.fullName.isEmpty {
            return (false, "Full name is required.")
        }
        if !isValidEmail(signUpModel.email) {
            return (false, "Invalid email address.")
        }
        if !isValidPassword(signUpModel.password) {
            return (false, "Password must be at least 6 characters.")
        }
        if !isValidPhoneNumber(signUpModel.phoneNumber) {
            return (false, "Invalid phone number.")
        }
        return (true, nil)
    }

    private func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        return password.count >= 6
    }
    
    private func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        let phoneNumberRegEx = "^[0-9]{10}$"
        let phoneNumberTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegEx)
        return phoneNumberTest.evaluate(with: phoneNumber)
    }
}
