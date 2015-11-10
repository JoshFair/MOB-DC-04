//
//  ViewController.swift
//  SwtichStatements
//
//  Created by Fair, Josh on 11/4/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var lighLabel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("light", forKey: "theme")
        
        var currentTheme = NSUserDefaults.standardUserDefaults().objectForKey("theme")
        
        userDefaultsLight()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var darkButton: UIButton!
    

    @IBAction func darkButton(sender: AnyObject) {
        
    }
    @IBOutlet weak var lightButton: UIButton!



    func userDefaultsLight(theme: String) {
        if theme == nil {
            view.backgroundColor = UIColor.blackColor()
            self.helloLabel.backgroundColor = UIColor.whiteColor() }
        else {
            view.backgroundColor  = UIColor.whiteColor()
            self.helloLabel.backgroundColor = UIColor.blackColor()
        }
    }

}

