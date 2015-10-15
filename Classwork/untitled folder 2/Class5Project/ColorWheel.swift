//
//  ColorWheel.swift
//  Class5Project
//
//  Created by Fair, Josh on 10/14/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import Foundation
import UIKit


struct Colorwheel {
    var colorSelectArray = [
    UIColor.redColor(),
    UIColor.blueColor(),
    UIColor.grayColor(),
    UIColor.greenColor()
    ]
    
func randomColor() -> UIColor {
        let arrayCount = UInt32(colorSelectArray.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        return self.colorSelectArray[randomNum]
    }
    
}