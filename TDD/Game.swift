//
//  Game.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class Game: NSObject {
   
   var score: Int
   let brain: Brain
   
   func play(nameMove: String = "Fizz") ->Bool {
      score += 1
      
      let result = brain.check(number: score)
      
      if result == nameMove {
         return true
      }
      return false
   }
   
   override init() {
      self.score = 0
      self.brain = Brain()
      super.init()
   }
   
}
