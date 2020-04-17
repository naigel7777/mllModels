//
//  ResultRepository.swift
//  mllModels
//
//  Created by Nail Safin on 15.04.2020.
//  Copyright © 2020 Nail Safin. All rights reserved.
//

import Foundation

struct Result: Codable {
    static var zero = Result(date: Date(), resultValue: 0) 
    var date = Date()
    var resultValue = Int()
    
}

class ResultRepository {
    //MARK: Propirties
    
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    let key = "results"
    
    //MARK: Handlers
    
    func save (results: [Result]) {
        do{
            let data = try self.encoder.encode(results)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func getAllResults() -> [Result] {
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        do {
            return try self.decoder.decode([Result].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
    

    
    
}
