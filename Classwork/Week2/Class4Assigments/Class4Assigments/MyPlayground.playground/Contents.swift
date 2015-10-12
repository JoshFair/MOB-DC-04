//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var x: Int = 1

//This works as a basic if else statement - Question: True : False
(x > 0) ? "Yes" : "No"


//Simple questions can be answered like this
if (x>0) {"Yes"} else {"No"}

var strName: String?

print(strName)
strName = "New"

//Protects against bang failures - Must do with "Optional"
if (strName == nil) { print("Nope") }
else {print(strName!)}

//if (isempty(strName)) {"Yes"}



//Lets get to functions

//Input -> Process > Output

func sayhello(x:String) {
    print("Hello  \(x)")
}

sayhello("Sup Fool")

//Function gets the area of a square          Below return comes after closed parenthesis
func funcArea(Width: Double , Height: Double) -> Double {
    let Area: Double = Width * Height
    return Area
}

print( funcArea(10, Height: 12))



