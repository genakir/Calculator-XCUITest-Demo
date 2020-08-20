//
//  UITests.swift
//  ios-calculatorUITests
//
//  Created by Gennadii Kiryushatov on 8/19/20.
//  Copyright © 2020 enjelhutasoit. All rights reserved.
//

import Foundation
import XCTest

class UITests: ios_calculatorUITests {
    
    func testAdditionOfTwoIntegers() {
        givenIOnMainView()
        whenITapOn(buttonsView.oneButton)
        whenITapOn(buttonsView.additionButton)
        whenITapOn(buttonsView.oneButton)
        whenITapOn(buttonsView.equalsButton)
        thenShouldBeShown(resultView.twoStaticText)
    }
    
    func testSubtractionOfTwoInteregers() {
        givenIOnMainView()
        whenITapOn(buttonsView.twoButton)
        whenITapOn(buttonsView.minusButton)
        whenITapOn(buttonsView.oneButton)
        whenITapOn(buttonsView.equalsButton)
        thenShouldBeShown(resultView.oneStaticText)
    }
    
    func testSubtractionOfTwoInteregersToNegative() {
        givenIOnMainView()
        whenITapOn(buttonsView.twoButton)
        whenITapOn(buttonsView.minusButton)
        whenITapOn(buttonsView.fourButton)
        whenITapOn(buttonsView.equalsButton)
        thenShouldBeShown(resultView.minusTwoStaticText)
    }
    
    func testMultiplicationOfTwoInteregers() {
        givenIOnMainView()
        whenITapOn(buttonsView.twoButton)
        whenITapOn(buttonsView.multiplyButton)
        whenITapOn(buttonsView.twoButton)
        whenITapOn(buttonsView.equalsButton)
        thenShouldBeShown(resultView.fourStaticText)
    }
    
    func testDivisionOfTwoInteregers() {
        givenIOnMainView()
        whenITapOn(buttonsView.eightButton)
        whenITapOn(buttonsView.divideButton)
        whenITapOn(buttonsView.fourButton)
        whenITapOn(buttonsView.equalsButton)
        thenShouldBeShown(resultView.twoStaticText)
    }
    
    func testClearKeyWorking() {
        givenIOnMainView()
        whenITapOn(buttonsView.fiveButton)
        whenITapOn(buttonsView.cButton)
        thenShouldBeShown(resultView.zeroStaticText)
    }
    
    func testAllNumbersAreWorking() {
        givenIOnMainView()
        whenITapOn(buttonsView.oneButton)
        whenITapOn(buttonsView.twoButton)
        whenITapOn(buttonsView.threeButton)
        whenITapOn(buttonsView.fourButton)
        whenITapOn(buttonsView.fiveButton)
        whenITapOn(buttonsView.sixButton)
        whenITapOn(buttonsView.sevenButton)
        whenITapOn(buttonsView.eightButton)
        whenITapOn(buttonsView.nineButton)
        whenITapOn(buttonsView.zeroButton)
        thenShouldBeShown(resultView.allDigitsStaticText)
    }
    
}
