//
//  XCUIElement.swift
//  iOSCalculatorUITests
//
//  Created by Kelvin Reid on 10/1/20.
//

import XCTest
import Foundation

extension XCUIElement {
    var details: String {
        let regex = try! NSRegularExpression(pattern: "0x\\S+", options: .caseInsensitive)
        return regex.stringByReplacingMatches(in: debugDescription, options: [], range: NSMakeRange(0, debugDescription.count), withTemplate: "")
    }
}
