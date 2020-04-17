//
//  MainView.swift
//  mllModels
//
//  Created by Nail Safin on 11.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit
import PinLayout

protocol MainViewDelegate: class {
     func startGame()
}

class MainView: UIView {
 //MARK: Properties
    
    weak var delegate: MainViewDelegate?
    
    let mainView: UIView = {
        $0.backgroundColor = .blue
        return $0
    }(UIView())
   
    let scoreView: ScoreView = {
           $0.backgroundColor = .black
           return $0
       }(ScoreView())
    
    let startButton: UIButton = {
        $0.setImage(UIImage(named: "start"), for: .normal)
        $0.tintColor = .blue
     //   $0.setTitle("sdgsdgsfdg", for: .normal)
        
        
        
        return $0
    }(UIButton())
    
    let resultButton: UIButton = {
        $0.setImage(UIImage(named: "result"), for: .normal)
        $0.tintColor = .blue
        $0.setTitle("Result", for: .normal)
        
        return $0
    }(UIButton())
    
    let exitFromResultButton: UIButton = {
        $0.setImage(UIImage(named: "exit"), for: .normal)
        $0.tintColor = .blue
        $0.setTitle("back", for: .normal)
        
        return $0
    }(UIButton())
    
    let gameIcon: UIImageView = {
        $0.contentMode = .scaleAspectFit
        $0.clipsToBounds = true
        $0.backgroundColor = .clear
     
        $0.image = UIImage(named: "game")
        
        return $0
    }(UIImageView())
    
    let topLayer: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.backgroundColor = .clear
     
        $0.image = UIImage(named: "top")
        
        return $0
    }(UIImageView())
    
    let bottomLayer: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.backgroundColor = .clear
     
        $0.image = UIImage(named: "bottom")
        
        return $0
    }(UIImageView())
    
//    let topLayer: UIView = {
//        $0.backgroundColor = .red
//
//        return $0
//    }(UIView())
    
//    let bottomLayer: UIView = {
//        $0.backgroundColor = .green
//        return $0
//    }(UIView())
    
    // MARK: Init

    override func layoutSubviews() {
        super.layoutSubviews()
        mainLayouts()
    }

    //MARK: - Handlers
    
    func mainLayouts() {
        let buttonHeight: CGFloat = 90
        self.backgroundColor = .black
        mainView.pin(to: self).all(pin.safeArea)
        scoreView.pin(to:mainView).all()
        scoreView.initView()
        exitFromResultButton.pin(to: scoreView).size(CGSize(width: 90, height: 30)).topLeft(10)
        
        bottomLayer.pin(to: mainView).horizontally().top(33%).height(67%)
        startButton.pin(to: mainView).size(CGSize(width: 150, height: buttonHeight)).vCenter().hCenter()
        resultButton.pin(to: mainView).size(CGSize(width: 150, height: buttonHeight)).below(of: startButton, aligned: .center)
        
        topLayer.pin(to: mainView).horizontally().top().height(33%)
        gameIcon.pin(to: topLayer).size(CGSize(width: 200, height: 200)).bottomCenter()
        
        
        startButton.addTarget(self, action: #selector(startGame), for: .touchUpInside)
        resultButton.addTarget(self, action: #selector(getResult), for: .touchUpInside)
        exitFromResultButton.addTarget(self, action: #selector(exitFromScore), for: .touchUpInside)
        
        
    }
    
    @objc func startGame() {
        self.delegate?.startGame()
     
    }
    
    @objc func getResult() {
        scoreView.result = ResultRepository().getAllResults()
        scoreView.tableview.reloadData()
        animateViewToStartGame(didFinish: false)

        
        
    }
    
    @objc func exitFromScore() {
    
        animateViewToStartGame(didFinish: true)
        
    }
    

    
    func animateViewToStartGame(didFinish: Bool) {
        if didFinish {
            UIView.animate(withDuration: 1.1,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.topLayer.pin.top()
                            self.bottomLayer.pin.top(33%)
                            self.startButton.pin.vCenter().hCenter()
                            self.resultButton.pin.below(of: self.startButton, aligned: .center)

            })

        } else {

            UIView.animate(withDuration: 1.1,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.topLayer.pin.bottom(100%)
                            self.bottomLayer.pin.top(100%)
                            self.startButton.pin.top(120%)
                            self.resultButton.pin.below(of: self.startButton, aligned: .center)

            }) { _ in

            }
        }

    }
    
}
