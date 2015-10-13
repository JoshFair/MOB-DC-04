//
//  ViewController.swift
//  Class5
//
//  Created by Fair, Josh on 10/12/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ContinuePress(sender: AnyObject) {
        self.MainLabel.text = "Change-a-roo"
    }
    //This is where
}

