//
//  ScoreView.swift
//  mllModels
//
//  Created by Nail Safin on 15.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation
import UIKit
import PinLayout

class ScoreView: UIView {
    // MARK: - Propities
    
    var tableview: UITableView = UITableView()
    
    var result: [Result] = []
    // MARK: - Inits

    // MARK: - Handlers
    
    func initView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(ScoreCell.self, forCellReuseIdentifier: "ScoreCell")
        tableview.backgroundColor = .black
        tableview.separatorStyle = .none
        tableview.rowHeight = 90
        tableview.pin(to: self).all(pin.safeArea).marginTop(50)
    }
    
    func toDateString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "HH:mm dd-MM-yyyy"
        return dateFormatter.string(from: date)
        
    }
    
}
extension ScoreView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScoreCell", for: indexPath) as! ScoreCell
        
        cell.descriptionLabel.text = "Максимальное количество ответов"
        cell.dateOfGame.text = toDateString(date: result[indexPath.row].date)
        cell.totalScore.text = String(result[indexPath.row].resultValue)
        
        return cell
    }
    
    
}
