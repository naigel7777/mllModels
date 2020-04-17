//
//  QuestionModel.swift
//  mllModels
//
//  Created by Nail Safin on 10.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
enum Variants: Int {
    case one = 1
    case two
    case three
    case four
}
struct QuestionModel {
    let id: Int
    let question: String
    let answers: [Variants: String]
    let rightAnswer: Variants
    
    
}
