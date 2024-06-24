//
//  SignUpTest.swift
//  Registration_AssignmentTests
//
//  Created by Rathi, Radhika on 24/06/2024.
//

import XCTest
@testable import Registration_Assignment

class SignUpTest: XCTestCase {
    
    var viewModel: SignUpViewModel!
    var delegate: MockSignUpViewModelDelegate!
    
    override func setUp() {
        super.setUp()
        viewModel = SignUpViewModel()
        delegate = MockSignUpViewModelDelegate()
        viewModel.delegate = delegate
    }
    
    override func tearDown() {
        viewModel = nil
        delegate = nil
        super.tearDown()
    }
    
    func testSignUpWithValidInputs() {
        viewModel.signUp(fullName: "John Doe", email: "john.doe@example.com", password: "password123", phoneNumber: "1234567890", showNameToAll: true)
        
        XCTAssertTrue(delegate.didSignUpSuccessCalled)
        XCTAssertNil(delegate.errorReceived)
    }
    
    func testSignUpWithInvalidEmail() {
        viewModel.signUp(fullName: "John Doe", email: "invalidemail", password: "password123", phoneNumber: "1234567890", showNameToAll: true)
        
        XCTAssertFalse(delegate.didSignUpSuccessCalled)
        XCTAssertEqual(delegate.errorReceived, "Invalid email address.")
    }
    
    // Add more test cases as needed
}

class MockSignUpViewModelDelegate: SignUpViewModelDelegate {
    
    var didSignUpSuccessCalled = false
    var errorReceived: String?
    
    func signUpSuccess() {
        didSignUpSuccessCalled = true
    }
    
    func signUpError(message: String) {
        errorReceived = message
    }
}

