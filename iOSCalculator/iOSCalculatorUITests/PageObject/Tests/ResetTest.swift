//
//  ResetTest.swift
//  iOSCalculatorUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest

class ResetTest: BaseTest {
    func testReset() {
        let calculator = Calculator()
                .enter(firstNumber)
                .reset()
        XCTAssertEqual(0.0, calculator.numberOnScreen)
    }
}
