//
//  ContactPrivacyOptionCell.swift
//  Registration_Assignment
//
//  Created by Rathi, Radhika on 01/07/2024.
//

//import UIKit
//
//class ContactPrivacyOptionCell: UICollectionViewCell {
//	private let button = UIButton(type: .system)
//	
//	override init(frame: CGRect) {
//		super.init(frame: frame)
//		setUpButton()
//	}
//	
//	required init?(coder: NSCoder) {
//		fatalError("init(coder:) has not been implemented")
//	}
//	
//	private func setUpButton() {
//		button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
//		button.titleLabel?.numberOfLines = 0
//		button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
//		button.setTitleColor(.black, for: .normal)
//		button.layer.cornerRadius = 15
//		button.clipsToBounds = true
//		button.translatesAutoresizingMaskIntoConstraints = false
//		contentView.addSubview(button)
//		
//		NSLayoutConstraint.activate([
//			button.topAnchor.constraint(equalTo: contentView.topAnchor),
//			button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//			button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -20)
//		])
//	}
//	
//	func configure(with title: String) {
//		button.setTitle(title, for: .normal)
//		button.sizeToFit()
//	}
//}
