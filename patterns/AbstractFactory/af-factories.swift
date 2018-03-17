//
//  af-factories.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

protocol Factory {
    func produceSedan() -> Sedan
    func produceSUV() -> SUV
}

class FactoryA: Factory {
    func produceSedan() -> Sedan{
        return CompactSedan()
    }
    
    func produceSUV() -> SUV {
        return CompactSUV()
    }
}

class FactoryB: Factory {
    func produceSedan() -> Sedan {
        return FullSizeSedan()
    }
    
    func produceSUV() -> SUV {
        return FullSizeSUV()
    }
}
