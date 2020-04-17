//
//  ScoreCell.swift
//  mllModels
//
//  Created by Nail Safin on 15.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
import PinLayout

class ScoreCell: UITableViewCell {
    
    // MARK: - Propities
    
    let dateOfGame: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.numberOfLines = 0
        $0.lineBreakMode = .byTruncatingMiddle
        return $0
    }(UILabel())
    
    let totalScore: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 20)
        return $0
    }(UILabel())
    
    let descriptionLabel: UILabel = {
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 20)
        $0.minimumScaleFactor = .greatestFiniteMagnitude
        $0.adjustsFontSizeToFitWidth = .init()
        $0.numberOfLines = 2
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.lineBreakMode = .byTruncatingMiddle
        return $0
    }(UILabel())
    
    
    // MARK: - Inits
    
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    backgroundColor = .black
    selectionStyle = .none
    dateOfGame.pin(to: self).vCenter().margin(15).size(CGSize(width: 90, height: 25))
    descriptionLabel.pin(to: self).after(of: dateOfGame).marginLeft(25).size(CGSize(width: 150, height: 25)).vCenter()
    totalScore.pin(to: self).after(of: descriptionLabel).marginLeft(25).size(CGSize(width: 90, height: 25)).vCenter()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Handlers
    
}
