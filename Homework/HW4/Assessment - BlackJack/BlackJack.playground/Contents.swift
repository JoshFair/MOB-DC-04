//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//class CardGame {
//    var cardNumber: [Int]
//    var cardName: [String]
//    var cardScore: [Int]
//    
//    init(cardNumber: [Int] = [], cardName: [String] = [], cardScore: [Int] = []  ){
//        self.cardNumber = cardNumber; self.cardName = cardName; self.cardScore = cardScore
//    }
//    
//    //Deals a random number
//    func deal() -> Int{
//        let newCard : Int = Int(arc4random_uniform(11)) + 1
//        return newCard
//    }
//    //This function takes the random number that was dealt and turn it into card name
//    func CardNumberIntoCardName(number: Int) -> String {
//        let nameOfCard: String
//        //if statements that turn the number into a name
//        nameOfCard = ""
//        return nameOfCard
//    }
//    
//    // deals the first two card for both the CPU and the player
//    func firstHand() {
//        cardNumber.append(self.deal() )
//    }
//    
//    //Turns the random number of
//    func CardNumberIntoCardValue(number: Int) -> Int {
//        let valueOfCard: Int
//        //Series of ints
//        valueOfCard = 0
//        return valueOfCard
//    }
//    
//    //Calculates the total for the hand
//    func sumOfCards(var sum: Int) -> Int {
//        sum = 0
//        //loop thrrough the cards to sum the amount.  If the value exceeds 21, then replace one Ace value
//        return sum
//    }
//
//    //Calculates the string for the hand
//    func textOfCards(cards: [String]) -> String {
//        var cardString: String = cards[0]
//        //loop thrrough the cards to append the amount.
//        for i in 1...cards.count {
//            cardString = cardString + "," + cards[i]
//        }
//        return cardString
//    }
//
//}
//
////var Game1: CardGame
////Game1.deal()
//
//
////Calculates the string for the hand
//func textOfCards(cards: [String]) -> String {
//    var cardString: String = cards[0]
//    //loop thrrough the cards to append the amount.
//    for i in 1...cards.count {
//        cardString = cardString + ", " + cards[i]
//    }
//    return cardString
//}
//
//
//var test: [String] = ["A", "4", "J"]
//let test2 = String(textOfCards(test))
//
//
//
//test2


//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

//protocol BlackJack {
//    // Require a deal method
//    // Require a first hand method
//    func deal()
//    func firstHand()
//}

class CardGame {
    var cardNumber: [Int]
    var cardName: [String]
    var cardScore: [Int]
    
    init(cardNumber: [Int] = [], cardName: [String] = [], cardScore: [Int] = []  ){
        self.cardNumber = cardNumber; self.cardName = cardName; self.cardScore = cardScore
    }
    
    //Deals a random number
    func deal() -> Int{
        let newCard : Int = Int(arc4random_uniform(11)) + 1
        return newCard
    }
    //This function takes the random number that was dealt and turn it into card name
    func CardNumberIntoCardName(number: Int) -> String {
        let nameOfCard: String
        //if statements that turn the number into a name
        nameOfCard = ""
        return nameOfCard
    }
    
    // deals the first two card for both the CPU and the player
    func firstHand() {
        self.cardNumber.append(self.deal())
        self.cardName.append(CardNumberIntoCardName(self.cardNumber[0]))
        self.cardScore.append(CardNumberIntoCardValue(self.cardNumber[0]))
        self.cardNumber.append(self.deal())
        self.cardName.append(CardNumberIntoCardName(self.cardNumber[1]))
        self.cardScore.append(CardNumberIntoCardValue(self.cardNumber[1]))
    }
    
    //Turns the random number of
    func CardNumberIntoCardValue(number: Int) -> Int {
        let valueOfCard: Int
        //Series of ints
        valueOfCard = 0
        return valueOfCard
    }
    
    //Calculates the total for the hand
    func sumOfCards(var sum: Int) -> Int {
        sum = 0
        //loop thrrough the cards to sum the amount.  If the value exceeds 21, then replace one Ace value
        return sum
    }
    
    //Calculates the string for the hand
    func textOfCards(cards: [String]) -> String {
        var cardString: String = cards[0]
        //loop thrrough the cards to append the amount.
        for i in 1..<cards.count {
            cardString = cardString + "," + cards[i]
        }
        return cardString
    }
    
}

var Game = CardGame()
Game.firstHand()
Game.cardNumber
var test6: [String] = Game.cardName
Game.textOfCards(test6)
Game.cardScore
















