//
//  GameViewController.swift
//  mllModels
//
//  Created by Nail Safin on 10.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit

protocol GameViewConrollerDelegate: class {
    func didEndGame (WithResult result:Int, allQuestionCount questionCount: Int)
}

class GameViewController: UIViewController {
    
    //MARK: Properties
    let gameView: GameView = {
          return $0
      }(GameView())
    
   let service = GameService()
    var indexOfQuestion = 0
    var currentQuestion: QuestionModel?
    var allQuestions = [QuestionModel]()
    
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
       view = gameView
        gameView.one.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        gameView.two.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        gameView.three.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        gameView.four.addTarget(self, action: #selector(tapBtn(_:)), for: .touchUpInside)
        navigationController?.setNavigationBarHidden(false, animated: true)
       
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        service.startGame(vc: self)
        
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
        if let v = Variants.init(rawValue: sender.tag) {
            service.checkAnswer(answer: v, vc: self, sender: sender)
        }
            
    }
    

    

    
    
    
    // MARK: - Navigation
    
    
    
    
}

