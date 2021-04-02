//
//  ProtocolGameService.swift
//  mllModels
//
//  Created by Nail Safin on 18.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation

protocol ProtocolGameService: class {
    func startGame() -> QuestionModel?
    func checkAnswer(answer: Variants) -> Bool
    func nextQuestion() -> QuestionModel?
    var numberOfQuestion: Observable<Int> {get set}
}
