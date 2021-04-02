//
//  GameView.swift
//  mllModels
//
//  Created by Nail Safin on 12.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit

class GameView: UIView {
    
    // MARK: - Propities
    
    let one: UIButton = {
        $0.setImage(UIImage(named: "buttonNormal"), for: .normal)
        $0.tintColor = .blue
        $0.setTitle("Result", for: .normal)
        
        $0.tag = Variants.one.rawValue
        return $0
    }(UIButton())
    let two: UIButton = {
        $0.setImage(UIImage(named: "buttonNormal"), for: .normal)
        $0.tintColor = .blue
        $0.setTitle("Result", for: .normal)
        $0.tag = Variants.two.rawValue
        return $0
    }(UIButton())
    let three: UIButton = {
        $0.setImage(UIImage(named: "buttonNormal"), for: .normal)
        $0.tintColor = .blue
        $0.setTitle("Result", for: .normal)
        $0.tag = Variants.three.rawValue
        return $0
    }(UIButton())
    let four: UIButton = {
        $0.setImage(UIImage(named: "buttonNormal"), for: .normal)
        $0.tintColor = .blue
        $0.setTitle("Result", for: .normal)
        $0.tag = Variants.four.rawValue
        return $0
    }(UIButton())
    
    let question: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 25)
        $0.text = "TEST BIG MASSIVE QUESTION FOR REUSE IN GAME PROCESS OR TRY FIXING LAYOTS"
        $0.numberOfLines = 0
        $0.textAlignment = .center
        $0.lineBreakMode = .byWordWrapping
        $0.sizeToFit()
        
        return $0
    }(UILabel())
    
    let numberQuestion: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 25)
        $0.text = "Question number # 1"
        $0.numberOfLines = 0
        $0.lineBreakMode = .byWordWrapping
        $0.textAlignment = .center
        $0.sizeToFit()
        
        return $0
    }(UILabel())
    
    let answerOne: UILabel = {
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.textAlignment = .center
        $0.text = "BUTTON ONE"
        return $0
    }(UILabel())
    
    let answerTwo: UILabel = {
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.textAlignment = .center
        $0.text = "BUTTON TWO"
        return $0
    }(UILabel())
    
    let answerThree: UILabel = {
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.textAlignment = .center
        $0.text = "BUTTON THREE"
        return $0
    }(UILabel())
    
    let answerFour: UILabel = {
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.textAlignment = .center
        $0.text = "BUTTON FOUR"
        return $0
    }(UILabel())
    
    // MARK: - Inits
      
  
    override func layoutSubviews() {
        super.layoutSubviews()
        gameLayouts()
    }
    
        // MARK: - Handlers
    
    func gameLayouts(){
   
        self.backgroundColor = .darkGray
        one.pin(to: self).bottom(120).left(10).size(CGSize(width: self.frame.width/2 - 10, height: 120))
        two.pin(to: self).bottom(120).right(10).size(CGSize(width: self.frame.width/2 - 10, height: 120))
        three.pin(to: self).bottomLeft(10).size(CGSize(width: self.frame.width/2 - 10, height: 120))
        four.pin(to: self).bottomRight(10).size(CGSize(width: self.frame.width/2 - 10, height: 120))
        
        numberQuestion.pin(to: self).top(safeAreaInsets).hCenter().size(CGSize(width: self.frame.width - 20, height: 100))
        question.pin(to: self).top(150).hCenter().size(CGSize(width: self.frame.width - 100, height: 400))
        
        answerOne.pin(to: one).all(20)
        answerTwo.pin(to: two).all(20)
        answerThree.pin(to: three).all(20)
        answerFour.pin(to: four).all(20)
        
        
    }
   
    
}
