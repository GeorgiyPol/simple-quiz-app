//
//  LoginViewController.swift
//  simple-quiz-app
//
//  Created by Georgiy on 17.10.2022.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    private var myMainView: LoginView? {
        guard isViewLoaded else { return nil }
        return view as? LoginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = LoginView()
    }
}


