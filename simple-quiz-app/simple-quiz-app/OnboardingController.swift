//
//  OnboardingController.swift
//  simple-quiz-app
//
//  Created by Georgiy on 20.10.2022.
//

import Foundation
import UIKit

final class OnboardingController: UIViewController {

    var model: OnboardingModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        model = OnboardingModel()

        configureView()
    }
}

private extension OnboardingController {
    
    func configureView() {
        
    }
}
