//
//  QuizView.swift
//  simple-quiz-app
//
//  Created by Georgiy on 21.10.2022.
//

import Foundation
import UIKit

class QuizView: UIView {
    
    private lazy var backView: UIImageView = {
        var backView = UIImageView()
        backView.image = UIImage(named: "back.jpg")
        backView.translatesAutoresizingMaskIntoConstraints = false
        return backView
    }()
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillProportionally
        view.spacing = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var score: UILabel = {
        let score = UILabel()
        score.text = "Score: 0"
        score.textAlignment = .left
        score.numberOfLines = 3
        score.font = .boldSystemFont(ofSize: 17)
        score.textColor = UIColor.white
        return score
    }()
    
    private lazy var questionText: UILabel = {
        let questionText = UILabel()
        questionText.text = "Question Text..."
        questionText.textAlignment = .left
        questionText.numberOfLines = 3
        questionText.font = .boldSystemFont(ofSize: 30)
        questionText.textColor = UIColor.white
        return questionText
    }()
    
    lazy var choiceFirst: UIButton = {
        var choiceFirst = UIButton(type: .system)
        choiceFirst.translatesAutoresizingMaskIntoConstraints = false
        choiceFirst.configuration = .filled()
        choiceFirst.layer.cornerRadius = 25
        choiceFirst.clipsToBounds = true
        choiceFirst.setTitle("Choice 1", for: [])
        choiceFirst.tintColor = .blackColor
        
        //choiceFirst.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        return choiceFirst
    }()
    
    lazy var choiceSecond: UIButton = {
        var choiceFirst = UIButton(type: .system)
        choiceFirst.translatesAutoresizingMaskIntoConstraints = false
        choiceFirst.configuration = .filled()
        choiceFirst.layer.cornerRadius = 25
        choiceFirst.clipsToBounds = true
        choiceFirst.setTitle("Choice 1", for: [])
        choiceFirst.tintColor = .blackColor
        
        //choiceFirst.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        return choiceFirst
    }()
    
    lazy var choiceThird: UIButton = {
        var choiceFirst = UIButton(type: .system)
        choiceFirst.translatesAutoresizingMaskIntoConstraints = false
        choiceFirst.configuration = .filled()
        choiceFirst.layer.cornerRadius = 25
        choiceFirst.clipsToBounds = true
        choiceFirst.setTitle("Choice 1", for: [])
        choiceFirst.tintColor = .blackColor
        
        //choiceFirst.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        return choiceFirst
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
    
    private func setupHierarchy() {
        addSubview(backView)
        stackView.addArrangedSubview(score)
        stackView.addArrangedSubview(questionText)
        stackView.addArrangedSubview(choiceFirst)
        stackView.addArrangedSubview(choiceSecond)
        stackView.addArrangedSubview(choiceThird)
        
        addSubview(stackView)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            backView.centerXAnchor.constraint(equalTo: centerXAnchor),
            backView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 3),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 3),
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 5),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 8),
            
            choiceFirst.heightAnchor.constraint(equalToConstant: 80),
            choiceSecond.heightAnchor.constraint(equalToConstant: 80),
            choiceThird.heightAnchor.constraint(equalToConstant: 80),
        ])
        
    }
    
    private func setupView() {
        backgroundColor = .green
    }
}
