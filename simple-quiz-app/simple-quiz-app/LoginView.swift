//
//  LoginView.swift
//  simple-quiz-app
//
//  Created by Georgiy on 17.10.2022.
//

import UIKit

class LoginView: UIView {
    
    private lazy var stackView: UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 1
        stackView.layer.cornerRadius = 5
        stackView.clipsToBounds = true
        return stackView
    }()
    
    private lazy var userNameTextField: UITextField = {
        var userNameTextField = UITextField()
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "Username"
        userNameTextField.font = .systemFont(ofSize: 15)
        userNameTextField.backgroundColor = .white
        
        return userNameTextField
    }()
    
    private lazy var passwordTextField: UITextField = {
        var passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.font = .systemFont(ofSize: 15)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.backgroundColor = .white
        return passwordTextField
    }()
    
    private lazy var dividerView: UIView = {
        var dividerView = UIView()
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.layer.cornerRadius = 5
        return dividerView
    }()
    
    private lazy var subtitleLabel: UILabel = {
        var subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        subtitleLabel.adjustsFontForContentSizeCategory = true
        subtitleLabel.numberOfLines = 0
        subtitleLabel.text = "The classic form of authorization."
        subtitleLabel.textColor = UIColor.blackColor
        return subtitleLabel
    }()
    
    private lazy var titleLabel: UILabel = {
        var titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.text = "Sign In Form"
        titleLabel.textColor = UIColor.blackColor
        return titleLabel
    }()
    
    private lazy var imageLogo: UIImageView = {
        var imageLogo = UIImageView()
        imageLogo.image = UIImage(systemName: "person.crop.circle.fill")
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        imageLogo.tintColor = .white
        return imageLogo
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Settings -
    
    private func setupHierarchy() {
        
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
        addSubview(stackView)
        addSubview(subtitleLabel)
        addSubview(titleLabel)
        addSubview(imageLogo)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 6),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 6),
            
            userNameTextField.heightAnchor.constraint(equalToConstant: 35),
            passwordTextField.heightAnchor.constraint(equalToConstant: 35),

            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: subtitleLabel.bottomAnchor, multiplier: 3),
            subtitleLabel.widthAnchor.constraint(equalTo: widthAnchor),
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 3),
            
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: imageLogo.leadingAnchor, multiplier: 5),
            subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageLogo.bottomAnchor, multiplier: 4)
        ])
        
    }
    
    private func setupView() {
        backgroundColor = UIColor.tealColor
    }
}

extension UIColor {
    
    static var tealColor: UIColor  { return UIColor(red: 0/255, green: 171/255, blue: 179/255, alpha: 1) }
    static var blackColor: UIColor  { return UIColor(red: 60/255, green: 64/255, blue: 72/255, alpha: 1) }
    static var greyColor: UIColor  { return UIColor(red: 178/255, green: 178/255, blue: 178/255, alpha: 1) }
    static var spaceColor: UIColor  { return UIColor(red: 234/255, green: 234/255, blue: 234/255, alpha: 1) }
}
