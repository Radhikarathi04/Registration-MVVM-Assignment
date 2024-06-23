//
//  SignUpViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation

struct SignUpModel {
    var fullName: String
    var email: String
    var password: String
    var phoneNumber: String
    var showNameToAll: Bool

    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }

    func isValidPassword() -> Bool {
        return password.count >= 6
    }

    func isValidPhoneNumber() -> Bool {
        let phoneNumberRegEx = "^[0-9]{10}$"
        let phoneNumberTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegEx)
        return phoneNumberTest.evaluate(with: phoneNumber)
    }
}

protocol SignUpViewModelDelegate: AnyObject {
    func signUpSuccess()
    func signUpError(message: String)
}

class SignUpViewModel {
    weak var delegate: SignUpViewModelDelegate?

    private var signUpModel: SignUpModel

    init() {
        self.signUpModel = SignUpModel(fullName: "", email: "", password: "", phoneNumber: "", showNameToAll: true)
    }

    func signUp(fullName: String, email: String, password: String, phoneNumber: String, showNameToAll: Bool) {
        signUpModel.fullName = fullName
        signUpModel.email = email
        signUpModel.password = password
        signUpModel.phoneNumber = phoneNumber
        signUpModel.showNameToAll = showNameToAll

        let validation = validateFields()
        if validation.isValid {
            // Simulate sign-up success
            delegate?.signUpSuccess()
        } else {
            delegate?.signUpError(message: validation.errorMessage ?? "Unknown error")
        }
    }

    private func validateFields() -> (isValid: Bool, errorMessage: String?) {
        if signUpModel.fullName.isEmpty {
            return (false, "Full name is required.")
        }
        if !signUpModel.isValidEmail() {
            return (false, "Invalid email address.")
        }
        if !signUpModel.isValidPassword() {
            return (false, "Password must be at least 6 characters.")
        }
        if !signUpModel.isValidPhoneNumber() {
            return (false, "Invalid phone number.")
        }
        return (true, nil)
    }
}


