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
    
    private var onboardingView: OnboardingView? {
        guard isViewLoaded else { return nil }
        return view as? OnboardingView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = OnboardingView()
        model = OnboardingModel()

        configureView()
    }
}

private extension OnboardingController {
    
    func configureView() {
        guard let models = model?.createModels() else { return }
        models.forEach {[unowned self] model in
            onboardingView?.configureView(with: models)
        }
    }
}
