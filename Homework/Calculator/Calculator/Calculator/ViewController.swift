//
//  ViewController.swift
//  Calculator
//
//  Created by Fair, Josh on 10/30/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit
var calc = Calculate()



class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!

    @IBOutlet weak var equalView: UIView!
    @IBOutlet weak var multiplyView: UIView!
    @IBOutlet weak var addView: UIView!
    @IBOutlet weak var divideView: UIView!
    @IBOutlet weak var subtractView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cButtonTapped(sender: AnyObject) {
        calc.clearButtonPressed()
        self.updateScreen()
    }

    @IBAction func plusMinusTapped(sender: AnyObject) {
        calc.negativeButtonPressed()
        self.updateScreen()
    }
    
    @IBAction func percentageTapped(sender: AnyObject) {
        calc.percentageButtonPressed()
        self.updateScreen()
    }
    
    @IBAction func divideTapped(sender: AnyObject) {
        calc.divideButtonPressed()
        self.updateScreen()
    }
    @IBAction func sevenTapped(sender: AnyObject) {
        calc.numberButtonPressed("7")
        self.updateScreen()
    }
    @IBAction func eightTapped(sender: AnyObject) {
        calc.numberButtonPressed("8")
        self.updateScreen()
    }
    @IBAction func nineTapped(sender: AnyObject) {
        calc.numberButtonPressed("9")
        self.updateScreen()
    }
    @IBAction func multiplyTapped(sender: AnyObject) {
        calc.multiplyButtonPressed()
        self.updateScreen()
    }
    @IBAction func fourTapped(sender: AnyObject) {
        calc.numberButtonPressed("4")
        self.updateScreen()
    }
    @IBAction func fiveTapped(sender: AnyObject) {
        calc.numberButtonPressed("5")
        self.updateScreen()
    }
    @IBAction func sixTapped(sender: AnyObject) {
        calc.numberButtonPressed("6")
        self.updateScreen()
    }
    @IBAction func oneTapped(sender: AnyObject) {
        calc.numberButtonPressed("1")
        self.updateScreen()
    }
    @IBAction func twoTapped(sender: AnyObject) {
        calc.numberButtonPressed("2")
        self.updateScreen()
    }
    @IBAction func minusTapped(sender: AnyObject) {
        calc.subtractButtonPressed()
        self.updateScreen()
    }
    @IBAction func threeTapped(sender: AnyObject) {
        calc.numberButtonPressed("3")
        self.updateScreen()
    }
    @IBAction func addTapped(sender: AnyObject) {
        calc.addButtonPressed()
        self.updateScreen()
    }
    @IBAction func zeroTapped(sender: AnyObject) {
        calc.numberButtonPressed("0")
        self.updateScreen()
    }
    @IBAction func periodTapped(sender: AnyObject) {
        calc.periodButtonPressed()
        self.updateScreen()
    }
  
    @IBAction func equalTapped(sender: AnyObject) {
        calc.equalButtonPressed()
        self.updateScreen()
        self.updateScreen()
    }
    
    func updateScreen(){
        self.displayLabel.text = calc.displayedValue
        
        if (calc.multiply && calc.calcInProgress) {self.multiplyView.backgroundColor = UIColor.blueColor()}
        else {self.multiplyView.backgroundColor = self.equalView.backgroundColor}
        
        if (calc.divide && calc.calcInProgress) {self.divideView.backgroundColor = UIColor.blueColor()}
        else {self.divideView.backgroundColor = self.equalView.backgroundColor}
        
        if (calc.add && calc.calcInProgress) {self.addView.backgroundColor = UIColor.blueColor()}
        else {self.addView.backgroundColor = self.equalView.backgroundColor}
        
        if (calc.subtract && calc.calcInProgress) {self.subtractView.backgroundColor = UIColor.blueColor()}
        else {self.subtractView.backgroundColor = self.equalView.backgroundColor}
        
    }
}














