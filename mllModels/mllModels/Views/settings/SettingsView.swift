//
//  SettingsView.swift
//  mllModels
//
//  Created by Nail Safin on 20.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit

class SettingsView: UIView {

    //MARK: Properties
    let settingsView: UIView = {
        $0.backgroundColor = .black
        return $0
    }(UIView())
    let levelType: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 20)
        $0.text = "Gameplay Lavel"
        return $0
    }(UILabel())
    
    let colorType: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 20)
        $0.text = "Color theme"
        return $0
    }(UILabel())
    
    let levelController: UISegmentedControl = {
        $0.selectedSegmentIndex = 1
        $0.tintColor = .brown
        $0.backgroundColor = .darkGray
        
        return $0
    }(UISegmentedControl(items: ["EASY","NORMAL","HARD"]))
    
    let colorController: UISegmentedControl = {
        $0.selectedSegmentIndex = 0
        $0.backgroundColor = .darkGray
        
        return $0
    }(UISegmentedControl(items: ["BLACK","WHITE"]))
    
    // MARK: - Inits
         
     
       override func layoutSubviews() {
           super.layoutSubviews()
          settingsLayouts()
        backgroundColor = .black
       }
       
           // MARK: - Handlers
    
    
    func settingsLayouts() {
        settingsView.pin(to: self).all(pin.safeArea)
        levelType.pin(to: settingsView).topLeft(25).sizeToFit()
        levelController.pin(to: settingsView).topRight(25).sizeToFit()
        colorType.pin(to: settingsView).below(of: levelType).left(25).marginTop(25).sizeToFit()
        colorController.pin(to: settingsView).below(of: levelController).right(25).marginTop(25).sizeToFit()
    }
    
}
