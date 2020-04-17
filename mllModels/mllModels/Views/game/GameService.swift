//
//  GameService.swift
//  mllModels
//
//  Created by Nail Safin on 12.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
import UIKit


class GameService {
    
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
    
    
    // MARK: - Inits
    
    init() {
        self.results = self.resutlSaver.getAllResults()
        allQuestions = base.getAllQuestions()
        result = .zero
    }
    
    // MARK: - Handlers
    
    func startGame(vc: GameViewController?) {
        indexOfQuestion = 0
        setQuestion()
        showQuestion(indexOfQuestion: indexOfQuestion, vc: vc, question: currentQuestion)
    }
    
    func showQuestion(indexOfQuestion: Int, vc: GameViewController?, question: QuestionModel?) {
        guard let question = question,
            let view = vc
            else { return }
        view.gameView.answerOne.text = question.answers[.one]
        view.gameView.one.setImage(UIImage(named: "buttonNormal"), for: .normal)
        view.gameView.answerTwo.text = question.answers[.two]
        view.gameView.two.setImage(UIImage(named: "buttonNormal"), for: .normal)
        view.gameView.answerThree.text = question.answers[.three]
        view.gameView.three.setImage(UIImage(named: "buttonNormal"), for: .normal)
        view.gameView.answerFour.text = question.answers[.four]
        view.gameView.four.setImage(UIImage(named: "buttonNormal"), for: .normal)
        view.gameView.question.text = question.question
        view.gameView.numberQuestion.text = "Вопрос № \(question.id)"
        
        
        
    }
    
    func setQuestion() {
        currentQuestion = allQuestions[indexOfQuestion]
        
    }
    
    func nextIndex() {
        indexOfQuestion += 1
    }
    
    func showNextQuestion(vc: GameViewController?) {
        guard (indexOfQuestion < allQuestions.count - 1)
            else { return }
        
        nextIndex()
        setQuestion()
        showQuestion(indexOfQuestion: indexOfQuestion, vc: vc, question: currentQuestion)
    }
    
    func checkAnswer(answer: Variants, vc: GameViewController?, sender: UIButton) {
        if answer == currentQuestion?.rightAnswer {
            
            UIView.transition(with: sender,
                              duration: 1.1,
                              options: .transitionFlipFromTop,
                              animations: {
                                sender.setImage(UIImage(named: "buttonWin"), for: .normal)
            }) { _ in
                self.showWinAlert(vc: vc)
            }
            
            
        } else {
            UIView.transition(with: sender,
                              duration: 1.1,
                              options: .transitionFlipFromTop,
                              animations: {
                                sender.setImage(UIImage(named: "buttonLoose"), for: .normal)
            }) { _ in
                self.showLooseAlert(vc: vc)
            }
            
        }
    }
    
    func addResult() {
        result.date = Date()
        self.results.append(result)
       
    }
    
    func showWinAlert(vc: GameViewController?) {
        let alert = UIAlertController(title: "YES !", message: "Next Question", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.result.resultValue += 1
            self.showNextQuestion(vc: vc)
        }
        alert.addAction(action)
        if let vc = vc {
            vc.present(alert, animated: true)
        }
        
    }
    
    func showLooseAlert(vc: GameViewController?) {
        let alert = UIAlertController(title: "INCORRECT", message: "GAME OVER", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.addResult()
            if let vc = vc {
                vc.navigationController?.popToRootViewController(animated: true)
            }
           
        }
        alert.addAction(action)
        if let vc = vc {
            vc.present(alert, animated: true)
        }
    }
    
}
