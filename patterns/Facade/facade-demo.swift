//
//  f-demo.swift
//  patterns
//
//  Created by Rom Dr on 11.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func facade_main() {
    let facade = TravelSystemFacade()
    facade.travelTo(aLocation: "Лондон")
}
