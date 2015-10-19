//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var numberText: UITextField!
    var number: Int? = 0
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    @IBAction func calculateButton(sender: AnyObject) {
        number = Int(self.numberText.text!)
        
        if number != nil {
            if (number! % 2 == 0) {print("Even")}
            else if (number! % 2 == 1) {print("Odd")}
        }
        else {print("Enter Number")}
        
    }
}
