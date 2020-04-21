//
//  SettingsViewController.swift
//  mllModels
//
//  Created by Nail Safin on 20.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

        // MARK: - Propities
    
   let settingsView: SettingsView = {
        return $0
    }(SettingsView())
    
    var transInteraction: UIPercentDrivenInteractiveTransition?
    
    var selectDifficulty: Difficulty {
        get {
            switch settingsView.levelController.selectedSegmentIndex {
            case 0: return .easy
            case 1: return .medium
            case 2: return .hard
            default: return .medium
            }
            
        }
        set {
            switch newValue {
                
            case .easy:  settingsView.levelController.selectedSegmentIndex = 0
            case .medium:  settingsView.levelController.selectedSegmentIndex = 1
            case .hard: settingsView.levelController.selectedSegmentIndex = 2

            }
        }
    }
        // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        view = settingsView
        addGestureRecogniser()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
        let pt = navigationController?.viewControllers.filter { $0 is MainViewController }.first
        if let lt = pt as? MainViewController {
            lt.diff = self.selectDifficulty
        }
       
    }
        // MARK: - Handlers
    
    //MARK: ANIMATION edge recognise 50%
    func addGestureRecogniser() {
        let edgeRecognizer = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(edgeRecognize(_:)))
        edgeRecognizer.edges = .left
        
        view.addGestureRecognizer(edgeRecognizer)
    }
    @objc func edgeRecognize(_ gesture: UIScreenEdgePanGestureRecognizer)
    {
        let translation = gesture.translation(in: gesture.view)
        let percentComplete = translation.x / gesture.view!.bounds.size.width
        switch gesture.state {
        case .began: transInteraction = UIPercentDrivenInteractiveTransition()
        case .changed: transInteraction?.update(percentComplete)
        case .ended: let velocity = gesture.velocity(in: gesture.view)
        if velocity.y > 0 || percentComplete > 0.3
        {
            transInteraction?.finish()
        } else {
            transInteraction?.cancel()
        }
        transInteraction = nil
        default: break
        }
    }
    func navigationController(_ navigationController: UINavigationController,
                              interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return transInteraction
    }
        // MARK: - Navigation



}

