//
//  CustomNavigationAnimation.swift
//  mllModels
//
//  Created by Nail Safin on 20.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit
class CustomNavigationAnimation: NSObject,UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        switch operation {
        case .none: return nil
        case .pop: return AnimateTransitionSettingsPOP()
        case .push: return AnimateTransitionSettingsPUSH()
        }
    }
}

