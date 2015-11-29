//
//  ViewController.swift
//  Week6Class1
//
//  Created by Fair, Josh on 11/9/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //UI interface Items
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    //Data/Class Items
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var studentInfo: NSMutableArray?
        if let studentPath = NSBundle.mainBundle().pathForResource("Students", ofType: "plist") {
            studentInfo = NSMutableArray(contentsOfFile: studentPath)
            loadData2()
            print(studentInfo)
            self.nameLabel.text = studentInfo
            
        }
    
    }

    @IBAction func saveData(sender: AnyObject) {
        //Set var to the array (file) you are going to update
        var myNewToDo: NSMutableArray?
        //If this is good -> then you can update this file
        if let path = NSBundle.mainBundle().pathForResource("ToDos", ofType: "plist") {
            myNewToDo = NSMutableArray(contentsOfFile: path)
            
        myNewToDo?.addObject(userInput.text!)
        myNewToDo?.writeToFile(path, atomically: true)
            loadData()

        
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadData2() {
               // Do any additional setup after loading the view, typically from a nib.
        let myTodDos = NSBundle.mainBundle().pathForResource("Students", ofType: "plist")
        let toDosArray = NSArray(contentsOfFile: myTodDos!)
        print(toDosArray!) 
    }
    
    func loadData() {
        let myTodDos = NSBundle.mainBundle().pathForResource("ToDos", ofType: "plist")
        let toDosArray = NSArray(contentsOfFile: myTodDos!)
        print(toDosArray!)
    }
    
    func loadStudentData() {
        
    }
    
    
}

