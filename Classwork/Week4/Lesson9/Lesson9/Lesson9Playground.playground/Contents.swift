//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol Animal {
    var name: String { get }
    var fur: Bool { get }
}

protocol Hunter {
    var vegetarian: Bool { get }
    var hasClaws: Bool { get }
}

extension Animal where Self: Hunter {
    var vegetarian: Bool { return false }
    var hasClaws: Bool { return true }
    func makeNoise() -> String { return "RAAAAWR" }
}


struct Tiger: Animal, Hunter {
    var name: String
    var fur: Bool = true
}


var Simba = Tiger(name: "Simba", fur: true)

Simba.vegetarian
Simba.makeNoise()



protocol CanFly {
    var lightWeight: Bool { get }
}

protocol Bird {
     var hasWings: Bool { get }
}

extension Bird where Self: CanFly {
    var hasWings: Bool {return true }
    var lightWeight: Bool { return true }
}


struct Hawk: Bird, CanFly {
    var noise: String =  "Chirp"
}

var lucy = Hawk()
lucy.noise
lucy.lightWeight






















