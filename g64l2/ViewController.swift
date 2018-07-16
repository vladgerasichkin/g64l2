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
        print("Квадрат числа \(number) равен \(squared)")
        print("Куб числа \(number) равен \(cubed)")
        return (number, squared, cubed)
        
    }
    
}


