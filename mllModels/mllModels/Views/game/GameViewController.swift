//
//  GameViewController.swift
//  mllModels
//
//  Created by Nail Safin on 10.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {
    
    //MARK: Properties
    let gameView: GameView = {
          return $0
      }(GameView())
    
    var service: ProtocolGameService
    var indexOfQuestion = 0
    var currentQuestion: QuestionModel?
    var allQuestions = [QuestionModel]()
    
    
   
    
    // MARK: Init
    init(diff: Difficulty) {
        let levelStrategy: GameLevelStrategy
        switch  diff {
        case .easy: levelStrategy = EasyGameStrategy()
        case .medium : levelStrategy = MediumGameStrategy()
        case .hard: levelStrategy = HardGameStrategy()
            
        }
        self.service = GameService(stategy: levelStrategy)
        super.init(nibName: nil, bundle: nil)
        
        
       
      
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       view = gameView
        gameView.one.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        gameView.two.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        gameView.three.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        gameView.four.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        navigationController?.setNavigationBarHidden(false, animated: true)
        service.numberOfQuestion.addObserver(observer: self, option: [.new, .initial]) { [weak self] (numberOfQuestion, _) in
            self?.gameView.numberQuestion.text = "Number: \(numberOfQuestion)"
        }
       
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showQuestion(question: service.startGame())
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
       
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        coder.encode(indexOfQuestion, forKey: "CurrentQuestonIndex")
        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
        indexOfQuestion = coder.decodeInteger(forKey: "CurrentQuestonIndex")
        
    }
    
    
    //MARK: - Handlers
    @objc func tapBtn(_ sender: UIButton) {
        if let v = Variants.init(rawValue: sender.tag),
            service.checkAnswer(answer: v) {
            UIView.transition(with: sender,
                              duration: 1.1,
                              options: .transitionFlipFromTop,
                              animations: {
                                sender.setImage(UIImage(named: "buttonWin"), for: .normal)
            }) { _ in
                self.showAlert(win: true)
            }
            
            
        } else {
            UIView.transition(with: sender,
                              duration: 1.1,
                              options: .transitionFlipFromTop,
                              animations: {
                                sender.setImage(UIImage(named: "buttonLoose"), for: .normal)
            }) { _ in
                self.showAlert(win: false)
            }
            
        }
        
    }
    
    func showQuestion(question: QuestionModel?) {
        guard let question = question else { return }
        
        gameView.answerOne.text = question.answers[.one]
        gameView.one.setImage(UIImage(named: "buttonNormal"), for: .normal)
        gameView.answerTwo.text = question.answers[.two]
        gameView.two.setImage(UIImage(named: "buttonNormal"), for: .normal)
        gameView.answerThree.text = question.answers[.three]
        gameView.three.setImage(UIImage(named: "buttonNormal"), for: .normal)
        gameView.answerFour.text = question.answers[.four]
        gameView.four.setImage(UIImage(named: "buttonNormal"), for: .normal)
        gameView.question.text = question.question
 
        
    }
    
    func showAlert(win: Bool) {
        let ttl: String = win ? "YES !" : "INCORRECT"
        let msg: String = win ? "Next Question" : "GAME OVER"
        
        let alert = UIAlertController(title: ttl, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel) { [weak self] _ in
            if win {
                self?.showQuestion(question: self?.service.nextQuestion())
            } else {
                self?.navigationController?.popToRootViewController(animated: true)
            }
            
        }
        alert.addAction(action)
        
        self.present(alert, animated: true)
        
    }
    

    
    
    
    // MARK: - Navigation
    
    
    
    
}

