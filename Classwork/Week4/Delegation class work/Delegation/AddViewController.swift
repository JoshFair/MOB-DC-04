//
//  AddViewController.swift
//  Delegation
//
//  Created by Tedi Konda on 10/26/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

//ADDED THIS PROTOCAL WITH A VAR THAT WILL BE PASSED
protocol AddNameDelegate {
        func addName(name: String)
    }

class AddViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!

    //ADDED THIS DELEGAT IN THE CLASS
    var delegate: AddNameDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Little hack
        // Add a tap gesture to the screen
        // In the screenTapped method, end editing on the view and the keyboard will disappear
        let tapGesture = UITapGestureRecognizer(target: self, action: "screenTapped")
        self.view.addGestureRecognizer(tapGesture)
    
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "keyBoardShow:",
            name: UIKeyboardDidShowNotification,
            object: nil)
    
    }
    
    // Remember to pass NSNotification as a paremeter in the methods that execute after a notification is posted
    func keyBoardShow(notification: NSNotification) {
        //Turn enter point blue
        print("Function")
        self.nameField.backgroundColor = UIColor.blueColor()
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Try commenting this line out and dismissing the add modal when the keyboard is present
        // It will only disappear if the modal is gone completely
        // This resignFirstResponder on the textfield makes sure the editign is done too
        nameField.resignFirstResponder()
    }
    
    func screenTapped() {
        view.endEditing(true)
    }
    


    
    @IBAction func save(sender: UIButton) {
        //ADDED THIS LINE WITH REFERENCE THIS WHEN THE SAVE BUTTON IS PRESSED - IT WILL PASS THE TEXT
        self.delegate?.addName(nameField.text!)
        dismiss()
    }
    
    @IBAction func cancel(sender: UIButton) {
        dismiss()
    }
    
    func dismiss() {
        // The users decided to go back, dismiss this modal
        dismissViewControllerAnimated(true, completion: nil)
    }

}






