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
   
   func play(nameMove: Move = .Fizz) -> (right: Bool, score: Int) {
      
      let result = brain.check(number: score + 1)
      
      if result == nameMove {
         score = score + 1
         return (true, score)
      } else {
         if score > 0 {
            score = score - 1
         }
         return (false, score)
      }
   }
   
   override init() {
      self.score = 0
      self.brain = Brain()
      super.init()
   }
   
}
