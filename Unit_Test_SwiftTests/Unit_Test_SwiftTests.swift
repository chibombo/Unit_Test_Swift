//
//  Unit_Test_SwiftTests.swift
//  Unit_Test_SwiftTests
//
//  Created by Luis Genaro Arvizu Vega on 11/21/18.
//  Copyright © 2018 Profuturo. All rights reserved.
//

import XCTest
@testable import Unit_Test_Swift

class Unit_Test_SwiftTests: XCTestCase {

    var viewController: ViewController!
    override func setUp() {
        viewController = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewController = nil
    }

    func testAddFunction(){
        //1.
        let aResult = 5.0
        //2.
        let result = viewController.add(numberOne: 2.5, numberTwo: 2.5)
        //3
        XCTAssertEqual(aResult, result, #function)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
