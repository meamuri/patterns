//
//  ProxyAp.swift
//  proxy-pattern
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func proxy_main() {
    let the_db = CachedDb()
    printAuthorInfo(db: the_db, id: 1)
    printAuthorInfo(db: the_db, id: 2)
    printAuthorInfo(db: the_db, id: 3)
    printAuthorInfo(db: the_db, id: 4)
    printAuthorInfo(db: the_db, id: 5)
}

private func printAuthorInfo(db: DatabaseInterface, id: Int) {
    let author = db.getAuthor(id: id)
    if (author == nil) {
        print("key \(id) is not valid")
        return
    }
    let msg = "author is \(author!.name)"
    print(msg)
}
