//
//  LoginController.swift
//  Class5
//
//  Created by Fair, Josh on 10/12/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Dismiss(sender: AnyObject) {
        //This is the action that I want to enable
       self.dismissViewControllerAnimated(false, completion: nil)
    }

    /*
    @IBAction func Dismiss(sender: AnyObject) {
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
