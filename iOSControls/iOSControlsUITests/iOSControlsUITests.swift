//
//  iOSControlsUITests.swift
//  iOSControlsUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest

class iOSControlsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        
        app.textFields["textField01"].tap()
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["s"].tap()
        app.keys["t"].tap()
        app.keyboards.buttons["Return"].tap()
        
        app.sliders["50%"].swipeRight()
        app.segmentedControls.buttons["Omega"].tap()
        app.buttons["Blue"].tap()
        app.alerts["Blue"].buttons["OK"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLabelCopiesTextField() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        
        app.textFields["textField01"].tap()
        app.textFields["textField01"].typeText("Kelvin")
        app.keyboards.buttons["Return"].tap()
        
        XCTAssertTrue(app.staticTexts["Label01"].label == "Kelvin")
        
    }

    func testLabelCopiesTextField2() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        
        app.textFields["textField02"].tap()
        app.keyboards.buttons["shift"].tap()
        app.keys["R"].tap()
        app.keys["e"].tap()
        app.keys["i"].tap()
        app.keys["d"].tap()
        app.keyboards.buttons["Return"].tap()
        
        XCTAssertTrue(app.staticTexts["Label02"].label == "Reid")
        
    }
    
    func testSliderControlsProgress() {
        let app = XCUIApplication()
        app.sliders["Completion"].adjust(toNormalizedSliderPosition: 1)
        
        guard let completion = app.progressIndicators.element.value as? String else {
            XCTFail()
            return
        }
        
        XCTAssertTrue(completion == "0%")
    }
    
    func testButtonsShowAlerts() {
        let app = XCUIApplication()
        
        app.segmentedControls.buttons["Omega"].tap()
        app.segmentedControls.buttons["Alpha"].tap()
        
        app.buttons["Blue"].tap()
        XCTAssertTrue(app.alerts["Blue"].waitForExistence(timeout: 1))
        app.alerts["Blue"].buttons["OK"].tap()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
