//
//  CofeeMachine.swift
//  CofeeMachine
//
//  Created by MacBook on 17.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

var waterAmount = 0
var coffeeAmount = 0
var milkAmount = 0
var tray = 0
var pr1 = "Кофемашина выключена"
var state = false

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
//    private var waterAmount = 0
//    private var coffeeAmount = 0
//    private var milkAmount = 0
//    private var tray = 0
    
    
    func addWater() {
        
    waterAmount+=200
    pr1 = "Вы долили 200 мл воды.\nСейчас в резервуаре \(waterAmount) мл воды "
        
    }
    func addCoffee() {
        if state {
        coffeeAmount+=50
       pr1 = "Вы досыпали 50 мг кофе.\nСейчас в резервуаре \(coffeeAmount) мг кофе "
        }
    }
    
    func addMilk() {
        
        milkAmount+=100
        pr1 = "Вы долили 100 мл молока.\nСейчас в резервуаре \(milkAmount) мл молока "
        
    }
    
    func clearTray() {
        
        if tray == 0 {
            pr1 = "Лоток для отходов не нуждается в очистке! "
        } else {
        
            pr1 = "Лоток очищен! Можно начинать готовить напиток"}
        tray = 0
    
    }
    
    func check() {
        
        
        print("print foo after check \(state)")
        pr1 = "                   Сейчас в резервуарах \n\n     Вода          \(waterAmount) мл\n     Кофе         \(coffeeAmount) мг\n     Молоко     \(milkAmount) мл"
        
    }
    
    func power() {
        state = !state
        print(state)
    }

    func makeEspreso() {
        print("enter espreso \(state)")
        
        if waterAmount < 50 {
            pr1 = "Недостаточно воды, долейте!"
        }
        if coffeeAmount < 10 {
            pr1 = "Недостаточно кофе, добавьте!"
        }
        if tray >= 50 {
            pr1 = "Лоток для отходов полный, очистите, пожалуйста, для продолжения!"
        }
        if waterAmount >= 50 && coffeeAmount >= 10 && tray <= 45{
            waterAmount-=50
            coffeeAmount-=10
            tray+=10
            pr1 = "Ваш Эспрессо готов!"
        }
        
    }
    
    func makeAmericano() {
        
        if waterAmount < 100 {
            pr1 = "Недостаточно воды, долейте!"
        }
        if coffeeAmount < 10 {
            pr1 = "Недостаточно кофе, добавьте!"
        }
        if tray >= 50 {
            pr1 = "Лоток для отходов полный, очистите, пожалуйста, для продолжения!"
        }
        if waterAmount >= 100 && coffeeAmount >= 10 && tray <= 45{
            waterAmount-=100
            coffeeAmount-=10
            tray+=10
          
            pr1 = "Ваш Американо готов!"
        }
        
    }
    
    func makeCappucino() {
        
        print("enter capuccino before if \(state)")
        
        if waterAmount < 200 {
            pr1 = "Недостаточно воды, долейте!"
        }
        if coffeeAmount < 20 {
            pr1 = "Недостаточно кофе, добавьте!"
        }
        if milkAmount < 50 {
            pr1 = "Недостаточно молока, долейте!"
        }
        if tray >= 50 {
            pr1 = "Лоток для отходов заполнился, очистите его, пожалуйста, для продолжения!"
        }
        if waterAmount >= 200 && coffeeAmount >= 20  && milkAmount >= 50 && tray <= 45 {
            waterAmount-=200
            coffeeAmount-=20
            tray+=20
            milkAmount-=50
           
            pr1 = "Ваш Капучино готов!"
        }
        
    }
    
    func makeLatte() {
      
        if waterAmount < 200 {
            pr1 = "Недостаточно воды, долейте!"
        }
        if coffeeAmount < 20 {
            pr1 = "Недостаточно кофе, добавьте!"
        }
        if milkAmount < 100 {
            pr1 = "Недостаточно молока, долейте!"
        }
        if tray >= 50 {
            pr1 = "Лоток для отходов полный, очистите, пожалуйста, для продолжения!"
        }
        if waterAmount >= 200 && coffeeAmount >= 20  && milkAmount >= 100 && tray <= 45 {
            waterAmount-=200
            coffeeAmount-=20
            tray+=20
            milkAmount-=100
            pr1 = "Ваш Латте готов!"
        }
    }
}

    

