//
//  OnboardingView.swift
//  simple-quiz-app
//
//  Created by Georgiy on 20.10.2022.
//

import Foundation
import UIKit

final class OnboardingView: UIView {
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {

    }
    
    private func setupLayout() {
    
    }
}
