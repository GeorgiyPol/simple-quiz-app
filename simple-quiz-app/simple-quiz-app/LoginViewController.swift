//
//  LoginViewController.swift
//  simple-quiz-app
//
//  Created by Georgiy on 17.10.2022.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
    
        view.addSubview(loginView)
    }
    
    private func setupLayout() {
        loginView.translatesAutoresizingMaskIntoConstraints = false

        // loginView
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
        ])
    }
}
