//
//  Player.swift
//  ClassesLessonProblems
//
//  Created by Tedi Konda on 10/12/15.
//  Copyright © 2015 Tedi Konda. All rights reserved.
//

import Foundation

struct Player {
    // TO DO: Create a player class (hint: player file already created) that has properties for name, and optionally one or more of the following: age, gender, weight, and height.
    var name: String = "Enter Name"
    var age: String = "Enter Age"
    var weight: String = "Enter Weight"
    var height: String = "Enter Height"
    
func ScoreCreator() -> String {
        let random = Int(arc4random_uniform(3))
        var result: String = "Pending"
        
        if random == 1 { result = String(self.age)}
        else if random == 2 { result = String(self.weight) }
        else if random == 3 { result = String(self.height) }
        
        return result
        
    }
    
}
