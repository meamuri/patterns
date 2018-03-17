//
//  decorator-lib.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol Wine {
    func getCost() -> Double
    func getDescription() -> String
}

class RedWine: Wine {
    func getCost() -> Double {
        return 500.0
    }
    func getDescription() -> String {
        return "perfect Red Wine"
    }
}

// decorators:

class FiveYearsWine: Wine {
    let wine: Wine
    init (wine: Wine) {
        self.wine = wine
    }
    
    func getCost() -> Double {
        return wine.getCost() + 500
    }
    
    func getDescription() -> String {
        return "\(wine.getDescription()), 5 year"
    }
}

class TenYearsWine: Wine {
    let wine: Wine
    init (wine: Wine) {
        self.wine = wine
    }
    
    func getCost() -> Double {
        return wine.getCost() + 1500
    }
    
    func getDescription() -> String {
        return "\(wine.getDescription()), 10 year"
    }
}
