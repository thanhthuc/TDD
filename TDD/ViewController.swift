//
//  ViewController.swift
//  TDD
//
//  Created by Nguyen Thanh Thuc on 12/01/2017.
//  Copyright © 2017 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
    
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   
    @IBAction func onAction1(_ sender: GreetButton) {
        
    }
   
    @IBAction func onAction2(_ sender: GreetButton) {
        
    }
    
    @IBAction func onAction3(_ sender: GreetButton) {
        
    }
    
    @IBAction func onAction4(_ sender: GreetButton) {
        
    }
    
    @IBAction func onHowToPlay(_ sender: UIButton) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "HowToPlayViewController")
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onPlayAgain(_ sender: UIButton) {
        
    }
    
}

