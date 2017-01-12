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
        game.play()
        XCTAssertTrue(game.score == 1)
    }
    
    //correct Fizz Move
    func testIfFizzMoveIsRight() {
        game.score = 2
        let res = game.play(nameMove: "Fizz")
        XCTAssertTrue(res)
    }
    
    //Incorrect Fizz Move
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let res = game.play(nameMove: "Fizz")
        XCTAssertEqual(res, false)
    }
    
    //Correct Buzz Move
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let res = game.play(nameMove: "Buzz")
        XCTAssertEqual(res, true)
    }
    
    //Incorrect Buzz Move
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let res = game.play(nameMove: "Buzz")
        XCTAssertEqual(res, false)
    }
    
    //Correct Buzz Move
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let res = game.play(nameMove: "FizzBuzz")
        XCTAssertEqual(res, true)
    }
    
    //Incorrect Buzz Move
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let res = game.play(nameMove: "FizzBuzz")
        XCTAssertEqual(res, false)
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let result = game.play(nameMove: "2")
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let result = game.play(nameMove: "3")
        XCTAssertEqual(result, false)
    }
    
}
