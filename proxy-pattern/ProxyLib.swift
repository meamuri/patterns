//
//  ProxyLib.swift
//  proxy-pattern
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

class AuthorEntity {
    let id: Int
    let name: String
    init(id: Int, name: String) {
        self.name = name
        self.id = id
    }
}

protocol DatabaseInterface {
    func getAuthor(id: Int) -> AuthorEntity?
}

class MockDatabase: DatabaseInterface {
    private let mockList: [AuthorEntity] = [
        AuthorEntity(id: 1, name: "Tolstoy"),
        AuthorEntity(id: 2, name: "Gogol"),
        AuthorEntity(id: 3, name: "Blok"),
        AuthorEntity(id: 4, name: "Pasternak"),
    ]
    func getAuthor(id: Int) -> AuthorEntity? {
        return mockList.first { (author) -> Bool in
            author.id == id
        }
    }
}

class CachedDb: DatabaseInterface {
    private let db = MockDatabase()
    private var cache = [Int:AuthorEntity]()
    
    func getAuthor(id: Int) -> AuthorEntity? {
        if let the_val = cache[id] {
            return the_val
        }
        let res = db.getAuthor(id: id)
        if res != nil {
            cache[id] = res
//            cache.updateValue(res, forKey: id)
        }
        return res
    }
}

