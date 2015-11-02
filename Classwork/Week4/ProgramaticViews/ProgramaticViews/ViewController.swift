//
//  ViewController.swift
//  ProgramaticViews
//
//  Created by Fair, Josh on 10/28/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 let yellowBox = UIView()
    let redBox = UIView()
    
    @IBOutlet weak var ImageTest: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        yellowBox.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        yellowBox.backgroundColor   = UIColor.yellowColor()
        self.view.addSubview(yellowBox)
        
        redBox.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        redBox.backgroundColor = UIColor.redColor()
        self.yellowBox.addSubview(redBox)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateYellowBox(sender: AnyObject) {
        UIView.animateWithDuration(1) { () -> Void in
        //self.yellowBox.frame = CGRect(x: 100, y: 100, width: 100, height: 200)
            //self.redBox.frame = CGRect(x: 5, y: 5, width: 400, height: 400)
            self.ImageTest.frame.origin.x = 60
            self.ImageTest.frame.origin.y = 60
        }
    }

    @IBAction func makeYellowBoxFullScreen(sender: AnyObject) {
        UIView.animateWithDuration(1) {
           // self.yellowBox.frame = CGRect(x: 0, y: 0, width: (super.view.frame.width / 2) , height: super.view.frame.height)
            //self.view.sendSubviewToBack(self.yellowBox
        
        }
    }
}

