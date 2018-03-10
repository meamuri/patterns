//
//  observer-lib.swift
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

class SocialNetwork : Observable {
    private var subscribers: [Subscriber] = []
    private var images: [String] = []
    
    func addPictures(pics: [String]){
        images = pics
        notifySubscriber()
    }
    
    func addSubscriber(s: Subscriber) {
        subscribers.append(s)
//        subscribers.append(newElement: s)
    }
    
    func removeSubscriber(s: Subscriber) {
//        if let index = subscribers.index
        // subscribers = subscribers.filter {$0 !== s }
    }
    
    func notifySubscriber() {
        subscribers.forEach { (s) in
            s.getImages(pictures: images)
        }
    }
}
