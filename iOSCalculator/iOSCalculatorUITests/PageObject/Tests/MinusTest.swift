//
//  MinusTest.swift
//  iOSCalculatorUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest

class MinusTest: BaseTest {
    
    func testMinus() {
        let calculator = Calculator()
                .enter(firstNumber)
                .minus(secondNumber)

        XCTAssertEqual(firstNumber - secondNumber, calculator.numberOnScreen)
    }

    func testMinusZero() {
        let calculator = Calculator()
                .minus(firstNumber)

        XCTAssertEqual(-firstNumber, calculator.numberOnScreen)
    }
}
