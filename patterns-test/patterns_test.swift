//
//  patterns_test.swift
//  patterns-test
//
//  Created by Rom Dr on 10.03.2018.
//  Copyright © 2018 Rom Dr. All rights reserved.
//

import XCTest

class patterns_test: XCTestCase {
    
    var manager: NetworkManager!
    
    override func setUp() {
        super.setUp()
        manager = NetworkManager.shared()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        manager = nil
        super.tearDown()
    }
    
    func testSingletonInstence() {
        let otherInstance = NetworkManager.shared()
        let isSimilarInstances = manager === otherInstance
        XCTAssertTrue(isSimilarInstances)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSignletonCountInvocation() {
        XCTAssertEqual(1, manager.instanceCount)
        let other = NetworkManager.shared()
        XCTAssertEqual(1, other.instanceCount)
        XCTAssertEqual(manager.instanceCount, other.instanceCount)
    }
    
}
