//
//  patterns_test.swift
//  patterns-test
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import XCTest

class patterns_test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSingleton() {
        let isSimilarInstances = NetworkManager.shared() === NetworkManager.shared()
        XCTAssertTrue(isSimilarInstances)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
