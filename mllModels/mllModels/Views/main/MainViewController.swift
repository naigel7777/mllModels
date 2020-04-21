//
//  MainViewController.swift
//  mllModels
//
//  Created by Nail Safin on 10.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
      //MARK: Properties
 
    let animator = CustomNavigationAnimation()
    let mainView: MainView = {
        return $0
    }(MainView())
    var diff : Difficulty = .medium
    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        mainView.delegate = self
   
        self.navigationController?.setNavigationBarHidden(true, animated: false)
       
    }
    

    //MARK: - Handlers
    

    // MARK: - Navigation


    

}
extension MainViewController: MainViewDelegate {
    func getSettings() {
        let settingVC = SettingsViewController()
        settingVC.selectDifficulty = diff
        self.navigationController?.delegate = animator
        self.navigationController?.pushViewController(settingVC, animated: true)
       
    }
    
    
    func startGame() {
        let gameVC = GameViewController(diff: diff)
        self.navigationController?.delegate = nil
        self.navigationController?.pushViewController(gameVC, animated: true)
        
        
    }
    
    
}



