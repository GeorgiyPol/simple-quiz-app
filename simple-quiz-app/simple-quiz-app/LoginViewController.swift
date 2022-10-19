//
//  LoginViewController.swift
//  simple-quiz-app
//
//  Created by Georgiy on 17.10.2022.
//

import Foundation
import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    
    func didLogin()
}

class LoginViewController: UIViewController {
    
    private var myMainView: LoginView? {
        guard isViewLoaded else { return nil }
        return view as? LoginView
    }
    
    var username: String? {
        return myMainView?.userNameTextField.text
    }
    
    var password: String? {
        return myMainView?.passwordTextField.text
    }
    
    weak var delegate: LoginViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMainView?.signInAction = signInPressed
    }
    
    override func loadView() {
        view = LoginView()
    }
}

extension LoginViewController {
    
    private func signInPressed() {
                    
        myMainView?.errorMessageLabel.isEnabled = true
        login()
    }
    
    private func login() {
        
        guard let username = username, let password = password else {
            assertionFailure("Username / password should never be nil")
            return
        }
        
        if username.isEmpty || password.isEmpty {
            configureView(withMessage: "Username / password cannot be empty")
            myMainView?.signInButton.configuration?.showsActivityIndicator = false
            return
        }
        
        if username == UserData.userData.userLogin && password == UserData.userData.userPassword {
            myMainView?.signInButton.configuration?.showsActivityIndicator = true
            delegate?.didLogin()
            myMainView?.errorMessageLabel.text = ""
        } else {
            myMainView?.signInButton.configuration?.showsActivityIndicator = false
            configureView(withMessage: "Incorrect username / password")
        }
    }
    
    private func configureView(withMessage message: String) {
        myMainView?.errorMessageLabel.isHidden = false
        myMainView?.errorMessageLabel.text = message
    }
}
