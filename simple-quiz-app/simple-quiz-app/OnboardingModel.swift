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
                title: "Изучай материалы и выполняй задания",
                description: "Обучения iOS разработке требует много практики, для этого нужно внимательно изучать материалы и выполнять все задания из них.",
                imageName: "code"),
            
            Onboarding(
                index: 1,
                title: "Задавай возникшие вопросы в чате и на еженедельных созвонах",
                description: "Разбор вопросов - это залог быстрого и правильного обучения",
                imageName: "questions-chat"),
            
            Onboarding(
                index: 2,
                title: "Опыт реальных собеседований",
                description: "Готовься и проходи собеседования",
                imageName: "interview")
        ]
    }
}
