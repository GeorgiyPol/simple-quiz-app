//
//  OnboardingModel.swift
//  simple-quiz-app
//
//  Created by Georgiy on 20.10.2022.
//

import Foundation

struct Onboarding {
    
    let index: Int
    let title: String
    let description: String
    let imageName: String
}

final class OnboardingModel {

    func createModels() -> [Onboarding] {
        
        return [
            Onboarding(
                index: 0,
                title: " Бросьте вызов своим друзьям!",
                description: "Кому не понравится провести викторину в собственной гостиной?",
                imageName: "first.jpg"),
            
            Onboarding(
                index: 1,
                title: "Испытайте себя, отвечая на вопросы из самых разных рубрик.",
                description: "Будет забавно увидеть, сколько полезных или “бесполезных” знаний имеют люди!",
                imageName: "second.jpg"),
            
            Onboarding(
                index: 2,
                title: "Играть в викторину просто. ",
                description: "Все знают, что главная цель - правильно отвечать на вопросы.",
                imageName: "third.jpg")
        ]
    }
}
