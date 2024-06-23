//
//  SignUpViewController.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 23/06/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
        private var viewModel = SignUpViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view.
        // Title label
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        titleLabel.text = "Let’s get to know each\nother 👋"
        titleLabel.numberOfLines = 0
        
        self.view.addSubview(titleLabel)
        
        let usernameTextField = UITextField()
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Enter full name"
        usernameTextField.layer.cornerRadius = 5
        usernameTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        self.view.addSubview(usernameTextField)
        
        //TODO: Checkbox
        
        // Show my name to all
        let showMyNameLabel = UILabel()
        showMyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        showMyNameLabel.text = "Show my name to all"
        showMyNameLabel.font = UIFont.systemFont(ofSize: 11)
        showMyNameLabel.textColor = UIColor(red: 95/255, green: 99/255, blue: 104/255, alpha: 1)
        self.view.addSubview(showMyNameLabel)
        
        // If you turn off, you won't be able to see name of other members
        let turnOffLabel = UILabel()
        turnOffLabel.translatesAutoresizingMaskIntoConstraints = false
        turnOffLabel.text = "If you turn off, you wont be able to see name of other members "
        turnOffLabel.font = UIFont.systemFont(ofSize: 10)
        turnOffLabel.textColor = UIColor(red: 95/255, green: 99/255, blue: 104/255, alpha: 1)
        self.view.addSubview(turnOffLabel)
        
        let emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Enter Email"
        emailTextField.layer.cornerRadius = 5
        emailTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        self.view.addSubview(emailTextField)
        
        // Password textfield
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        passwordTextField.isSecureTextEntry = true
        self.view.addSubview(passwordTextField)
        
        // Add a toggle button to the passwordTextField
        let showPasswordLabel = UILabel()
        showPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        showPasswordLabel.text = "Show"
        showPasswordLabel.font = UIFont.systemFont(ofSize: 12)
        showPasswordLabel.textColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
        showPasswordLabel.isUserInteractionEnabled = true
        self.view.addSubview(showPasswordLabel)
        
        // Phone number textfield with country code
        let phoneNumberTextField = UITextField()
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.placeholder = "Enter Phone Number"
        phoneNumberTextField.layer.cornerRadius = 5
        phoneNumberTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        let countryCodeLabel = UILabel()
        countryCodeLabel.text = "+91"
        countryCodeLabel.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
        countryCodeLabel.sizeToFit()
        
        phoneNumberTextField.leftView = countryCodeLabel
        phoneNumberTextField.leftViewMode = .always
        
        self.view.addSubview(phoneNumberTextField)
        
        // UILabel - Contact Privacy Settings
        let contactLabel = UILabel()
        contactLabel.translatesAutoresizingMaskIntoConstraints = false
        contactLabel.text = "Contact Privacy Settings"
        contactLabel.font = UIFont.systemFont(ofSize: 14)
        contactLabel.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
        self.view.addSubview(contactLabel)
        
        // Show to all label
        let showToAllLabel = createSelectableLabel(text: "Show to all")
        self.view.addSubview(showToAllLabel)
        
        // Hide from all label
        let hideFromAllLabel = createSelectableLabel(text: "Hide from all")
        self.view.addSubview(hideFromAllLabel)
        
        // Show to members I express interest in label
        let showToMembersLabel = createSelectableLabel(text: "Show to members I express interest in")
        self.view.addSubview(showToMembersLabel)
        
        // Next Button
        //TODO: Transition to Next screen
        let nextButton = UIButton()
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
        nextButton.layer.cornerRadius = 20
//        getStartedButton.addTarget(self, action: #selector(didTapGetStarted(_:)), for: .touchUpInside)
        
        self.view.addSubview(nextButton)
        
        // Constraints
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 101),
            titleLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            titleLabel.widthAnchor.constraint(equalToConstant: 258),
            titleLabel.heightAnchor.constraint(equalToConstant: 62),
            
            usernameTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 214),
            usernameTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            usernameTextField.widthAnchor.constraint(equalToConstant: 300),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            showMyNameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 273),
            showMyNameLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 72),
            showMyNameLabel.widthAnchor.constraint(equalToConstant: 120),
            showMyNameLabel.heightAnchor.constraint(equalToConstant: 14),
            
            turnOffLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 291),
            turnOffLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 72),
            turnOffLabel.widthAnchor.constraint(equalToConstant: 320),
            turnOffLabel.heightAnchor.constraint(equalToConstant: 13),
            
            emailTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 324),
            emailTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            emailTextField.widthAnchor.constraint(equalToConstant: 300),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            phoneNumberTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 456),
            phoneNumberTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            phoneNumberTextField.widthAnchor.constraint(equalToConstant: 300),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 390),
            passwordTextField.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            passwordTextField.widthAnchor.constraint(equalToConstant: 300),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            showPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor),
            showPasswordLabel.leadingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 10),
            
            contactLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 538),
            contactLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            contactLabel.widthAnchor.constraint(equalToConstant: 162),
            contactLabel.heightAnchor.constraint(equalToConstant: 18),
            
            showToAllLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 572),
            showToAllLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            showToAllLabel.widthAnchor.constraint(equalToConstant: 111),
            showToAllLabel.heightAnchor.constraint(equalToConstant: 35),
            
            hideFromAllLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 572),
            hideFromAllLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 171),
            hideFromAllLabel.widthAnchor.constraint(equalToConstant: 111),
            hideFromAllLabel.heightAnchor.constraint(equalToConstant: 35),
            
            showToMembersLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 623),
            showToMembersLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 46),
            showToMembersLabel.widthAnchor.constraint(equalToConstant: 312),
            showToMembersLabel.heightAnchor.constraint(equalToConstant: 35),
            
            nextButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 730),
            nextButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 121),
            nextButton.widthAnchor.constraint(equalToConstant: 161),
            nextButton.heightAnchor.constraint(equalToConstant: 55),
            
        ])
        
        // Adding gesture recognizer to showPasswordLabel
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(togglePasswordVisibility))
        showPasswordLabel.addGestureRecognizer(tapGesture)
        
        // Set as the right view of passwordTextField
        passwordTextField.rightView = showPasswordLabel
        passwordTextField.rightViewMode = .always
        
        // Assigning text field to class property for visibility toggle
        self.passwordTextField = passwordTextField
        self.showPasswordLabel = showPasswordLabel
        
        
    }

    private func createSelectableLabel(text: String) -> UILabel {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = text
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 14)
            label.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
            label.layer.borderWidth = 2
            label.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
            label.layer.cornerRadius = 20
            label.isUserInteractionEnabled = true
            
            // Add tap gesture recognizer
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleLabelTap(_:)))
            label.addGestureRecognizer(tapGesture)
            
            return label
        }
        
    @objc private func handleLabelTap(_ sender: UITapGestureRecognizer) {
           if let label = sender.view as? UILabel {
               if label.layer.borderColor == CGColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1) {
                   // If selected, unselect and change to original border color
                   label.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
               } else {
                   // If unselected, select and change to highlight border color
                   label.layer.borderColor = CGColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
               }
           }
       }
    
    private var passwordTextField: UITextField?
    private var showPasswordLabel: UILabel?
    
    @objc private func togglePasswordVisibility() {
        guard let passwordTextField = passwordTextField, let showPasswordLabel = showPasswordLabel else { return }
        
        passwordTextField.isSecureTextEntry.toggle()
        showPasswordLabel.text = passwordTextField.isSecureTextEntry ? "Show" : "Hide"
    }
}

extension SignUpViewController: SignUpViewModelDelegate {
    func signUpSuccess() {
        // Handle successful sign-up
        showAlert(title: "Success", message: "Sign-up successful!")
    }

    func signUpError(message: String) {
        // Handle sign-up error
        showAlert(title: "Error", message: message)
    }

    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
