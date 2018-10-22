//
//  ViewController.swift
//  CofeeMachine
//
//  Created by MacBook on 17.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayInfo: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayInfo.text = pr1
        
        //let myMachine = CofeeMachine()
        //       // print(myMachine.addWater(500))
        //        myMachine.makeLatte()
        //        myMachine.addWater(500)
        //        myMachine.addMilk(150)
        //        myMachine.addCoffee(100)
        //        myMachine.makeLatte()
        //        myMachine.makeEspreso()
        //        myMachine.check("milk")
        //        print(myMachine)
        
    }
    
    let myMachine = CofeeMachine()
    
    
    @IBAction func buttonMakeEspreso() {
        if state {
            myMachine.makeEspreso()
            
            displayInfo.text = pr1}
    }
    
    @IBAction func buttonMakeAMericano() {
        if state {
            myMachine.makeAmericano()
            
            displayInfo.text = pr1
        }
    }
    
    @IBAction func buttonMakeCapiccino() {
        if state {
            myMachine.makeCappucino()
            displayInfo.text = pr1
        }
    }
    
    @IBAction func buttonMakeLatte() {
        if state {
            myMachine.makeLatte()
            displayInfo.text = pr1
        }
    }
    
    @IBAction func checkComp() {
        if state {
            myMachine.check()
            displayInfo.text = pr1
        }
    }
    
    
    
    @IBAction func buttonAddWater() {
        if state {
            myMachine.addWater()
            displayInfo.text = pr1
        }
    }
    
    
    @IBAction func buttonAddCoffee() {
        if state {
            myMachine.addCoffee()
            displayInfo.text = pr1
        }
    }
    
    @IBAction func buttonAddMilk() {
        if state {
            myMachine.addMilk()
            displayInfo.text = pr1
        }
    }
    
    @IBAction func buttonClearTray() {
        if state {
            myMachine.clearTray()
            displayInfo.text = pr1
        }
    }
    
    
    @IBAction func powerButton() {
        myMachine.power()
        if !state {
            displayInfo.text = "Кофемашина выключена"
        } else {
            displayInfo.text = "Кофемашина готова к работе!"
        }
    }
    
    
}


