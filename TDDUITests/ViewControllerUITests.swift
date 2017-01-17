//
//  ViewControllerUITests.swift
//  TDD
//
//  Created by Nguyễn Thành Thực on 1/14/17.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
   
   override func setUp() {
      super.setUp()
      
      // Put setup code here. This method is called before the invocation of each test method in the class.
      
      // In UI tests it is usually best to stop immediately when a failure occurs.
      continueAfterFailure = false
      // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
      XCUIApplication().launch()
      
      // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
   }
   
   override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
   }
   
   func testTapNumberButtonIncrementsScore() {
      
      let app = XCUIApplication()
      let numberButton = app.buttons["NumberButton"]
      
      numberButton.tap()
      let newScore = numberButton.label
      XCTAssertEqual(newScore, "1")
      
   }
   
   func testTapTwoTimeNumberButtonIncrementsScore() {
      
      let app = XCUIApplication()
      let numberButton = app.buttons["NumberButton"]
      
      numberButton.tap()
      numberButton.tap()
      let newScore = numberButton.label
      XCTAssertEqual(newScore, "2")
   }
   
   func testTapFizzButton() {
      let app = XCUIApplication()
      let fizzButton = app.buttons["FizzButton"]
      let numberButton = app.buttons["NumberButton"]
      numberButton.tap()
      numberButton.tap()
      fizzButton.tap()
      //fizzButton.tap()
      let newScore = numberButton.label
      XCTAssertEqual(newScore, "3")
   }
   
   func testTapBuzzButton() {
      let app = XCUIApplication()
      let fizzButton = app.buttons["FizzButton"]
      let buzzButton = app.buttons["BuzzButton"]
      let numberButton = app.buttons["NumberButton"]
      numberButton.tap()
      numberButton.tap()
      fizzButton.tap()
      numberButton.tap()
      buzzButton.tap()
      let newScore = numberButton.label
      XCTAssertEqual(newScore, "5")
   }
  
   
}
