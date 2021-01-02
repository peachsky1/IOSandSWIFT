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
    
//    var diceList = [#imageLiteral(resourceName: <#T##String#>),#imageLiteral(resourceName: <#T##String#>),#imageLiteral(resourceName: <#T##String#>)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        diceImageViewOne.image = #imageLiteral(resourceName: "DiceTwo")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
        
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
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceFour")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceSix")
    }
    
}

