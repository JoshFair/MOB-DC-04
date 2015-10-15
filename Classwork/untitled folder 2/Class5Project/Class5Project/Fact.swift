//
//  Fact.swift
//  Class5Project
//
//  Created by Fair, Josh on 10/14/15.
//  Copyright © 2015 Fair, Josh. All rights reserved.
//

import Foundation

struct Fact {
    var factArray = [
        "People are Animals",
        "The sky is blue",
        "e = mc2",
        "Birds the Word",
        "Tupoc is alive",
        "Florida is hot and sunny",
        "Fact1"
    ]
    
    func randomFact() -> String {
        let arrayCount = UInt32(factArray.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        return self.factArray[randomNum]
    }
}
