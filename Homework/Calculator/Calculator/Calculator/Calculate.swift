//
//  Calculate.swift
//  Calculator
//
//  Created by Fair, Josh on 10/31/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import Foundation

class Calculate {
    //variables needed 
    var savedValue: Float = 0
    var displayedValue: String = "0"
    var computeValue: Float = 0
    var firstCalcCompleted: Bool = false
    var calcInProgress: Bool = false
    var divide: Bool = false
    var multiply: Bool = false
    var subtract: Bool = false
    var add: Bool = false
    //May need to add another for the direct computation without inpput ( example series 9 -> x -> = )
    
    
    // Turns information into text for display -> Scientific Notation, etc.
    func alterDisplayForFormatting () {
        
    }
    
    
    //When user presses action button, equals or another computational button, this will give the answer
    func computeAnswer() {
        // If the user presses equal sign
        
        var term1: Float = self.savedValue
        var term2: Float = Float(self.displayedValue)!
        var answer: Float = Float(self.displayedValue)!

        //Assists with the in calc progress
        if (self.firstCalcCompleted) {
            term1 = Float(self.displayedValue)!
            term2 = self.computeValue
        }
        
            if (divide ) {
                answer = term1 / term2
                self.firstCalcCompleted = true
                self.computeValue = term2}
            if (multiply) { answer = term1 * term2
                self.firstCalcCompleted = true
                self.computeValue = term2}
            if (add) {
                answer = term1 + term2
                self.firstCalcCompleted = true
                self.computeValue = term2}
            if (subtract) {
                answer = term1 - term2
                self.firstCalcCompleted = true
                self.computeValue = term2}
        
        
        //Clear functional processes
            self.calcInProgress = false
        
        //sets answer to the displayed value
            self.displayedValue = String(answer)
        
        print("Term1: \(term1) ")
        print("Term2: \(term2) ")
        errorCheck()
    }
    
    func equalButtonPressed() {

        self.computeAnswer()
        self.calcInProgress = false
    }
    
    func divideButtonPressed() {
        // Will change the color of the buttons on the UI
        
        if self.firstCalcCompleted == false { self.computeAnswer() }

        self.savedValue = Float(self.displayedValue)!
        
        self.divide = true
        self.multiply = false
        self.add = false
        self.subtract = false
        self.calcInProgress = true
        self.firstCalcCompleted = false
    }
    
    func multiplyButtonPressed() {
        // Will change the color of the buttons on the UI
        
        if self.firstCalcCompleted == false { self.computeAnswer() }
        
        self.savedValue = Float(self.displayedValue)!
        
        self.divide = false
        self.multiply = true
        self.add = false
        self.subtract = false
        self.calcInProgress = true
        self.firstCalcCompleted = false
    }
    
    func subtractButtonPressed() {
        // Will change the color of the buttons on the UI
        
        if self.firstCalcCompleted == false { self.computeAnswer()}
        self.savedValue = Float(self.displayedValue)!
        
        self.divide = false
        self.multiply = false
        self.add = false
        self.subtract = true
        self.calcInProgress = true
        self.firstCalcCompleted = false
    }
    
    func addButtonPressed() {
        // Will change the color of the buttons on the UI
        
        if (self.firstCalcCompleted == false) { self.computeAnswer()}
        self.savedValue = Float(self.displayedValue)!
        
        self.divide = false
        self.multiply = false
        self.add = true
        self.subtract = false
        self.calcInProgress = true
        self.firstCalcCompleted = false
    }

    
    //Clears calculator when clear button is pressed
    func clearButtonPressed() {
        
        //reminds the user which function is active
        self.calcInProgress = true
        
        //if the value is cleared, will fully clear calc cache
        if (self.displayedValue == "0") {
        self.divide = false
        self.multiply = false
        self.subtract = false
        self.add = false
        self.savedValue = 0
        self.calcInProgress = false
        self.firstCalcCompleted = false
        }
        
        //clears out the calcCache no matter what step
        self.savedValue = Float(self.displayedValue)!
        self.firstCalcCompleted = false
        self.displayedValue = "0"
        
        //self.firstCalcCompleted = false

        errorCheck()
    }
    
    //Turns the number negative after the button is pressed (I dont the the UX of negative with zeros so I didnt include)
    func negativeButtonPressed() {
        self.displayedValue = String(-1 * Float(self.displayedValue)!)
    }
    
    //percentageButtonPressed - Divides the number by 100
    func percentageButtonPressed() {
        self.displayedValue = String((Float(self.displayedValue)!/100))
        print (" \(self.displayedValue) ")
    }
    
    //Add Number Button pressed - Updates variables
    func numberButtonPressed(input: String) {
        // This is when a computation is requested and the displayed value is turned into a stored value, then replaces with the new input and resets the other computations components
        if (self.calcInProgress == true) {
            self.savedValue = Float(self.displayedValue)!
            self.displayedValue = input
            self.calcInProgress = false}
        // If the ony number is zero and zero is pressed, the zeros do not change
        else if ((self.displayedValue == "0") && (input == "0")) {self.displayedValue = "0"}
        else if (self.displayedValue == "0") {self.displayedValue = input}
        else {
        self.displayedValue = (self.displayedValue + input)}
        self.firstCalcCompleted = false

        errorCheck()
    }
    
    //Period Button Pressed : Checks if period has just been pressed, if
    func periodButtonPressed() {
        var doesAlreadyHavePeriod: Bool = false
        
        if self.displayedValue.rangeOfString(".") != nil{
                doesAlreadyHavePeriod = true
        }
        
        if (doesAlreadyHavePeriod) { }
        else {
            self.displayedValue = self.displayedValue + "."
            self.firstCalcCompleted = false
        }
    }
   
    func errorCheck(){
        print("display: \(self.displayedValue) " )
        print("savedValue: \(self.savedValue) ")
        print("firstCalcCompleted: \(self.firstCalcCompleted) ")
        print("computeValue: \(self.computeValue) ")

    }
}



















