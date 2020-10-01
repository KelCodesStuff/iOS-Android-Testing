//
//  MultiplyTest.swift
//  iOSCalculatorUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest

class MultiplyTest: BaseTest {
    private var calculator: Calculator? = nil
    
    func testMultiply() {
        let calculator = Calculator()
                .enter(firstNumber)
                .multiply(byNumber: secondNumber)

        XCTAssertEqual(firstNumber * secondNumber, calculator.numberOnScreen)
    }
}
