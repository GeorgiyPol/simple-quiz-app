//
//  OnboardingContentViewCell.swift
//  simple-quiz-app
//
//  Created by Georgiy on 21.10.2022.
//

import Foundation
import UIKit

final class OnboardingContentViewCell: UICollectionViewCell {

    static let identifier = "OnboardingContentViewCell"
    
    // MARK: - Configuration

    func configureView(with model: Onboarding) {
        titleLabel.text = model.title
        imageView.image = UIImage.init(named: model.imageName)
        descriptionLabel.text = model.description
    }

    // MARK: - Views

    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.layer.cornerRadius = 30
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 3
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = UIColor.blackColor
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 17)
        label.textColor = .secondaryLabel
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = UIColor.tealColor
        setupHierarchy()
        setupLayout()
    }

    private func setupHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
    }

    private func setupLayout() {
        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true

        imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.35).isActive = true
        imageView.clipsToBounds = true
        
    }

}
