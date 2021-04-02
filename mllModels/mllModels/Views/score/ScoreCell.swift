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
        $0.numberOfLines = 2
        $0.lineBreakMode = .byWordWrapping
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
        $0.lineBreakMode = .byWordWrapping
        return $0
    }(UILabel())
    
    
    // MARK: - Inits
    
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    backgroundColor = .black
    selectionStyle = .none
    
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Handlers
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let mv = self.contentView
        dateOfGame.pin(to: mv).vCenter().left(25).width(100).sizeToFit(.width)
        totalScore.pin(to: mv).right(25).vCenter().height(25).width(45)
        descriptionLabel.pin(to: mv).horizontallyBetween(dateOfGame, and: totalScore).margin(10).vCenter().sizeToFit(.width)
        
    }
}
