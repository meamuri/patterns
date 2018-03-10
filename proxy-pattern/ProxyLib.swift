//
//  ProxyLib.swift
//  proxy-pattern
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol DatabaseInterface {
    func getAuthor(id: Int) -> String
}

class MockDatabase: DatabaseInterface {
    private let mockList = ["Tolstoy, Gogol", "Blok", "Pasternak"]
    func getAuthor(id: Int) -> String {
        return mockList[id]
    }
}

class CachedDb: DatabaseInterface {
    private let db = MockDatabase()
    private let cache = [Int:String]()
    
    func getAuthor(id: Int) -> String {
        if let the_val = cache[id] {
            return the_val
        }
        let res = db.getAuthor(id)
        cache[id] = res
        return res
    }
}

