//
//  ViewController.swift
//  Class5Project
//
//  Created by Fair, Josh on 10/14/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GButton: UIButton!
    var myFactBook = Fact()
    var myColor = Colorwheel()
    @IBOutlet weak var factLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.factLabel.text = "Welcome"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateFactAction(sender: AnyObject) {
        // This is where the button goes
        self.factLabel.text = self.myFactBook.randomFact()
        self.view.backgroundColor = self.myColor.randomColor()
        self.factLabel.textColor = self.myColor.randomColor()
        self.GButton.backgroundColor = self.view.backgroundColor
   
        
    }

}

