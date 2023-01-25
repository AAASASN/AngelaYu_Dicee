//
//  ViewController.swift
//  AngelaYu_Dicee
//
//  Created by Александр Мараенко on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var diceArray = [UIImage(named: "DiceFive"),
                     UIImage(named: "DiceFour"),
                     UIImage(named: "DiceOne"),
                     UIImage(named: "DiceSix"),
                     UIImage(named: "DiceThree"),
                     UIImage(named: "DiceTwo")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.layer.cornerRadius = 10
        diceImageViewTwo.layer.cornerRadius = 10
        buttonOutlet.layer.cornerRadius = 10
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]

    }

    @IBAction func buttonPressed(_ sender: Any) {
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
    }
    
}

