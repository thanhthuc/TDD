//
//  Brain.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.

import UIKit

class Brain: NSObject {
   
   func isDevisibleBy(devisor: Int, number: Int) -> Bool {
      return number % devisor == 0
   }
   
   func isDivisibleByThree(number: Int) -> Bool {
      return isDevisibleBy(devisor: 3, number: number)
   }
   
   func isDivisibleByFive(number: Int) -> Bool {
      return isDevisibleBy(devisor: 5, number: number)
   }
   
   func isDivisibleByFiften(number: Int) -> Bool {
      return isDevisibleBy(devisor: 15, number: number)
   }
   
   func check(number: Int) -> Move {
      
      if isDivisibleByFiften(number: number) {
         return .FizzBuzz
      } else if isDivisibleByThree(number: number) {
         return .Fizz
      } else if isDivisibleByFive(number: number) {
         return .Buzz
      } else {
         return .Number
      }
   }
}
