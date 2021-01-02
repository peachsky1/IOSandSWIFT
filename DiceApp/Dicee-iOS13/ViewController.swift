//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//  Interface Builder Outlet allows me to reference a UI elem.
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
//    let: when u dont wanna change the context. var = variable.
    let diceList = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
//    random number generator = Int.random(in: 1...10)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        diceImageViewOne.image = diceList[randomNumberGenerator()]
        diceImageViewTwo.image = diceList[randomNumberGenerator()]
        
        diceImageViewOne.alpha = 0.5
        diceImageViewTwo.alpha = 0.5
    }
// Interface Builder Action allows me to reference the source code
    @IBAction func rollButton(_ sender: UIButton) {
        
        print("Button got tapped!")
        if diceImageViewOne.alpha != 1 {
            diceImageViewOne.alpha = 1
            diceImageViewTwo.alpha = 1
        }
        diceImageViewOne.image = diceList[randomNumberGenerator()]
//        diceImageViewTwo.image = diceList[randomNumberGenerator()]
//        randomElement
        diceImageViewTwo.image = diceList.randomElement()
        
    }
    func randomNumberGenerator() -> Int {
        return Int.random(in: 0...5)
    }
    
}

