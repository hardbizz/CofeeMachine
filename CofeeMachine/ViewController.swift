//
//  ViewController.swift
//  CofeeMachine
//
//  Created by MacBook on 17.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let myMachine = CofeeMachine()
       // print(myMachine.addWater(500))
        myMachine.makeLatte()
        myMachine.addWater(500)
        myMachine.addMilk(150)
        myMachine.addCoffee(100)
        myMachine.makeLatte()
        myMachine.makeEspreso()

    }

    

}

