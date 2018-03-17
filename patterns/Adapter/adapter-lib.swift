//
//  adapter-lib.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol BirdProtocol {
    func sing()
    func fly()
}

class Bird: BirdProtocol {
    func sing() {
        print("Ку-ка-ре-ку")
    }
    
    func fly() {
        print("Я лечу-у-у-у!")
    }
}

class Raven {
    func flySearchAndDestroy() {
        print("Цель обнаружена! Захожу справа от люсты!")
    }
    
    func vioce() {
        print("Кар-кар!")
    }
}

class RavenAdapter: BirdProtocol {
    private let raven: Raven
    
    init(adaptee: Raven) {
        self.raven = adaptee
    }
    
    func sing() {
        raven.vioce()
    }
    
    func fly() {
        raven.flySearchAndDestroy()
    }
}
