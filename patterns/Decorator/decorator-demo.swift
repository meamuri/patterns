//
//  decorator-demo.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func printWine(wine: Wine) {
    print(wine.getDescription())
}
func decoratorMain() {
    let redWine = RedWine()
    printWine(wine: redWine)
    
    let wine_5y = FiveYearsWine(wine: redWine)
    let wine_10y = TenYearsWine(wine: redWine)
    
    printWine(wine: wine_5y)
    printWine(wine: wine_10y)
}
