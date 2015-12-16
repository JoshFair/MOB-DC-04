//
//  ViewController.swift
//  PopProject
//
//  Created by Fair, Josh on 12/2/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import UIKit
import pop

class ViewController: UIViewController, POPAnimationDelegate {

    @IBOutlet weak var ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ball.userInteractionEnabled = true
        // Adding ballPanned function lower
        ball.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "ballPanned:"))
        
        let ballAnimation = POPBasicAnimation(propertyNamed: kPOPViewCenter)
        ballAnimation.toValue =  NSValue( CGPoint: CGPoint(x: 63, y: 532))
        ballAnimation.duration = 3
        ballAnimation.delegate = self
        //ballAnimation.velocity = NSValue(30)
        ball.pop_addAnimation(ballAnimation, forKey: nil)
    }
    
    func ballPanned(pan: UIPanGestureRecognizer) {
        print("Panning")
        switch pan.state    {
            case .Began:
                print("Began Panning")
            case .Changed:
                ball.center = pan.locationInView(view)
               // animateBall()
                print("Loc Change")
            case .Ended:
                print("Ended")
                animateBall()
            print("Should have worked")
            
        default: break
        }
        
    }
    
    func animateBall() {
        let ballAnimation = POPBasicAnimation(propertyNamed: kPOPViewCenter)
        ballAnimation.delegate = self
        ballAnimation.toValue =  NSValue( CGPoint: CGPoint(x: 100, y: 250))
        ballAnimation.duration = 3
        ball.pop_addAnimation(ballAnimation, forKey: nil)
        
    }
    
    
    func pop_animationDidStop(anim: POPAnimation!, finished: Bool) {
        print("Stopped")
    }

    func pop_animationDidStart(anim: POPAnimation!) {
        print("Started")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

