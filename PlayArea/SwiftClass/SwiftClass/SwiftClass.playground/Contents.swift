//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

5 / 3

var loc: String = "asdf"


var nun = "asdf"

loc

var integer: Int = 243
var float: Float = 234.2

integer

float


var intTest: Int = 32

//Use Backslash and open parenthesis for adding variable to string
var strNewNun: String = "\(nun) asdfa"

strNewNun

print("Hello World")
print("Hellow No New Line", terminator: "")

var strJoshName: String = "Josh Fair"

print("Hello \(strJoshName) .")

//Interpolation
print( "Your value is \(2+2)")

//Concatenation
"Hello" + " World"


//If Statements
var intAge: Int = 21

if intAge < 21
{ print("Too Young to Party")
} else if intAge > 21
{ print("Whaaaaat")
} else
{ print("Right On")
}

if (intAge >= 21) && (intAge < 55) {"Good to go, but no discount"}
else if intAge > 55 {"Discount Partytime"}
else { "Too Young my Friend "}

//Loops  Here we go loop-de-loop, here we go loop-de-lie

//While Loop
var x: Int = 0
print(x)
while (x < 10) {
    print(x)
    x++
    if (x == 6) { break}
}
x

for i in 1...5 {
    if i == 4 {
        print(i)
    break
    }
}


for i in 1..<5 {
    if i == 4 {
        print(i)
        break
    }
}






