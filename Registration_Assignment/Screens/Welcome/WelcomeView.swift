//
//  WelcomeView.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 24/06/2024.
//

//import UIKit
//
//class WelcomeView: UIView {
//
//    private let titleLabel = UILabel()
//    private let subtitleLabel = UILabel()
//    private let descriptionLabel = UILabel()
//    private let getStartedButton = UIButton(type: .system)
//    private let googleSignInButton = UIButton(type: .system)
//    private let appleSignInButton = UIButton(type: .system)
//    private let accountLabel = UILabel()
////    private let loginButton = UIButton(type: .system)
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setUpViews()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func setUpViews() {
//        print("setupViews called")
//        backgroundColor = .white
//        
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
//        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
//        googleSignInButton.translatesAutoresizingMaskIntoConstraints = false
//        accountLabel.translatesAutoresizingMaskIntoConstraints = false
////        loginButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        // Add subviews
//        
//        addSubview(titleLabel)
//        addSubview(subtitleLabel)
//        addSubview(descriptionLabel)
//        addSubview(getStartedButton)
//        addSubview(googleSignInButton)
//        addSubview(appleSignInButton)
//        addSubview(accountLabel)
////        addSubview(loginButton)
//        
//        // Configuring UI elements
//        
//        // Title label
//        titleLabel.textAlignment = .center
//        titleLabel.textColor = .black
//        titleLabel.font = UIFont.systemFont(ofSize: 24)
//        let attributedTitle = NSMutableAttributedString(string: "Match.Mingle")
//        attributedTitle.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 6, length: 6))
//        titleLabel.attributedText = attributedTitle
//        
//        // Subtitle label
//        let subtitleLabel = UILabel()
//        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        subtitleLabel.textAlignment = .center
//        subtitleLabel.font = UIFont.systemFont(ofSize: 40)
//        subtitleLabel.numberOfLines = 0
//        let attributedSubtitle = NSMutableAttributedString(string: "Find you first\nMeta Matches")
//        attributedSubtitle.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 9, length: 10))
//        subtitleLabel.attributedText = attributedSubtitle
//
//        // Description Label
//        let descriptionLabel = UILabel()
//        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
//        descriptionLabel.text = "Join us and socialize with millions\nof meta humans"
//        descriptionLabel.textAlignment = .center
//        descriptionLabel.font = UIFont.systemFont(ofSize: 20)
//        descriptionLabel.numberOfLines = 0
//        
//        // Get Started Button
//        let getStartedButton = UIButton()
//        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
//        getStartedButton.setTitle("Get Started", for: .normal)
//        getStartedButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
//        getStartedButton.layer.cornerRadius = 20
//        getStartedButton.setImage(UIImage(named: "arrow.right"),
//                          for: .normal)
//        getStartedButton.semanticContentAttribute = .forceRightToLeft
//        getStartedButton.clipsToBounds = true
////        getStartedButton.addTarget(self, action: #selector(didTapGetStarted(_:)), for: .touchUpInside)
//        
//        // Google Sign in Button
//        let googleSignInButton = UIButton()
//        googleSignInButton.translatesAutoresizingMaskIntoConstraints = false
//        googleSignInButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
//        googleSignInButton.setImage(UIImage(named: "google.logo"), for: .normal)
//        googleSignInButton.layer.cornerRadius = 20
////        googleSignInButton.addTarget(self, action: #selector(googleSignInButtonTapped), for: .touchUpInside)
//        
//        // Apple Sign in Button
//        let appleSignInButton = UIButton()
//        appleSignInButton.translatesAutoresizingMaskIntoConstraints = false
//        appleSignInButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
//        appleSignInButton.setImage(UIImage(named: "apple.logo"), for: .normal)
//        appleSignInButton.layer.cornerRadius = 20
//        
//        // Already have a account? Log in
//        accountLabel.textAlignment = .center
//        accountLabel.font = UIFont.systemFont(ofSize: 16)
//        accountLabel.isUserInteractionEnabled = true
//        let attributedAccountLabel = NSMutableAttributedString(string: "Already have an account? Log in")
//        attributedAccountLabel.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 25, length: 6))
//        accountLabel.attributedText = attributedAccountLabel
//        
//        // Set up constraints
//        NSLayoutConstraint.activate([
//            
////            circleView.widthAnchor.constraint(equalToConstant: config.size),
////            circleView.heightAnchor.constraint(equalToConstant: config.size),
////            circleView.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: config.position.x),
////            circleView.topAnchor.constraint(equalTo: view.topAnchor, constant: config.position.y),
//            
//            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 77),
//            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
//            titleLabel.widthAnchor.constraint(equalToConstant: 154),
//            titleLabel.heightAnchor.constraint(equalToConstant: 31),
//            
//            subtitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 540),
//            subtitleLabel.centerXAnchor.constraint(equalTo: subtitleLabel.centerXAnchor),
//            subtitleLabel.widthAnchor.constraint(equalToConstant: 265),
//            subtitleLabel.heightAnchor.constraint(equalToConstant: 104),
//            
//            descriptionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 661),
//            descriptionLabel.centerXAnchor.constraint(equalTo: descriptionLabel.centerXAnchor),
//            descriptionLabel.widthAnchor.constraint(equalToConstant: 300),
//            descriptionLabel.heightAnchor.constraint(equalToConstant: 52),
//            
//            
//            // Get Started Button Constraints
//            getStartedButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 730),
//            getStartedButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
//            getStartedButton.widthAnchor.constraint(equalToConstant: 210),
//            getStartedButton.heightAnchor.constraint(equalToConstant: 60),
//            
//            // Google Signin Button Constraints
//            googleSignInButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 730),
//            googleSignInButton.leadingAnchor.constraint(equalTo: googleSignInButton.trailingAnchor, constant: 20),
//            googleSignInButton.widthAnchor.constraint(equalToConstant: 57),
//            googleSignInButton.heightAnchor.constraint(equalToConstant: 60),
//            
//            // Apple Signin Button Constraints
//            appleSignInButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 730),
//            appleSignInButton.leadingAnchor.constraint(equalTo: appleSignInButton.trailingAnchor, constant: 10),
//            appleSignInButton.widthAnchor.constraint(equalToConstant: 57),
//            appleSignInButton.heightAnchor.constraint(equalToConstant: 60),
//            
//            accountLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 800),
//            accountLabel.centerXAnchor.constraint(equalTo: accountLabel.centerXAnchor),
//        ])
//    }
//
//    func configure(with item: WelcomeItem) {
//        subtitleLabel.text = item.title
//        descriptionLabel.text = item.description
//    }
//    
//    var getStartedButtonAction: (() -> Void)? {
//        didSet {
//            getStartedButton.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)
//        }
//    }
//    
//    var googleButtonAction: (() -> Void)? {
//        didSet {
//            googleSignInButton.addTarget(self, action: #selector(googleButtonTapped), for: .touchUpInside)
//        }
//    }
//    
//    var appleButtonAction: (() -> Void)? {
//        didSet {
//            appleSignInButton.addTarget(self, action: #selector(appleButtonTapped), for: .touchUpInside)
//        }
//    }
//    
//    @objc private func getStartedButtonTapped() {
//        getStartedButtonAction?()
//    }
//    
//    @objc private func googleButtonTapped() {
//        googleButtonAction?()
//    }
//    
//    @objc private func appleButtonTapped() {
//        appleButtonAction?()
//    }
//    
////    @objc private func loginButtonTapped() {
////        loginButtonAction?()
////    }
//}

import UIKit

class WelcomeView: UIView {
    
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let getStartedButton = UIButton(type: .system)
    private let googleSignInButton = UIButton(type: .system)
    private let appleSignInButton = UIButton(type: .system)
    private let accountLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpViews()
    }
    
    private func setUpViews() {
        print("setupViews called")
        backgroundColor = .white
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
        googleSignInButton.translatesAutoresizingMaskIntoConstraints = false
        appleSignInButton.translatesAutoresizingMaskIntoConstraints = false
        accountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Add subviews
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(descriptionLabel)
        addSubview(getStartedButton)
        addSubview(googleSignInButton)
        addSubview(appleSignInButton)
        addSubview(accountLabel)
        
        // Configuring UI elements
        
        // Title label
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 24)
        let attributedTitle = NSMutableAttributedString(string: "Match.Mingle")
        attributedTitle.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 6, length: 6))
        titleLabel.attributedText = attributedTitle
        
        // Subtitle label
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = UIFont.systemFont(ofSize: 40)
        subtitleLabel.numberOfLines = 0
        let attributedSubtitle = NSMutableAttributedString(string: "Find you first\nMeta Matches")
        attributedSubtitle.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 9, length: 10))
        subtitleLabel.attributedText = attributedSubtitle
        
        // Description Label
        descriptionLabel.text = "Join us and socialize with millions\nof meta humans"
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont.systemFont(ofSize: 20)
        descriptionLabel.numberOfLines = 0
        
        // Get Started Button
        getStartedButton.setTitle("Get Started", for: .normal)
        getStartedButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
        getStartedButton.layer.cornerRadius = 20
        getStartedButton.setImage(UIImage(named: "arrow.right"), for: .normal)
        getStartedButton.semanticContentAttribute = .forceRightToLeft
        getStartedButton.clipsToBounds = true
        
        // Google Sign in Button
        googleSignInButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        googleSignInButton.setImage(UIImage(named: "google.logo"), for: .normal)
        googleSignInButton.layer.cornerRadius = 20
        
        // Apple Sign in Button
        appleSignInButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        appleSignInButton.setImage(UIImage(named: "apple.logo"), for: .normal)
        appleSignInButton.layer.cornerRadius = 20
        
        // Already have an account? Log in
        accountLabel.textAlignment = .center
        accountLabel.font = UIFont.systemFont(ofSize: 16)
        accountLabel.isUserInteractionEnabled = true
        let attributedAccountLabel = NSMutableAttributedString(string: "Already have an account? Log in")
        attributedAccountLabel.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 25, length: 6))
        accountLabel.attributedText = attributedAccountLabel
        
        // Set up constraints
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 77),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.widthAnchor.constraint(equalToConstant: 154),
            titleLabel.heightAnchor.constraint(equalToConstant: 31),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            getStartedButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            getStartedButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            getStartedButton.widthAnchor.constraint(equalToConstant: 210),
            getStartedButton.heightAnchor.constraint(equalToConstant: 60),
            
            googleSignInButton.topAnchor.constraint(equalTo: getStartedButton.topAnchor),
            googleSignInButton.leadingAnchor.constraint(equalTo: getStartedButton.trailingAnchor, constant: 20),
            googleSignInButton.widthAnchor.constraint(equalToConstant: 57),
            googleSignInButton.heightAnchor.constraint(equalToConstant: 60),
            
            appleSignInButton.topAnchor.constraint(equalTo: getStartedButton.topAnchor),
            appleSignInButton.leadingAnchor.constraint(equalTo: googleSignInButton.trailingAnchor, constant: 10),
            appleSignInButton.widthAnchor.constraint(equalToConstant: 57),
            appleSignInButton.heightAnchor.constraint(equalToConstant: 60),
            
            accountLabel.topAnchor.constraint(equalTo: getStartedButton.bottomAnchor, constant: 30),
            accountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            accountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func configure(with item: WelcomeItem) {
        subtitleLabel.text = item.title
        descriptionLabel.text = item.description
    }
    
    var getStartedButtonAction: (() -> Void)? {
        didSet {
            getStartedButton.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)
        }
    }
    
    var googleButtonAction: (() -> Void)? {
        didSet {
            googleSignInButton.addTarget(self, action: #selector(googleButtonTapped), for: .touchUpInside)
        }
    }
    
    var appleButtonAction: (() -> Void)? {
        didSet {
            appleSignInButton.addTarget(self, action: #selector(appleButtonTapped), for: .touchUpInside)
        }
    }
    
    @objc private func getStartedButtonTapped() {
        getStartedButtonAction?()
    }
    
    @objc private func googleButtonTapped() {
        googleButtonAction?()
    }
    
    @objc private func appleButtonTapped() {
        appleButtonAction?()
    }
}
