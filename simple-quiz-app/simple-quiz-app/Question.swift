//
//  Question.swift
//  simple-quiz-app
//
//  Created by Georgiy on 17.10.2022.
//

import Foundation
struct Question {
    
    let text: String
    let answers: [String]
    let rightAnswer: String

    init(q: String,
         a: [String],
         correctAnswer: String) {
        
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
