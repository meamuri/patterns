//
//  af-demo.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func abstractFactoryMain() {
    let factoryA = FactoryA()
    let compactSedan = factoryA.produceSedan()
    let compactSUV = factoryA.produceSUV()
    compactSedan.drive()
    compactSUV.drive()
    
    let factoryB = FactoryB()
    let fullsizeSedan = factoryB.produceSedan()
    let fullsizeSUV = factoryB.produceSUV()
    fullsizeSedan.drive()
    fullsizeSUV.drive()
}
