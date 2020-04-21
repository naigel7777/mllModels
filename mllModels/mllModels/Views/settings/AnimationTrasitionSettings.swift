//
//  AnimationTrasitionSettings.swift
//  mllModels
//
//  Created by Nail Safin on 20.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit
class AnimateTransitionSettings: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        2.0
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
       guard let source = transitionContext.viewController(forKey: .from),
        let to = transitionContext.viewController(forKey: .to) else { return }
        transitionContext.containerView.addSubview(to.view)
        
        to.view.frame = CGRect(x: 0,
                               y: transitionContext.containerView.frame.height,
                               width: source.view.frame.width,
                               height: source.view.frame.height)
       
         UIView.animate(withDuration: transitionDuration(using: transitionContext),
                        delay: 0,
                        animations: {
                         
                     source.view.frame = CGRect(x: 0,
                                                y: -source.view.frame.height,
                                                width: source.view.frame.width,
                                                height: source.view.frame.height)
                        
                     to.view.frame = CGRect(x: 0,
                                            y: 0,
                                            width: transitionContext.containerView.frame.width,
                                            height: transitionContext.containerView.frame.height)
                    
         })
         {isCompleted in
             transitionContext.completeTransition(isCompleted)
         }
        
        
        
        
    }
    
    
}

class AnimateTransitionSettingsPOP: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        1.1
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
       guard let source = transitionContext.viewController(forKey: .from),
        let to = transitionContext.viewController(forKey: .to) else { return }
        transitionContext.containerView.addSubview(to.view)
        
        to.view.frame = CGRect(x: 0,
                               y: -transitionContext.containerView.frame.height,
                               width: source.view.frame.width,
                               height: source.view.frame.height)
       
         UIView.animate(withDuration: transitionDuration(using: transitionContext),
                        delay: 0,
                        usingSpringWithDamping: 0.5,
                        initialSpringVelocity: 0,
                        animations: {
                         
                     source.view.frame = CGRect(x: 0,
                                                y: source.view.frame.height,
                                                width: source.view.frame.width,
                                                height: source.view.frame.height)
                        
                     to.view.frame = CGRect(x: 0,
                                            y: 0,
                                            width: transitionContext.containerView.frame.width,
                                            height: transitionContext.containerView.frame.height)
                    
         })
         {isCompleted in
             transitionContext.completeTransition(isCompleted)
         }
        
        
        
        
    }
    
    
}

class AnimateTransitionSettingsPUSH: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        1.1
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
       guard let source = transitionContext.viewController(forKey: .from),
        let to = transitionContext.viewController(forKey: .to) else { return }
        transitionContext.containerView.addSubview(to.view)
        
        to.view.frame = CGRect(x: 0,
                               y: transitionContext.containerView.frame.height,
                               width: source.view.frame.width,
                               height: source.view.frame.height)
       
         UIView.animate(withDuration: transitionDuration(using: transitionContext),
                        delay: 0,
                        usingSpringWithDamping: 0.5,
                        initialSpringVelocity: 0,
                        animations: {
                         
                     source.view.frame = CGRect(x: 0,
                                                y: -source.view.frame.height,
                                                width: source.view.frame.width,
                                                height: source.view.frame.height)
                        
                     to.view.frame = CGRect(x: 0,
                                            y: 0,
                                            width: transitionContext.containerView.frame.width,
                                            height: transitionContext.containerView.frame.height)
                    
         })
         {isCompleted in
             transitionContext.completeTransition(isCompleted)
         }
        
        
        
        
    }
    
    
}
