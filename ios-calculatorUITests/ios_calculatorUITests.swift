//
//  ios_calculatorUITests.swift
//  ios-calculatorUITests
//
//  Created by Gennadii Kiryushatov on 8/14/20.
//  Copyright © 2020 enjelhutasoit. All rights reserved.
//

import XCTest

class ios_calculatorUITests: XCTestCase {

    let app = XCUIApplication()
    let buttonsView = ButtonsView()
    let resultView = ResultView()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
        
        // If device is iPad - rotate to the landscape mode
        if Device.iPad {
            XCUIDevice.shared.orientation = .landscapeLeft
        }

    }

    override func tearDownWithError() throws {

    }
    
    func waitFor(element: XCUIElement, timeout: TimeInterval = 60, file: StaticString = #file, line: UInt = #line) {
        let startTime = NSDate.timeIntervalSinceReferenceDate
        while true {
            if NSDate.timeIntervalSinceReferenceDate - startTime > timeout {
                XCTFail("\(element) isn't present on the screen after \(timeout) seconds", file: file, line: line)
            }
            if element.exists {
                break
            }
            usleep(50)
        }
    }
    
    func waitForAndTapOn(element: XCUIElement, timeout: TimeInterval = 15, file: StaticString = #file, line: UInt = #line) {
        let startTime = NSDate.timeIntervalSinceReferenceDate
        while true {
            if NSDate.timeIntervalSinceReferenceDate - startTime > timeout {
                XCTFail("\(element) isn't present on the screen after \(timeout) seconds", file: file, line: line)
            }
            if element.exists {
                element.tap()
                break
            }
            usleep(50)
        }
    }
    
    func waitForOneOf(elements: [XCUIElement], timeout: TimeInterval = 15, file: StaticString = #file, line: UInt = #line) -> Bool {
        let startTime = NSDate.timeIntervalSinceReferenceDate
        while true {
            if NSDate.timeIntervalSinceReferenceDate - startTime > timeout {
                XCTFail("\(elements) aren't present on the screen after \(timeout) seconds", file: file, line: line)
                return false
            }
            for element in elements {
                if element.exists {
                    return true
                }
            }
            usleep(50)
        }
    }
    
    func givenIOnMainView() {
        XCTContext.runActivity(named: "Given I on Main View") {_ in
            // Checking that in initial state 0 is shown
            waitFor(element: resultView.zeroStaticText)
            // Checking that all buttons are present
            waitFor(element: buttonsView.zeroButton)
            waitFor(element: buttonsView.oneButton)
            waitFor(element: buttonsView.twoButton)
            waitFor(element: buttonsView.threeButton)
            waitFor(element: buttonsView.fourButton)
            waitFor(element: buttonsView.fiveButton)
            waitFor(element: buttonsView.sixButton)
            waitFor(element: buttonsView.sevenButton)
            waitFor(element: buttonsView.eightButton)
            waitFor(element: buttonsView.nineButton)
            waitFor(element: buttonsView.cButton)
            waitFor(element: buttonsView.plusMinusButton)
            waitFor(element: buttonsView.percentButton)
            waitFor(element: buttonsView.divideButton)
            waitFor(element: buttonsView.multiplyButton)
            waitFor(element: buttonsView.minusButton)
            waitFor(element: buttonsView.additionButton)
            waitFor(element: buttonsView.decimalPointButton)
            waitFor(element: buttonsView.equalsButton)
        }
    }
    
    func whenITapOn(_ element: XCUIElement) {
        XCTContext.runActivity(named: "When I tap on \(element)") {_ in
            waitForAndTapOn(element: element)
        }
    }
    
    func thenShouldBeShown(_ element: XCUIElement) {
        XCTContext.runActivity(named: "Then should be shown \(element)") {_ in
            waitFor(element: element)
        }
    }

}

struct Device {
    
    static let iPhone   = UIDevice.current.userInterfaceIdiom == .phone
    static let iPad     = UIDevice.current.userInterfaceIdiom == .pad

}
