//
//  NetworkSettings.swift
//  patterns
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import Foundation

class NetworkManager {
    
    // Properties
    
    private static var sharedNetworkManager: NetworkManager = {
        let networkManager = NetworkManager(baseURL: "http://localhost:8080/")
        networkManager.instanceCount += 1
        return networkManager
    }()
    
    var instanceCount = 0
    let baseURL: String
    
    // Initialization
    
    private init(baseURL: String) {
        self.baseURL = baseURL
    }
    
    // Accessors
    
    class func shared() -> NetworkManager {
        return sharedNetworkManager
    }
    
}
