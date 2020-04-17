//
//  ViewExt+Pin.swift
//  mllModels
//
//  Created by Nail Safin on 11.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import UIKit
import PinLayout

extension UIView {
    public func pin(to addView: UIView) -> PinLayout<UIView> {
        if !addView.subviews.contains(self) {
            addView.addSubview(self)
        }
        return self.pin
    }
}
