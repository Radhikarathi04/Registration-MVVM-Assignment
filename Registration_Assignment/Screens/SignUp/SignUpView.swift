//
//  SignUpView.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 26/06/2024.
//

import UIKit

class SignUpView: UIView {
	
	private let titleLabel = UILabel()
	let fullNameTextField = UITextField()
	let emailTextField = UITextField()
	let passwordTextField = UITextField()
	let phoneNumberTextField = UITextField()
	private let countryCodeLabel = UILabel()
	private let showPasswordLabel = UILabel()
	private let showMyNameToAllLabel = UILabel()
	private let turnOffLabel = UILabel()
	private let contactPrivacySettingsLabel = UILabel()
	let nextButton = UIButton(type: .system)
	
	private let showToAllLabel = UILabel()
	private let hideFromAllLabel = UILabel()
	private let showToMembersLabel = UILabel()
	
	private var selectedLabel: UILabel?
	
	// write our own initializer
	override init(frame: CGRect) {
		
		super.init(frame: frame)
		setUpViews()
		
	}
	
	required init?(coder: NSCoder) {
		
		super.init(coder: coder)
		setUpViews()
	}
	
	private func setUpViews() {
		print("Sign up Set up views called")
		backgroundColor = .white
		
		fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
		emailTextField.translatesAutoresizingMaskIntoConstraints = false
		passwordTextField.translatesAutoresizingMaskIntoConstraints = false
		phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
		countryCodeLabel.translatesAutoresizingMaskIntoConstraints = false
		showPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		showMyNameToAllLabel.translatesAutoresizingMaskIntoConstraints = false
		turnOffLabel.translatesAutoresizingMaskIntoConstraints = false
		contactPrivacySettingsLabel.translatesAutoresizingMaskIntoConstraints = false
		nextButton.translatesAutoresizingMaskIntoConstraints = false
		
		showToAllLabel.translatesAutoresizingMaskIntoConstraints = false
		hideFromAllLabel.translatesAutoresizingMaskIntoConstraints = false
		showToMembersLabel.translatesAutoresizingMaskIntoConstraints = false
		
		// Add subviews
		addSubview(fullNameTextField)
		addSubview(emailTextField)
		addSubview(passwordTextField)
		addSubview(phoneNumberTextField)
		addSubview(countryCodeLabel)
		addSubview(showPasswordLabel)
		addSubview(titleLabel)
		addSubview(showMyNameToAllLabel)
		addSubview(turnOffLabel)
		addSubview(contactPrivacySettingsLabel)
		addSubview(nextButton)
		addSubview(showToAllLabel)
		addSubview(hideFromAllLabel)
		addSubview(showToMembersLabel)
		
		// Configuring UI elements
		
		// Title label
		titleLabel.textAlignment = .left
		titleLabel.textColor = .black
		titleLabel.font = UIFont.systemFont(ofSize: 24)
		titleLabel.text = "Let’s get to know each\nother 👋"
		titleLabel.numberOfLines = 0
		
		// User Name Text Field
		fullNameTextField.placeholder = "Enter full name"
		fullNameTextField.layer.cornerRadius = 5
		fullNameTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		
		// Show my name to all label
		showMyNameToAllLabel.text = "Show my name to all"
		showMyNameToAllLabel.font = UIFont.systemFont(ofSize: 11)
		showMyNameToAllLabel.textColor = UIColor(red: 95/255, green: 99/255, blue: 104/255, alpha: 1)
		
		// If you turn off, you wont be able to see name of other members
		turnOffLabel.text = "If you turn off, you wont be able to see name of other members"
		turnOffLabel.font = UIFont.systemFont(ofSize: 10)
		turnOffLabel.textColor = UIColor(red: 95/255, green: 99/255, blue: 104/255, alpha: 1)
		
		// Email text field
		emailTextField.placeholder = "Enter Email"
		emailTextField.layer.cornerRadius = 5
		emailTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		emailTextField.autocapitalizationType = .none
		
		// Password Text field
		passwordTextField.placeholder = "Enter Password"
		passwordTextField.layer.cornerRadius = 5
		passwordTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		passwordTextField.isSecureTextEntry = true
		
		// Show password label
		showPasswordLabel.text = "Show"
		showPasswordLabel.font = UIFont.systemFont(ofSize: 12)
		showPasswordLabel.textColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
		showPasswordLabel.isUserInteractionEnabled = true
		
		// Phone Text field
		phoneNumberTextField.placeholder = "Enter Phone Number"
		phoneNumberTextField.layer.cornerRadius = 5
		phoneNumberTextField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		
		countryCodeLabel.text = "+91"
		countryCodeLabel.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
		countryCodeLabel.sizeToFit()
		phoneNumberTextField.leftView = countryCodeLabel
		phoneNumberTextField.leftViewMode = .always
		
		// Contact Privacy Settings label
		contactPrivacySettingsLabel.text = "Contact Privacy Settings"
		contactPrivacySettingsLabel.font = UIFont.systemFont(ofSize: 14)
		contactPrivacySettingsLabel.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
		
//		// Show to all label
//		let showToAllLabel = createSelectableLabel(text: "Show to all")
//		
//		// Hide from all label
//		let hideFromAllLabel = createSelectableLabel(text: "Hide from all")
//		
//		// Show to members I express interest in label
//		let showToMembersLabel = createSelectableLabel(text: "Show to members I express interest in")
		
		// Show to all label
		configureSelectableLabel(showToAllLabel, withText: "Show to all")
		
		// Hide from all label
		configureSelectableLabel(hideFromAllLabel, withText: "Hide from all")
		
		// Show to members I express interest in label
		configureSelectableLabel(showToMembersLabel, withText: "Show to members I express interest in")
		
		// Next Button
		nextButton.setTitle("Next", for: .normal)
		nextButton.setTitleColor(.white, for: .normal)
		nextButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
		nextButton.layer.cornerRadius = 20
		
		// Adding gesture recognizer to showPasswordLabel
		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(togglePasswordVisibility))
		showPasswordLabel.addGestureRecognizer(tapGesture)
		
		// Set as the right view of passwordTextField
		passwordTextField.rightView = showPasswordLabel
		passwordTextField.rightViewMode = .always
		
		setUpConstraints()
		print("setUpConstraints called")
	}
	
//	private func createSelectableLabel(text: String) -> UILabel {
//		let label = UILabel()
//		label.translatesAutoresizingMaskIntoConstraints = false
//		label.text = text
//		label.textAlignment = .center
//		label.font = UIFont.systemFont(ofSize: 14)
//		label.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
//		label.layer.borderWidth = 2
//		label.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
//		label.layer.cornerRadius = 20
//		label.isUserInteractionEnabled = true
//		
//		// Add tap gesture recognizer
//		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleLabelTap(_:)))
//		label.addGestureRecognizer(tapGesture)
//		
//		return label
//	}
	
	private func configureSelectableLabel(_ label: UILabel, withText text: String) {
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
	}
	
	// Set Up constraints
	private func setUpConstraints() {
		NSLayoutConstraint.activate([
			titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
			titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			titleLabel.widthAnchor.constraint(equalToConstant: 258),
			titleLabel.heightAnchor.constraint(equalToConstant: 62),
			
			fullNameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
			fullNameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			fullNameTextField.widthAnchor.constraint(equalToConstant: 300),
			fullNameTextField.heightAnchor.constraint(equalToConstant: 50),
			
			showMyNameToAllLabel.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor, constant: 10),
			showMyNameToAllLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			showMyNameToAllLabel.widthAnchor.constraint(equalToConstant: 120),
			showMyNameToAllLabel.heightAnchor.constraint(equalToConstant: 14),
			
			turnOffLabel.topAnchor.constraint(equalTo: showMyNameToAllLabel.bottomAnchor, constant: 10),
			turnOffLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			turnOffLabel.widthAnchor.constraint(equalToConstant: 300),
			turnOffLabel.heightAnchor.constraint(equalToConstant: 14),
			
			emailTextField.topAnchor.constraint(equalTo: turnOffLabel.bottomAnchor, constant: 20),
			emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			emailTextField.widthAnchor.constraint(equalToConstant: 300),
			emailTextField.heightAnchor.constraint(equalToConstant: 50),
			
			passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
			passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			passwordTextField.widthAnchor.constraint(equalToConstant: 300),
			passwordTextField.heightAnchor.constraint(equalToConstant: 50),
			
			showPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor),
			showPasswordLabel.leadingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 10),
			
			phoneNumberTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
			phoneNumberTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			phoneNumberTextField.widthAnchor.constraint(equalToConstant: 300),
			phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
			
			contactPrivacySettingsLabel.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 10),
			contactPrivacySettingsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			contactPrivacySettingsLabel.widthAnchor.constraint(equalToConstant: 162),
			contactPrivacySettingsLabel.heightAnchor.constraint(equalToConstant: 18),
			
			showToAllLabel.topAnchor.constraint(equalTo: contactPrivacySettingsLabel.bottomAnchor, constant: 10),
			showToAllLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			showToAllLabel.widthAnchor.constraint(equalToConstant: 111),
			showToAllLabel.heightAnchor.constraint(equalToConstant: 35),
			
			hideFromAllLabel.topAnchor.constraint(equalTo: contactPrivacySettingsLabel.bottomAnchor, constant: 10),
			hideFromAllLabel.leftAnchor.constraint(equalTo: showToAllLabel.leftAnchor, constant: 120),
			hideFromAllLabel.widthAnchor.constraint(equalToConstant: 111),
			hideFromAllLabel.heightAnchor.constraint(equalToConstant: 35),
			
			showToMembersLabel.topAnchor.constraint(equalTo: showToAllLabel.bottomAnchor, constant: 10),
			showToMembersLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 46),
			showToMembersLabel.widthAnchor.constraint(equalToConstant: 312),
			showToMembersLabel.heightAnchor.constraint(equalToConstant: 35),
			
			nextButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 600),
			nextButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
			nextButton.widthAnchor.constraint(equalToConstant: 161),
			nextButton.heightAnchor.constraint(equalToConstant: 55),
			
		])
	}
	
	var getNextButtonAction: (() -> Void)? {
		didSet {
			nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
		}
	}
	
//	@objc private func handleLabelTap(_ sender: UITapGestureRecognizer) {
//		if let label = sender.view as? UILabel {
//			print("\(label.text ?? "") tapped")
//		}
//	}
	
	@objc private func handleLabelTap(_ sender: UITapGestureRecognizer) {
		if let label = sender.view as? UILabel {
			if let selectedLabel = selectedLabel {
				selectedLabel.layer.borderColor = CGColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
			}
			label.layer.borderColor = UIColor.red.cgColor
			selectedLabel = label
			print("\(label.text ?? "") tapped")
		}
	}
	
	@objc private func togglePasswordVisibility() {
		passwordTextField.isSecureTextEntry.toggle()
		showPasswordLabel.text = passwordTextField.isSecureTextEntry ? "Show" : "Hide"
//		if let showPasswordLabel = passwordTextField.rightView as? UIButton {
//			showPasswordLabel.setTitle(passwordTextField.isSecureTextEntry ? "Show" : "Hide", for: .normal)
//		}
	}
	
	@objc private func nextButtonTapped() {
		getNextButtonAction?()
	}
}
