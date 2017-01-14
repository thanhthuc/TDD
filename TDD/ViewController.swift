//
//  ViewController.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   var gameScore: Int? {
      didSet {
         numberButton.setTitle("1", for: .normal)
      }
   }
   
   var game: Game?
   
   @IBOutlet weak var numberButton: GreetButton!
   @IBOutlet weak var champagneButton: GreetButton!
   @IBOutlet weak var lightningButton: GreetButton!
   @IBOutlet weak var spaceButton: GreetButton!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      gameScore = 0
      game = Game()
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
   @IBAction func onNumberButton(_ sender: GreetButton) {
      
   }
   
   @IBAction func onChampagneButton(_ sender: GreetButton) {
      
   }
   
   @IBAction func onLightningButton(_ sender: GreetButton) {
      
   }
   
   @IBAction func onSpaceButton(_ sender: GreetButton) {
      
   }
   
   @IBAction func onHowToPlay(_ sender: UIButton) {
      let sb = UIStoryboard.init(name: "Main", bundle: nil)
      let vc = sb.instantiateViewController(withIdentifier: "HowToPlayViewController")
      present(vc, animated: true, completion: nil)
   }
   
   @IBAction func onPlayAgain(_ sender: UIButton) {
      
   }
   
   func play(moveName: String) {
      guard let unWrappedGame = game else {
         print("nil game")
         return
      }
      let respond = unWrappedGame.play(nameMove: moveName)
      gameScore = respond.score
   }
   
}

