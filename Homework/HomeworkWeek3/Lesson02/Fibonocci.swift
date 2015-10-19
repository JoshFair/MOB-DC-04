//
//  Fibonocci.swift
//  Lesson02
//
//  Created by Fair, Josh on 10/18/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import Foundation
//import UIkit

/*
@IBOutlet weak var numberText: UITextField!
TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/

class FibonacciAdder {
    
    var indexOfFibonacciNumber: Int
    
    init(number: Int) { self.indexOfFibonacciNumber = number }
    
    func fibonacciNumberAtIndex(indexNumber: Int)-> Int {
        var firstNumber: Int = 0
        var secondNumber: Int = 1
        var thirdNumber: Int = 1
        var result: Int
        
        if indexNumber <= 0 { result = 0 }
        else if indexNumber == 1 { result = 0 }
        else if indexNumber == 2 { result = 1 }
        else if indexNumber == 3 { result = 1 }
        else {
            for i in 1...indexNumber {
                thirdNumber = firstNumber + secondNumber
                firstNumber = secondNumber
                secondNumber = thirdNumber
            }
            result = thirdNumber
        }
        return result
}
}