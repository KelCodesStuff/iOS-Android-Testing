//
//  BaseScreen.swift
//  iOSCalculatorUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest

protocol BaseScreen {
}

extension BaseScreen {
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery {
        return app.descendants(matching: type)
    }

    func step(_ name: String, block: (XCTActivity) -> Void) {
        XCTContext.runActivity(named: name, block: block)
    }

    var app: XCUIApplication {
        return XCUIApplication()
    }
}
