//
//  GameLavelStategy.swift
//  mllModels
//
//  Created by Nail Safin on 20.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
protocol GameLevelStrategy {
    func getQuestions() -> [QuestionModel]
}
class MediumGameStrategy: GameLevelStrategy {
    func getQuestions() -> [QuestionModel] {
        let base = QuestionBase()
        let questions = base.getAllQuestions()
        return questions[0]
    }
    
    
}

class EasyGameStrategy: GameLevelStrategy {
    func getQuestions() -> [QuestionModel] {
        let base = QuestionBase()
        let questions = base.getAllQuestions()
        return questions[2]
    }
    
    
}

class HardGameStrategy: GameLevelStrategy {
    func getQuestions() -> [QuestionModel] {
        let base = QuestionBase()
        let questions = base.getAllQuestions()
        return questions[1]
    }
    
    
}
