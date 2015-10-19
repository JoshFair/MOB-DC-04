//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Tedi Konda on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var LabelForHelloWorld: UILabel!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    func printNameAndAge(name: String, age: Int) {
        print("Hello \(name), you are \(age) years old!") }
    func drinkVoteAndDrive1(age: Int) {
            if age >= 16 { print("You can drive") }
            if age >= 18 { print("You can vote") }
            if age >= 21 { print("You can drink") }
    }
    func drinkVoteAndDrive2(age: Int) {
        if age >= 21 {print("You can drive, vote and drink (but not at the same time!") }
        else if age >= 18 {print("You can drive and vote") }
        else if age >= 16 {print("You can drive") }
    }
    
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    @IBAction func TextGeneratingButton(sender: AnyObject) {
    self.LabelForHelloWorld.text = "Hello World!"
    let name = (self.nameText.text!)
    let age = Int(self.ageText.text!)
        
        if age != nil {
            if name != "" {
                printNameAndAge(name, age: age!)
                drinkVoteAndDrive1(age!)
                drinkVoteAndDrive2(age!)
            }
            else { print("Please fill in text boxes") } }
        else { print("Please fill in text boxes") }
        
        
    }
}
