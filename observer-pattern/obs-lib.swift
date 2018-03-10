//
//  obs-lib.swift
//  patterns
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

class InstaUser: Subscriber {
    let name: String
    init (username: String) {
        self.name = username
    }
    
    func getImages(pictures: [String]) {
        print("\(name) got some messages:")
        for pic in pictures {
            print("\t pic representation: \(pic)")
        }
        print("that's all \(name)'s pictures")
    }
}

