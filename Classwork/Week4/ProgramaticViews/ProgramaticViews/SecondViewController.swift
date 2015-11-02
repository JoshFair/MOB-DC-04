//
//  SecondViewController.swift
//  ProgramaticViews
//
//  Created by Fair, Josh on 10/28/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
let eyeOne = UIView()
let eyeTwo = UIView()
let mouth = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

self.view.addSubview(eyeOne)
self.view.addSubview(eyeTwo)
self.view.addSubview(mouth)
        
self.eyeOne.backgroundColor = UIColor.redColor()
self.eyeTwo.backgroundColor = UIColor.redColor()
self.mouth.backgroundColor = UIColor.redColor()
        
self.eyeOne.frame = CGRect(x: (super.view.frame.width / 4) , y: (super.view.frame.height / 4), width: 20, height: 20)
        
self.eyeTwo.frame = CGRect(x: ( (3 * super.view.frame.width) / 4) , y: (super.view.frame.height / 4), width: 20, height: 20)
        
self.mouth.frame = CGRect(x: (super.view.frame.width / 4) , y: (((3 * super.view.frame.height ) / 4)), width: (super.view.frame.width - ((super.view.frame.width / 2)) + self.eyeOne.frame.width), height: 20)
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        self.eyeOne.frame = CGRect(x: (super.view.frame.width / 4) , y: (super.view.frame.height / 4), width: 20, height: 20)
        
        self.eyeTwo.frame = CGRect(x: ( (3 * super.view.frame.width) / 4) , y: (super.view.frame.height / 4), width: 20, height: 20)
        
        self.mouth.frame = CGRect(x: (super.view.frame.width / 4) , y: (((3 * super.view.frame.height ) / 4)), width: (super.view.frame.width - ((super.view.frame.width / 2)) + self.eyeOne.frame.width), height: 20)

    
    }
    
}
