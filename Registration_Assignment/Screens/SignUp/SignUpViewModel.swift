//
//  SignUpViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import Foundation
import UIKit

class SignUpViewModel {
    
    //    private let signUpManager: SignUpManager
    //
    //    // Model notify that was updated
    //    private var user = User() {
    //        didSet {
    //            username = user.username
    //            password = user.password
    //        }
    //    }
    //
    //    private var username = ""
    //    private var password = ""
    //
    //    var credentialsInputErrorMessage: Observable<String> = Observable("")
    //    var isUsernameTextFieldHighLighted: Observable<Bool> = Observable(false)
    //    var isPasswordTextFieldHighLighted: Observable<Bool> = Observable(false)
    //    var errorMessage: Observable<String?> = Observable(nil)
    //
    //    init(loginManager: LoginManager) {
    //        self.loginManager = loginManager
    //    }
    //
    //    //update the model
    //    func updateCredentials(username: String, password: String, otp: String? = nil) {
    //        user.username = username
    //        user.password = password
    //    }
    //
    //    func login() {
    //        loginManager.loginWithCredentials(username: username, password: password) { [weak self] (error) in
    //            guard let error = error else {
    //                return
    //            }
    //
    //            self?.errorMessage.value = error.localizedDescription
    //        }
    //    }
    //
    //    func credentialsInput() -> CredentialsInputStatus {
    //        if username.isEmpty && password.isEmpty {
    //            credentialsInputErrorMessage.value = "Please provide username and password."
    //            return .Incorrect
    //        }
    //        if username.isEmpty {
    //            credentialsInputErrorMessage.value = "Username field is empty."
    //            isUsernameTextFieldHighLighted.value = true
    //            return .Incorrect
    //        }
    //        if password.isEmpty {
    //            credentialsInputErrorMessage.value = "Password field is empty."
    //            isPasswordTextFieldHighLighted.value = true
    //            return .Incorrect
    //        }
    //        return .Correct
    //    }
    //
    //    extension SignUpViewModel {
    //        enum CredentialsInputStatus {
    //            case Correct
    //            case Incorrect
    //        }
    //    }
    //}
}
