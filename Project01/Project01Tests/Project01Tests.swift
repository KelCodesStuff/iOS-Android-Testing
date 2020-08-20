//
//  Project01Tests.swift
//  Project01Tests
//
//  Created by Kelvin Reid on 8/17/20.
//  Copyright © 2020 Kelvin Reid. All rights reserved.
//

import XCTest
@testable import Project01

class Project01Tests: XCTestCase {
    
    override func setUp() {
           super.setUp()
           // Put setup code here. This method is called before the invocation of each test method in the class.
       }
       
       override func tearDown() {
           // Put teardown code here. This method is called after the invocation of each test method in the class.
           super.tearDown()
       }
       
       // checks allWords has 0 items inside
       func testAllWordsLoaded() {
           let playData = PlayData()
           XCTAssertEqual(playData.allWords.count, 18440, "allWords was not 18440")
       }
    
    func testWordCountsAreCorrect() {
        let playData = PlayData()
        XCTAssertEqual(playData.wordCounts["Fortune"], 27, "Fortune does not appear 27 times")
        XCTAssertEqual(playData.wordCounts["grace"], 192, "Grace does not appear 192 times")
        XCTAssertEqual(playData.wordCounts["anon"], 45, "Anon does not appear 45 times")
    }
/*
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
*/
}
