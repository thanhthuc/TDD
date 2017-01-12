//
//  BrainTests.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import XCTest

@testable import TDD

class BrainTests: XCTestCase {
   
   let brain = Brain()
   
   override func setUp() {
      super.setUp()
      // Put setup code here. This method is called before the invocation of each test method in the class.
   }
   
   override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
   }
   
   func testIsDivisibleByThree() {
      let result = brain.isDivisibleByThree(number: 3)
      XCTAssertEqual(result, true)
   }
   
   func testIsNotDivisibleByThree() {
      let result = brain.isDivisibleByThree(number: 1)
      XCTAssertEqual(result, false)
   }
   
   func testIsDivisibleByFive() {
      let result = brain.isDivisibleByFive(number: 5)
      XCTAssertEqual(result, true)
   }
   
   func testIsNotDivisibleByFive() {
      let result = brain.isDivisibleByFive(number: 3)
      XCTAssertEqual(result, false)
   }
   
   func testIsDivisibleByFirten() {
      let result = brain.isDivisibleByFiften(number: 15)
      XCTAssertEqual(result, true)
   }
   
   func testIsNotDivisibleByFirten() {
      let result = brain.isDivisibleByFiften(number: 4)
      XCTAssertEqual(result, false)
   }
   
   func testSayFizz() {
      let result = brain.check(number: 3)
      XCTAssertEqual(result, "Fizz")
   }
   
   func testSayNumber() {
      let result = brain.check(number: 1)
      XCTAssertEqual(result, "1")
   }
   
}
