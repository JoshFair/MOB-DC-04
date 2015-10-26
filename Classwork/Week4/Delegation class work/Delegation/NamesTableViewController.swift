//
//  NamesTableViewController.swift
//  Delegation
//
//  Created by Tedi Konda on 10/26/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

//ADDED THE " ,ADDNAMEDELEGATE"  TO CONFORM TO THE PROTOCAL MADE IN THE OTHER
class NamesTableViewController: UITableViewController, AddNameDelegate {
    
    // Keep track of all names in this array
    var names = [String]()
   
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("namecell", forIndexPath: indexPath) 
        
        // Fill out the user textLabel of the row by grabbing the student's name
        let studentName = names[indexPath.row]
        cell.textLabel?.text = studentName

        return cell
    }
    
    //ADDED THIS FUCNTION - NEEDS TO  THEN SAME NAME AS THE METHOD IN THE OTHER PROTOCOL
    func addName(name: String) {
        //THIS IS CUSTOM TO WHAT YOU ARE TRYING SHOW (THE METHOD INPUT IS DEPENDENT ON WHAT YOUR TRYING TO SOLVE)
        self.names.append(name)
        self.tableView.reloadData()
    }
    
    func updateNames(name: String) {
        
    }
    
    //THIS IS A FUNCTION THAT IS ADDED TO THE CLASS  "TEST"  AS THE SEGUE IDENTIFIER   (IF THERE IS NO SEGUE -> THEN YOU CAN USE THE CODE
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "test" {
            let destinationVC = segue.destinationViewController as! AddViewController
            destinationVC.delegate = self
        }
    }

    
    
}
