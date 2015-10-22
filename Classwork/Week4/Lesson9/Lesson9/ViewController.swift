//
//  ViewController.swift
//  Lesson9
//
//  Created by Fair, Josh on 10/21/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UpdateUsernameDelegate {
    @IBOutlet weak var userNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func editUserNameAction(sender: AnyObject) {
    }

}

