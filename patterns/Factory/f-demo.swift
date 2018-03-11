//
//  f-demo.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func buildAndAcselerateCar(m: Manufacture) {
    m.produceCar().launchMe()
}

func f_main() {
    buildAndAcselerateCar(m: ExclusiveManufacture())
    buildAndAcselerateCar(m: MassMarketManufacture())
}
