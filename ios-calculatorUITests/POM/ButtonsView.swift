//
//  ButtonsView.swift
//  ios-calculatorUITests
//
//  Created by Gennadii Kiryushatov on 8/17/20.
//  Copyright © 2020 enjelhutasoit. All rights reserved.
//

import Foundation
import XCTest

let app = XCUIApplication()

struct ButtonsView {
    
    // buttons
    let zeroButton = app.buttons["0"]
    let oneButton = app.buttons["1"]
    let twoButton = app.buttons["2"]
    let threeButton = app.buttons["3"]
    let fourButton = app.buttons["4"]
    let fiveButton = app.buttons["5"]
    let sixButton = app.buttons["6"]
    let sevenButton = app.buttons["7"]
    let eightButton = app.buttons["8"]
    let nineButton = app.buttons["9"]
    let cButton = app.buttons["C"]
    let plusMinusButton = app.buttons["+/-"]
    let percentButton = app.buttons["%"]
    let divideButton = app.buttons["/"]
    let multiplyButton = app.buttons["x"]
    let minusButton = app.buttons["-"]
    let additionButton = app.buttons["+"]
    let decimalPointButton = app.buttons[","]
    let equalsButton = app.buttons["="]
    
}
