//
//  ViewController.swift
//  g64l2
//
//  Created by Влад Герасичкин on 16.07.2018.
//  Copyright © 2018 Влад Герасичкин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseLargerNumber(2, 5) //1.0
        
        print("Квадрат \(countSquaredNumber(number: 8).number) равен \(countSquaredNumber(number: 8).squared)") //1.1
        print("Куб \(countSquaredNumber(number: 8).number) равен \(countSquaredNumber(number: 8).cubed)") //1.1
        
        showEveryNumberToZero(number: 8) //1.2
        
        countDividers(number: 496) //1.3
        
        isTheNumberPerfect(number: 496) //1.4
        
        
        
        
        
        
    }
    /////////////////Блок 1 Задача 0
    func chooseLargerNumber(_ number1: Int, _ number2: Int ) {
        if number1 > number2 {
            print("Наибольшее из двух чисел -", number1)
        }
        else if number1 < number2 {
            print("Наибольшее из двух чисел -", number2)
        }
        else {
            print("Числа равны между собой и равняются -", number1)
        }
    }
    
    /////////////////Блок 1 Задача 1
    func countSquaredNumber (number: Int) -> (number: Int, squared: Int, cubed: Int) {
        let squared = number * number
        let cubed = squared * number
        return (number, squared, cubed)
        
    }
    
    /////////////////Блок 1 Задача 2
    func showEveryNumberToZero(number: Int) {
        var number1 = 0
        var number2 = number
        for _ in 0..<number + 1{
            number1 = number1 + (number2 - (number2 - 1))
            number2 = number2 - 1
            print(number2 + 1, number1 - 1)
        }
    }
    
    /////////////////Блок 1 Задача 3
    func countDividers(number: Int) -> (number: Int, counter: Int){
        var divider = 0
        var counter = 0
        for _ in 0..<number - 1{
            divider = divider + (number - (number - 1))
            if number % divider  == 0 {
                counter = counter + 1
                print(counter," делитель - ", divider)
            }
        }
        print("Всего делителей - ", counter)
        return(number, counter)
    }
    
    /////////////////Блок 1 Задача 4
    func isTheNumberPerfect(number: Int) {
        
        var divider = 0
        var dividerNew = 0
        var counter = 0
        
        for _ in 0..<number - 1{
            divider = divider + (number - (number - 1))
            if number % divider  == 0 {
                counter = counter + 1
                print(counter,"делитель -", divider)
                dividerNew = dividerNew + divider
            }
        }
        print("Сумма делителей -", dividerNew)
        if dividerNew == number {
            print("ЧИСЛО", number, "- СОВЕРШЕННОЕ.")
        }
    }
    
    
}


