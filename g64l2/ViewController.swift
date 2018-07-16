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
        
        countSquaredNumber(number: 8) //1.1
        
        showEveryNumberToZero(number: 8) //1.2
        
        countDividers(number: 496) //1.3
        
        isTheNumberPerfect(number: 496) //1.4
        
        todaysPrice(price: 24, past: 1826, nowadaysYear: 2018) //2.1
        
        studentsExpenses(scholarship: 700, percentage: 3, months: 10)
        
        
        
        
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
        print("Квадрат \(number) = \(squared)")
        print("Куб \(number) = \(cubed)")
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
    func countDividers(number: Int) {
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
    
    /////////////////Блок 2 Задача 1
    func todaysPrice(price: Double, past: Int, nowadaysYear: Int) {
        var price1 = price
        let difference = nowadaysYear - past
        for _ in 0..<difference {
            price1 = price1 + (price1 / 100) * 6
        }
        print (price1)
    }
    
    /////////////////Блок 2 Задача 2
    func studentsExpenses(scholarship: Int, percentage: Int, months: Int) -> (expenses: Double, studentNeedsToHave: Double) {
        var expensesForMonth: Double = 1000
        var expenses: Double = expensesForMonth
        for _ in 0..<months - 1 {
            expensesForMonth = expensesForMonth + (expensesForMonth / 100) * Double(percentage)
            expenses = expenses + expensesForMonth
        }
        
        let studentNeedsToHave = expenses - Double(scholarship * months)
        print("Затраты на \(months) мес -", expenses)
        print("Требуется доложить до стипендии -", studentNeedsToHave)
        return(expenses, studentNeedsToHave)
    }
    
    
}


