//
//  ViewController.swift
//  ProgramaticView
//
//  Created by Fair, Josh on 11/2/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bodyView = UIView()
    var leftLeg = UIView()
    var rightLeg = UIView()
    var leftArm = UIView()
    var rightArm = UIView()
    
    
    @IBOutlet weak var headView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        drawBody()
//        drawLeftArm()
//        drawRightArm()
//        drawLeftLeg()
//        drawRightLeg()
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //MARK: Create Right Arm
    func drawRightArm() {
        self.view.addSubview(self.rightArm)
        self.rightArm.backgroundColor = UIColor.yellowColor()
        
        self.rightArm.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func drawLeftArm() {
        self.view.addSubview(self.leftArm)
        self.leftArm.backgroundColor = UIColor.blueColor()
    }
    
    func drawRightLeg() {
        self.view.addSubview(self.rightLeg)
        self.rightLeg.backgroundColor = UIColor.blueColor()
    }
    
    func drawLeftLeg() {
        self.view.addSubview(self.leftLeg)
        self.leftLeg.backgroundColor = UIColor.blueColor()
    }
    
    func drawBody() {
        self.view.addSubview(self.bodyView)
        self.bodyView.backgroundColor = UIColor.blueColor()
        self.bodyView.translatesAutoresizingMaskIntoConstraints = false
        
        let bodyWidth = NSLayoutConstraint(
            item: self.bodyView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.headView,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0)
        
        let bodyTopPosition = NSLayoutConstraint(
            item: self.bodyView,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.headView,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let bodyBottomPosition = NSLayoutConstraint(
            item: self.bodyView,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.bottomLayoutGuide,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 0)
        
        let bodyHorizontalPosition = NSLayoutConstraint(
            item: self.bodyView,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.headView,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: self.headView.frame.width / 4 )
        
        self.view.addConstraint(bodyWidth)
        self.view.addConstraint(bodyTopPosition)
        self.view.addConstraint(bodyBottomPosition)
        self.view.addConstraint(bodyHorizontalPosition)
    }
    
    
}

