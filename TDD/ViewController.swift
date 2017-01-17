//
//  ViewController.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

enum Move {
   case Number
   case Fizz
   case Buzz
   case FizzBuzz
}

class ViewController: UIViewController {
   
   var highScore: Int? {
      didSet {
         guard let unWrappedHighScore = highScore else {
            return
         }
         highScoreLabel.text = "\(unWrappedHighScore)"
      }
   }
   
   var gameScore: Int? {
      didSet {
         guard let gameScore = gameScore else {
            return
         }
         numberButton.setTitle("\(gameScore)", for: .normal)
      }
   }
   
   var game: Game?
   
   var userDefault = UserDefaults()
   
   @IBOutlet weak var numberButton: GreetButton!
   @IBOutlet weak var champagneButton: GreetButton!
   @IBOutlet weak var lightningButton: GreetButton!
   @IBOutlet weak var spaceButton: GreetButton!
   @IBOutlet weak var highScoreLabel: UILabel!
   @IBOutlet weak var numberTapButtonLabel: UILabel!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      gameScore = 0
      highScore = userDefault.getHighScore()
      game = Game()
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   @IBAction func didTapButton(_ sender: GreetButton) {
      switch sender {
      case numberButton:
         play(moveName: Move.Number)
      case champagneButton:
         play(moveName: Move.Fizz)
      case lightningButton:
         play(moveName: Move.Buzz)
      case spaceButton:
         play(moveName: Move.FizzBuzz)
      default:
         print("some thing wrong")
      }
   }
   
   @IBAction func onHowToPlay(_ sender: UIButton) {
      let sb = UIStoryboard.init(name: "Main", bundle: nil)
      let vc = sb.instantiateViewController(withIdentifier: "HowToPlayViewController")
      present(vc, animated: true, completion: nil)
   }
   
   @IBAction func onPlayAgain(_ sender: UIButton) {
      
   }
   
   func play(moveName: Move) {
      guard let unWrappedGame = game else {
         print("nil game")
         return
      }
      let respond = unWrappedGame.play(nameMove: moveName)
      gameScore = respond.score
      
      //high score handle
      guard
            let unWrappedHighScore = highScore,
            let unWrappedScore = gameScore else {
         return
      }
      if unWrappedScore > unWrappedHighScore {
         highScore = unWrappedScore
      }
      guard let finalHighScore = highScore else {
         return
      }
      userDefault.setHighScore(highScore: finalHighScore)
   }
}

