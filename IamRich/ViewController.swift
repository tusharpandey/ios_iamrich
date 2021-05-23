//
//  ViewController.swift
//  IamRich
//
//  Created by itsupport on 20/05/21.
//  Copyright © 2021 itsupport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    @IBAction func rollAction(_ sender: Any) {
        var imageArray : [UIImage] = []
        imageArray.append(UIImage(named: "dice1.png")!)
        imageArray.append(UIImage(named: "dice2.png")!)
        imageArray.append(UIImage(named: "dice3.png")!)
        imageArray.append(UIImage(named: "dice4.png")!)
        imageArray.append(UIImage(named: "dice5.png")!)
        imageArray.append(UIImage(named: "dice6.png")!)
        
        let randomDiceOneValue = Int.random(in: 0...5)
        let randomDiceTwoValue = Int.random(in: 0...5)
        
        diceImageOne.image = imageArray[randomDiceOneValue]
        diceImageTwo.image = imageArray[randomDiceTwoValue]
    }
}

