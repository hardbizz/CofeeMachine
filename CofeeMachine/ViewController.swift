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
    
    
    @IBOutlet var allButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayInfo.text = pr1
        
        //let myMachine = CofeeMachine()
        //       // print(myMachine.addWater(500))
        //        myMachine.makeLatte()
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
    
    @IBOutlet weak var toEspreso: UIButton!
    
    @IBOutlet weak var toCapuccino: UIButton!
    
    @IBOutlet weak var toAmericano: UIButton!
    
    @IBOutlet weak var toLatte: UIButton!
    
    @IBOutlet weak var toCheck: UIButton!
    
    @IBOutlet weak var toAddW: UIButton!
    
    @IBOutlet weak var toAddC: UIButton!
    
    @IBOutlet weak var toAddM: UIButton!
    
    @IBOutlet weak var toTray: UIButton!
    
    @IBAction func powerButton() {
        myMachine.power()
        if !state {
            displayInfo.text = "Кофемашина выключена"
            toEspreso.setTitleColor(.black, for: .normal)
            toCapuccino.setTitleColor(.black, for: .normal)
            toAmericano.setTitleColor(.black, for: .normal)
            toLatte.setTitleColor(.black, for: .normal)
            toCheck.setTitleColor(.black, for: .normal)
            toAddW.setTitleColor(.black, for: .normal)
            toAddC.setTitleColor(.black, for: .normal)
            toAddM.setTitleColor(.black, for: .normal)
            toTray.setTitleColor(.black, for: .normal)
        } else {
            
            toEspreso.setTitleColor(.blue, for: .normal)
            toCapuccino.setTitleColor(.blue, for: .normal)
            toLatte.setTitleColor(.blue, for: .normal)
            toCheck.setTitleColor(.blue, for: .normal)
            toAddW.setTitleColor(.blue, for: .normal)
            toAddC.setTitleColor(.blue, for: .normal)
            toAddM.setTitleColor(.blue, for: .normal)
            toTray.setTitleColor(.blue, for: .normal)
            toAmericano.setTitleColor(.blue, for: .normal)
            displayInfo.text = "Кофемашина готова к работе!"
        }
    }
    
    
    
}


