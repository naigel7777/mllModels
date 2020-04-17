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
   
    let mainView: MainView = {
        return $0
    }(MainView())
    
    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        mainView.delegate = self
        configureMainComtroller()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    

    //MARK: - Handlers
    
    func configureMainComtroller() {
        view.backgroundColor = .blue
        
    }
    // MARK: - Navigation


    

}
extension MainViewController: MainViewDelegate {
    
    func startGame() {
        self.navigationController?.pushViewController(GameViewController(), animated: true)
    }
    
    
}

//extension MainViewController: GameViewConrollerDelegate {
//    func didEndGame(WithResult result: Int, allQuestionCount questionCount: Int) {
//        <#code#>
//    }
//
//
//}
