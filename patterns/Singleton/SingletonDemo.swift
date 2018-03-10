//
//  SingletonDemo.swift
//  patterns
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

func singleton_main() {
    let m = NetworkManager.shared()
    print(m.baseURL)
}
