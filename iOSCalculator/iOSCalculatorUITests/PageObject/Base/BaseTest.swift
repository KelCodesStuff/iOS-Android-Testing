//
//  BaseTest.swift
//  iOSCalculatorUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest

class BaseTest: XCTestCase {
    private let app = XCUIApplication()
    
    let firstNumber = Double(arc4random_uniform(1000))
    let secondNumber = Double(arc4random_uniform(1000))

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .keepAlways
        add(fullScreenshotAttachment)
        app.terminate()
    }
}
