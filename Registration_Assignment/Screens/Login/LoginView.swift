//
//  LoginView.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 02/07/2024.
//

import UIKit

class LoginView: UIView {
	
	private let titleLabel = UILabel()
	private let loginLabel = UILabel()
	let textField = UITextField()
	let loginToYourAccountButton = UIButton(type: .system)
	let loginWithOneTimePasswordButton = UIButton(type: .system)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setUpViews()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setUpViews() {
		backgroundColor = .white
		
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		loginLabel.translatesAutoresizingMaskIntoConstraints = false
		textField.translatesAutoresizingMaskIntoConstraints = false
		loginToYourAccountButton.translatesAutoresizingMaskIntoConstraints = false
		loginWithOneTimePasswordButton.translatesAutoresizingMaskIntoConstraints = false
		
		// Title label
		titleLabel.textColor = UIColor(red: 21/255, green: 5/255, blue: 70/255, alpha: 1)
		titleLabel.font = UIFont.systemFont(ofSize: 24)
		
		// Login label
		loginLabel.textColor = .black
		loginLabel.font = UIFont.systemFont(ofSize: 20)
		
		// Phone number text field
		setupTextField(textField, placeholder: "")
		
		// Login to your account button
		loginToYourAccountButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
		loginToYourAccountButton.setTitleColor(.white, for: .normal)
		loginToYourAccountButton.layer.cornerRadius = 20
		loginToYourAccountButton.clipsToBounds = true
		
		// Login with One Time Password button
		loginWithOneTimePasswordButton.setTitleColor(UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1), for: .normal)
		loginWithOneTimePasswordButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		loginWithOneTimePasswordButton.layer.cornerRadius = 20
		loginWithOneTimePasswordButton.clipsToBounds = true
		
		addSubview(titleLabel)
		addSubview(loginLabel)
		addSubview(textField)
		addSubview(loginToYourAccountButton)
		addSubview(loginWithOneTimePasswordButton)
		
		// Set up constraints
		NSLayoutConstraint.activate([
			titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
			titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
			titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
			
			loginLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
			loginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
			loginLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
			
			textField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 25),
			textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
			textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
			textField.heightAnchor.constraint(equalToConstant: 50),
			
			loginToYourAccountButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 40),
			loginToYourAccountButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
			loginToYourAccountButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
			loginToYourAccountButton.heightAnchor.constraint(equalToConstant: 55),
			
			loginWithOneTimePasswordButton.topAnchor.constraint(equalTo: loginToYourAccountButton.bottomAnchor, constant: 20),
			loginWithOneTimePasswordButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
			loginWithOneTimePasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
			loginWithOneTimePasswordButton.heightAnchor.constraint(equalToConstant: 55),
		])
	}
	
	func configure(with item: LoginScreenItem) {
		titleLabel.text = item.title
		loginLabel.text = item.description
		setupTextField(textField, placeholder: item.placeholder)
		loginToYourAccountButton.setTitle(item.loginButtonText, for: .normal)
		loginWithOneTimePasswordButton.setTitle(item.loginOTPButtonText, for: .normal)
	}
	
	private func setupTextField(_ textField: UITextField, placeholder: String){
		textField.placeholder = placeholder
		textField.borderStyle = .roundedRect
		textField.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
		textField.textColor = .black
	}
}
