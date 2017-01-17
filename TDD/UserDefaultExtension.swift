//
//  UserDefaultExtension.swift
//  TDD
//
//  Created by Nguyễn Thành Thực on 1/16/17.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

extension UserDefaults {
   func setHighScore(highScore: Int) {
      setHighScoreToUserDefault(highScore: highScore, forKey: "highScore")
   }
   
   func getHighScore() -> Int {
      let value = getHighScoreFromUserDefault(forKey: "highScore")
      guard let unWrappedValue = value else {
         return 0
      }
      return unWrappedValue
   }
   
   //MARK: private function
   private func setHighScoreToUserDefault(highScore: Int, forKey key: String) {
      let user = UserDefaults.standard
      user.set(highScore, forKey: key)
      user.synchronize()
   }
   
   private func getHighScoreFromUserDefault(forKey key: String) -> Int? {
      let user = UserDefaults.standard
      let value = user.value(forKey: key) as? Int
      return value
   }
}
