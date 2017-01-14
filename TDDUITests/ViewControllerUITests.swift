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
//      let app = XCUIApplication()
//      app.buttons["1"].tap()
//      let newScore = XCUIApplication().buttons["1"].label
//      XCTAssertEqual(newScore, "1")
      
      let app = XCUIApplication()
      let numberButton = app.buttons["1"]
      
      numberButton.tap()
      let newScore = numberButton.label
      XCTAssertEqual(newScore, "1")
      
   }
   
   
}
