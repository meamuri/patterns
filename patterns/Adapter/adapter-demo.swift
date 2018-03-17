//
//  facade-demo.swift
//  patterns
//
//  Created by Rom Dr on 17.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func makeTheBerdTest(aBird: BirdProtocol) {
    aBird.fly()
    aBird.sing()
}

func adapterMain() {
    let simpleBird = Bird()
    let simpleRaven = Raven()
    
    let ravenAdapter = RavenAdapter(adaptee: simpleRaven)
    
    makeTheBerdTest(aBird: simpleBird)
    print(" ---- ")
    makeTheBerdTest(aBird: ravenAdapter)
}
