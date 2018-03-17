//
//  Car.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol Car {
    func launchMe()
}

class SportCar: Car {
    func launchMe() {
        print("rrrr, im very fast expencive car!")
    }
}

class ChipCar : Car {
    func launchMe() {
        print("ffff, im very cute little car!")
    }
}
