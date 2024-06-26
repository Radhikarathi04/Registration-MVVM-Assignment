//
//  ViewController.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 15/06/2024.
//

import UIKit
import GoogleSignIn

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Define circle configurations (size and position)
        let circleConfigurations: [(size: CGFloat, position: CGPoint)] = [
            (size: 100, position: CGPoint(x: 300, y: 100)),
            (size: 80, position: CGPoint(x: 150, y: 150)),
            (size: 120, position: CGPoint(x: 250, y: 200)),
            (size: 90, position: CGPoint(x: 80, y: 250)),
            (size: 110, position: CGPoint(x: 180, y: 300)),
            (size: 100, position: CGPoint(x: 280, y: 350)),
            (size: 80, position: CGPoint(x: 130, y: 400))
        ]
        
        var previousCircleView: UIView
        
        // Loop through circle configurations to create circles
        for config in circleConfigurations {
            let circleView = UIView()
            circleView.translatesAutoresizingMaskIntoConstraints = false
            circleView.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
            circleView.layer.cornerRadius = config.size / 2 // Make it a circle
            view.addSubview(circleView)
            
            // Title label
            let titleLabel = UILabel()
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.textAlignment = .center
            titleLabel.textColor = .black
            titleLabel.font = UIFont.systemFont(ofSize: 24)
            
            let attributedTitle = NSMutableAttributedString(string: "Match.Mingle")
            attributedTitle.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 6, length: 6))
            titleLabel.attributedText = attributedTitle
            
            self.view.addSubview(titleLabel)
            
            // Subtitle label
            let subtitleLabel = UILabel()
            subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
            subtitleLabel.textAlignment = .center
            subtitleLabel.font = UIFont.systemFont(ofSize: 40)
            subtitleLabel.numberOfLines = 0
            
            let attributedSubtitle = NSMutableAttributedString(string: "Find you first\nMeta Matches")
            attributedSubtitle.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 9, length: 10))
            subtitleLabel.attributedText = attributedSubtitle
            
            self.view.addSubview(subtitleLabel)
            
            // Description Label
            let descriptionLabel = UILabel()
            descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
            descriptionLabel.text = "Join us and socialize with millions\nof meta humans"
            descriptionLabel.textAlignment = .center
            descriptionLabel.font = UIFont.systemFont(ofSize: 20)
            descriptionLabel.numberOfLines = 0
            
            self.view.addSubview(descriptionLabel)
            
            // Get Started Button
            let getStartedButton = UIButton()
            getStartedButton.translatesAutoresizingMaskIntoConstraints = false
            getStartedButton.setTitle("Get Started", for: .normal)
            getStartedButton.backgroundColor = UIColor(red: 239/255, green: 75/255, blue: 75/255, alpha: 1)
            getStartedButton.layer.cornerRadius = 20
            getStartedButton.setImage(UIImage(named: "arrow.right"),
                                      for: .normal)
            getStartedButton.semanticContentAttribute = .forceRightToLeft
            getStartedButton.addTarget(self, action: #selector(didTapGetStarted(_:)), for: .touchUpInside)
            
            self.view.addSubview(getStartedButton)
            
            // Google Sign in Button
            let googleSignInButton = UIButton()
            googleSignInButton.translatesAutoresizingMaskIntoConstraints = false
            googleSignInButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
            googleSignInButton.setImage(UIImage(named: "google.logo"), for: .normal)
            googleSignInButton.layer.cornerRadius = 20
            googleSignInButton.addTarget(self, action: #selector(googleSignInButtonTapped), for: .touchUpInside)
            
            self.view.addSubview(googleSignInButton)
            
            // Apple Sign in Button
            let appleSignInButton = UIButton()
            appleSignInButton.translatesAutoresizingMaskIntoConstraints = false
            appleSignInButton.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
            appleSignInButton.setImage(UIImage(named: "apple.logo"), for: .normal)
            appleSignInButton.layer.cornerRadius = 20
            
            self.view.addSubview(appleSignInButton)
            
            // Already have a account? Log in
            let accountLabel = UILabel()
            accountLabel.translatesAutoresizingMaskIntoConstraints = false
            accountLabel.textAlignment = .center
            accountLabel.font = UIFont.systemFont(ofSize: 16)
            accountLabel.isUserInteractionEnabled = true
            
            let attributedAccountLabel = NSMutableAttributedString(string: "Already have an account? Log in")
            attributedAccountLabel.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 25, length: 6))
            accountLabel.attributedText = attributedAccountLabel
            
            self.view.addSubview(accountLabel)
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(logInLabelTapped))
            accountLabel.addGestureRecognizer(tapGesture)
            
            
            NSLayoutConstraint.activate([
                
                circleView.widthAnchor.constraint(equalToConstant: config.size),
                circleView.heightAnchor.constraint(equalToConstant: config.size),
                circleView.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: config.position.x),
                circleView.topAnchor.constraint(equalTo: view.topAnchor, constant: config.position.y),
                
                titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 77),
                titleLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
                titleLabel.widthAnchor.constraint(equalToConstant: 154),
                titleLabel.heightAnchor.constraint(equalToConstant: 31),
                
                subtitleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 540),
                subtitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                subtitleLabel.widthAnchor.constraint(equalToConstant: 265),
                subtitleLabel.heightAnchor.constraint(equalToConstant: 104),
                
                descriptionLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 661),
                descriptionLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                descriptionLabel.widthAnchor.constraint(equalToConstant: 300),
                descriptionLabel.heightAnchor.constraint(equalToConstant: 52),
                
                
                // Get Started Button Constraints
                getStartedButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 730),
                getStartedButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 28),
                getStartedButton.widthAnchor.constraint(equalToConstant: 210),
                getStartedButton.heightAnchor.constraint(equalToConstant: 60),
                
                // Google Signin Button Constraints
                googleSignInButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 730),
                googleSignInButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 250),
                googleSignInButton.widthAnchor.constraint(equalToConstant: 57),
                googleSignInButton.heightAnchor.constraint(equalToConstant: 60),
                
                // Apple Signin Button Constraints
                appleSignInButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 730),
                appleSignInButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 320),
                appleSignInButton.widthAnchor.constraint(equalToConstant: 57),
                appleSignInButton.heightAnchor.constraint(equalToConstant: 60),
                
                accountLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 800),
                accountLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ])
            
            // Keep a reference to the last circle view for vertical positioning of the "Get Started" button
            previousCircleView = circleView
        }
    }
    
    @objc private func googleSignInButtonTapped() {
                GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
//                    self.btnGoogleSignIn.isHidden = false
//                    self.btnGoogleSignOut.isHidden = true
//                    self.lblSignInStatus.text = "Welcome To GoogleSignIn! To continue with GoogleSignIn please hit below button. "
                    guard error == nil else { return }
                    print("no error")

                  // If sign in succeeded, display the app's main content View.
                    guard let signInResult = signInResult else { return }
                    print("sign in  result success")
                    let user = signInResult.user

                    let emailAddress = user.profile?.email
                    let fullName = user.profile?.name
                    let familyName = user.profile?.familyName
                    let profilePicUrl = user.profile?.imageURL(withDimension: 320)
                    print("Email \(emailAddress)")
                }
            
    }
    
    @objc private func logInLabelTapped() {
        // Navigate to LogInViewController
        let loginViewController = LoginViewController()
        navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    @objc func didTapGetStarted(_ sender: UIButton) {
        guard let navigationController = self.navigationController else {
            print("Navigation controller is nil.")
            return
        }
        let signUpVC = SignUpViewController()
        navigationController.pushViewController(signUpVC, animated: true)
    }
    
}

