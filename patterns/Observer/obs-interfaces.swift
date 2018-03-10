//
//  obs-interfaces.swift
//  patterns
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol Observable {
    func addSubscriber(s: Subscriber)
    func removeSubscriber(s: Subscriber)
    func notifySubscriber()
}

protocol Subscriber {
    func getImages(pictures: [String])
}
