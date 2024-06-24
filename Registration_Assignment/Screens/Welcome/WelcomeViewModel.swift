//
//  WelcomeViewModel.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 24/06/2024.
//

import Foundation

class WelcomeViewModel {
    private var items: [WelcomeItem]
    private var currentIndex: Int = 0
    
    var navigateToSignUp: (() -> Void)?
    var navigateToFirstLogin: (() -> Void)?
    
    
    var currentItem: WelcomeItem {
        return items[currentIndex]
    }
    
    init(items: [WelcomeItem]) {
        self.items = items
    }
    
    func handleGetStarted() {
        
        navigateToSignUp?()
        print("Get Started button action triggered in ViewModel")
    }
    
    func handleGoogleSignIn() {
        print("Google sign-in action triggered in ViewModel")
    }
    
    func handleAppleSignIn() {
        print("Apple sign-in action triggered in ViewModel")
    }
    
    func handleLogin() {
        print("Login button action triggered in ViewModel")
        
        navigateToFirstLogin?()
    
    }
}
