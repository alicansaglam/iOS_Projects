//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceLeft: UIImageView!
    
    @IBOutlet weak var diceRight: UIImageView!
    
    let dice = [UIImage (named:"DiceOne"),UIImage (named:"DiceTwo"),UIImage (named:"DiceThree"),UIImage (named:"DiceFour"),UIImage (named:"DiceFive"),UIImage (named:"DiceSix")]
   
    
    @IBAction func buttonRoll(_ sender: Any) {
        print("button gets tapped")
        diceLeft.image = dice[Int.random(in: 0..<6)]
    
        diceRight.image = dice[Int.random(in: 0..<6)]
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }


}

