//
//  manufacture.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol Manufacture {
    func produceCar() -> Car
}

class ExclusiveManufacture : Manufacture {
    func produceCar() -> Car {
        return SportCar()
    }
}

class MassMarketManufacture : Manufacture {
    func produceCar() -> Car {
        return ChipCar()
    }
}
