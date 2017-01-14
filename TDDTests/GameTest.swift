//
//  GameTest.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import XCTest

@testable import TDD

class GameTest: XCTestCase {
   
   let game = Game()
   
   override func setUp() {
      super.setUp()
      // Put setup code here. This method is called before the invocation of each test method in the class.
   }
   
   override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
   }
   
   func testGameStartAtZero() {
      XCTAssertTrue(game.score == 0)
   }
   
   func testOnPlayScoreIncremented() {
      game.play(nameMove: "1")
      XCTAssertTrue(game.score == 1)
   }
   
   //correct Fizz Move
   func testIfFizzMoveIsRight() {
      game.score = 2
      let res = game.play(nameMove: "Fizz")
      XCTAssertTrue(res.right)
   }
   
   //Incorrect Fizz Move
   func testIfFizzMoveIsWrong() {
      game.score = 1
      let res = game.play(nameMove: "Fizz")
      XCTAssertEqual(res.right, false)
   }
   
   //Correct Buzz Move
   func testIfBuzzMoveIsRight() {
      game.score = 4
      let res = game.play(nameMove: "Buzz")
      XCTAssertEqual(res.right, true)
   }
   
   //Incorrect Buzz Move
   func testIfBuzzMoveIsWrong() {
      game.score = 1
      let res = game.play(nameMove: "Buzz")
      XCTAssertEqual(res.right, false)
   }
   
   //Correct Buzz Move
   func testIfFizzBuzzMoveIsRight() {
      game.score = 14
      let res = game.play(nameMove: "FizzBuzz")
      XCTAssertEqual(res.right, true)
   }
   
   //Incorrect Buzz Move
   func testIfFizzBuzzMoveIsWrong() {
      game.score = 1
      let res = game.play(nameMove: "FizzBuzz")
      XCTAssertEqual(res.right, false)
   }
   
   func testIfNumberMoveRight() {
      game.score = 1
      let result = game.play(nameMove: "2")
      XCTAssertEqual(result.right, true)
   }
   
   func testIfNumberMoveWrong() {
      game.score = 2
      let result = game.play(nameMove: "3")
      XCTAssertEqual(result.right, false)
   }
   
   //This func just write when need return to SCORE value
   func testPlayShouldReturnIfMoveRight() {
      let response = game.play(nameMove: "1")
      XCTAssertNotNil(response.right)
   }
   
   //This func just write when need return to SCORE value
   func testPlayShouldReturnNewScore() {
      let response = game.play(nameMove: "1")
      XCTAssertNotNil(response.score)
   }
   
}
