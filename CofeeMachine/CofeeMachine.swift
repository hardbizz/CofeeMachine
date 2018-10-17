//
//  CofeeMachine.swift
//  CofeeMachine
//
//  Created by MacBook on 17.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class CofeeMachine: NSObject {
    override var description: String {
     var result = ""
        result = super.description
        result+="\nВас привествует кофемашина! Сейчас в резервуарах\n"
        result+="\(waterAmount) мл воды\n"
        result+="\(coffeeAmount) гр кофе\n"
        result+="\(milkAmount) мл молока"
    return result
        
    }
    private var waterAmount = 0
    private var coffeeAmount = 0
    private var milkAmount = 0
    private var tray = 0
    func addWater(_ amount: Int) {
        if amount > 0 {
        waterAmount+=amount
        print("Вы долили \(amount) мл воды. Сейчас в резервуаре \(waterAmount) мл воды ")
        }
    }
    func addCoffee(_ amount: Int) {
        if amount > 0 {
        coffeeAmount+=amount
        print("Вы досыпали \(amount) мг кофе. Сейчас в резервуаре \(coffeeAmount) мг кофе ")
        }
    }
    func addMilk(_ amount: Int) {
        if amount > 0 {
        milkAmount+=amount
        print("Вы долили \(amount) мл молока. Сейчас в резервуаре \(milkAmount) мл молока ")
        }
    }
    func clearTray(){
        tray = 0
        print("Лоток очищен! Можно начинать готовить напиток")
    }
    func check(_ string: String) {
        switch string {
        case "water" :
            print("Сейчас в кофемашине \(waterAmount) мл воды")
        case "coffee":
            print("Сейчас в кофемашине \(coffeeAmount) гр кофе")
        case "milk" :
            print("Сейчас в кофемашине \(milkAmount) мл молока")
        default:
            print("для проверки введите water, coffee или milk")
            
        }
    }
    
    private func preparing() {
        print("""
-----------------------------------
-----------------------------------
----------- Ваш -------------------
--------- напиток -----------------
-------- готовится ----------------
-----------------------------------
-----------------------------------
"""
)
    }

    func makeEspreso() {
        print("Приветствую, хозяин! Вы заказали Эспрессо!")
        if waterAmount < 50 {
            print ("Недостаточно воды, долейте!")
        }
        if coffeeAmount < 10 {
            print ("Недостаточно кофе, добавьте!")
        }
        if tray >= 50 {
            print("Лоток для отходов полный, почистите, пожалуйста для продолжения!")
        }
        if waterAmount > 50 && coffeeAmount > 10 && tray <= 45{
            waterAmount-=50
            coffeeAmount-=10
            tray+=5
            preparing()
            print("Ваш Эспрессо готов!")
        }
    }
    
    func makeAmericano() {
        print("Приветствую, хозяин! Вы заказали  Американо!")
        if waterAmount < 100 {
            print ("Недостаточно воды, долейте!")
        }
        if coffeeAmount < 10 {
            print ("Недостаточно кофе, добавьте!")
        }
        if tray >= 50 {
            print("Лоток для отходов полный, почистите, пожалуйста для продолжения!")
        }
        if waterAmount > 100 && coffeeAmount > 10 && tray <= 45{
            waterAmount-=100
            coffeeAmount-=10
            tray+=5
            preparing()
            print("Ваш Американо готов!")
        }
    }
    
    func makeCappucino() {
        print("Приветствую, хозяин! Вы заказали  Капучино!")
        if waterAmount < 200 {
            print ("Недостаточно воды, долейте!")
        }
        if coffeeAmount < 20 {
            print ("Недостаточно кофе, добавьте!")
        }
        if milkAmount < 50 {
            print ("Недостаточно молока, долейте!")
        }
        if tray >= 50 {
            print("Лоток для отходов полный, очистите, пожалуйста, для продолжения!")
        }
        if waterAmount > 200 && coffeeAmount > 20  && milkAmount > 50 && tray <= 45 {
            waterAmount-=200
            coffeeAmount-=20
            tray+=10
            milkAmount-=50
            preparing()
            print("Ваш Капучино готов!")
        }
    }
    
    func makeLatte() {
        print("Приветствую, хозяин! Вы заказали  Латте!")
        if waterAmount < 200 {
            print ("Недостаточно воды, долейте!")
        }
        if coffeeAmount < 20 {
            print ("Недостаточно кофе, добавьте!")
        }
        if milkAmount < 100 {
            print ("Недостаточно молока, долейте!")
        }
        if tray >= 50 {
            print("Лоток для отходов полный, очистите, пожалуйста, для продолжения!")
        }
        if waterAmount > 200 && coffeeAmount > 20  && milkAmount > 100 && tray <= 45 {
            waterAmount-=200
            coffeeAmount-=20
            tray+=10
            milkAmount-=100
            preparing()
            print("Ваш Латте готов!")
        }
    }
}
    

