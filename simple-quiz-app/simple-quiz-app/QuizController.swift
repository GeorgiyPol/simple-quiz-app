//
//  QuizController.swift
//  simple-quiz-app
//
//  Created by Georgiy on 21.10.2022.
//

import Foundation
import UIKit

class QuizController: UIViewController {
    
    
    private var quizView: QuizView? {
        guard isViewLoaded else { return nil }
        return view as? QuizView
    }
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func loadView() {
        view = QuizView()
    }
}
