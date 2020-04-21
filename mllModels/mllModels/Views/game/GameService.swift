//
//  GameService.swift
//  mllModels
//
//  Created by Nail Safin on 12.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation

class GameService: ProtocolGameService {
    
    // MARK: - Propities
   
    let resutlSaver = ResultRepository()
    private(set) var results: [Result] = [] {
        didSet{
            resutlSaver.save(results: self.results)
        }
        
    }
    
    var result: Result
    let base = QuestionBase()
    var indexOfQuestion: Int = -1
    var allQuestions = [QuestionModel]()
    var currentQuestion: QuestionModel?
    let gameStrategy: GameLevelStrategy
    var numberOfQuestion = Observable<Int>(0)
    
    // MARK: - Inits
    
    init(stategy: GameLevelStrategy) {
        self.results = self.resutlSaver.getAllResults()
        self.gameStrategy = stategy
        allQuestions = gameStrategy.getQuestions()
        result = .zero
        
    }
    
    // MARK: - Handlers
    
    func startGame() -> QuestionModel? {
        indexOfQuestion = 0
        setQuestion()
        return currentQuestion
    }
    
    func setQuestion() {
        currentQuestion = allQuestions[indexOfQuestion]
        numberOfQuestion.value += 1
       
        
    }
    
    func nextIndex() {
        indexOfQuestion += 1
    }
    
    func nextQuestion() -> QuestionModel? {
        guard (indexOfQuestion < allQuestions.count - 1)
            else { return nil}
        
        nextIndex()
        setQuestion()
        return currentQuestion
    }
    
    func checkAnswer(answer: Variants) -> Bool {
        if answer == currentQuestion?.rightAnswer {
            result.resultValue += 1
            return true
        } else {
            addResult()
            return false
        }
        
    }
    
    func addResult() {
        result.date = Date()
        self.results.append(result)  
    }
    

    
}
