//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var sum: Float = 0
    @IBOutlet weak var numberText: UITextField!

    @IBOutlet weak var labelSum: UILabel!
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    @IBAction func addButton(sender: AnyObject) {
        var newNumber: Float?
        if self.numberText.text != nil { newNumber = Float(self.numberText.text!)}
        else {print("Fill in Number")}
        sum = sum + newNumber!
    }
}
