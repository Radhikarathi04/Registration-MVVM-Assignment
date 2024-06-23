//
//  LoginViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation
import Combine

struct User {
    let email: String
    let password: String
}

class LoginViewModel {
    
    var username: String = ""
    var password: String = ""
    
    var isLoginSuccessful: Bool = false
    var errorMessage: String = ""
}
