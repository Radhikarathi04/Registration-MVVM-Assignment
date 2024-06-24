//
//  LoginViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//


import Foundation

protocol LoginViewModelDelegate: AnyObject {
    func loginSuccess()
    func loginError(message: String)
}

class LoginViewModel {
    
    weak var delegate: LoginViewModelDelegate?
    
    func login(with phoneNumber: String) {
        if phoneNumber.isEmpty {
            delegate?.loginError(message: "Phone number cannot be empty")
            return
        }
        
        delegate?.loginSuccess()
    }
}

