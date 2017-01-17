//
//  ViewControllerUnitTests.swift
//  TDD
//
//  Created by Nguyễn Thành Thực on 1/13/17.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import XCTest

@testable import TDD
class ViewControllerUnitTests: XCTestCase {
   
   var viewController : ViewController!
   
   override func setUp() {
      super.setUp()
      // Put setup code here. This method is called before the invocation of each test method in the class.
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
      UIApplication.shared.keyWindow!.rootViewController = viewController
      
      let _ = viewController.view
   }
   
   override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
   }
   
   func test() {
      XCTAssert(true)
   }
   
   func testMove1IncrementsScore() {
      viewController.play(moveName: Move.Number)
      let newScore = viewController.gameScore
      XCTAssertEqual(newScore, 1)
   }
   
   func testMove2IncrementScore() {
      viewController.play(moveName: Move.Number)
      viewController.play(moveName: Move.Number)
      let newScore = viewController.gameScore
      XCTAssertEqual(newScore, 2)
   }
   
   func testBuzzIncrementScore() {
      viewController.game?.score = 4
      viewController.play(moveName: Move.Buzz)
      let newScore = viewController.gameScore
      XCTAssertEqual(newScore, 5)
   }
   
   func testFizzIncrementScore() {
      viewController.game?.score = 2
      viewController.play(moveName: Move.Fizz)
      let newScore = viewController.gameScore
      XCTAssertEqual(newScore, 3)
   }
   
   func testFizzBuzzIncrementScore() {
      viewController.game?.score = 14
      viewController.play(moveName: Move.FizzBuzz)
      let newScore = viewController.gameScore
      XCTAssertEqual(newScore, 15)
   }
   
   func testHasAGame() {
      XCTAssertNotNil(viewController.game)
   }
   
   //test if user move incorrect move
   func testOnWrongMoveScoreNotIncremented() {
      viewController.play(moveName: Move.FizzBuzz)
      let newScore = viewController.gameScore
      XCTAssertEqual(newScore, 0)
   }

   
}
