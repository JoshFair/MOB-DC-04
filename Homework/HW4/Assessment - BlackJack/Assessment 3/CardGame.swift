//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

// protocol BlackJack {
//    // Require a deal method
//    // Require a first hand method
//    func deal()
//    func firstHand()
//}

class CardGame {
    var cardNumber: [Int]
    var cardName: [String]
    var cardScore: [Int]
    var CPUScore: Int
    
    init(cardNumber: [Int] = [], cardName: [String] = [], cardScore: [Int] = [],CPUScore: Int = 0 ){
        self.cardNumber = cardNumber; self.cardName = cardName; self.cardScore = cardScore; self.CPUScore = CPUScore
    }
    
    //Deals a random number that represents a card - then sets that into the arrays
    func deal(){
        let newCard : Int = Int(arc4random_uniform(13)) + 2
        DealCardIntoCardNumber(newCard)
        CardNumberIntoCardName(newCard)
        CardNumberIntoCardValue(newCard)
    }
    //This function takes the random number that was dealt and turn it into card name
    
    //sets the card number from the deal function
    func DealCardIntoCardNumber(number: Int) {
        self.cardNumber.append(number)
    }
    
    //sets the card name
    func CardNumberIntoCardName(number: Int) {
        var nameOfCard: String = ""
        //if statements that turn the number into a name
        if (number <= 10) { nameOfCard = String(number) }
        else if (number == 11) { nameOfCard = "J" }
        else if (number == 12) { nameOfCard = "Q" }
        else if (number == 13) { nameOfCard = "K" }
        else { nameOfCard = "A" }
        
        self.cardName.append(nameOfCard)
    }
    
        //Sets the card score
    func CardNumberIntoCardValue(number: Int){
        var valueOfCard: Int = 0
        //Series of ints
        if (number <= 10) { valueOfCard = number}
        else if (number < 14) { valueOfCard = 10 }
        else { valueOfCard = 11 }
        self.cardScore.append(valueOfCard)
    }
    
    // deals the first two card for both the CPU and the player
    func firstHand() {
        //First Card
        self.deal()
        
        //Second Card 
        self.deal()
        
        //Sets CPU score for MVP
        self.CPUScore = Int(arc4random_uniform(11)) + 11
    }
    

    //Calculates the total for the hand
    func sumOfCards() -> Int {
        var sum: Int = 0
    for i in 0..<self.cardScore.count {
            sum = sum + self.cardScore[i]
        }
    return sum
    }
    
    //Calculates the string for the hand
    func textOfCards() -> String {
        var cardString: String = self.cardName[0]
        //loop thrrough the cards to append the amount.
        for i in 1..<self.cardName.count {
                cardString = cardString + ", " + self.cardName[i]
        }
        return cardString
    }
  
    func determineIfPlayerBusted() -> Bool{
        var gameOver: Bool = false
        let currentScore = sumOfCards()
        if (currentScore > 21) {
            gameOver = true
        }
        return gameOver
    }
    
    func determineWinner() -> String {
        let cpu: Int = self.CPUScore
        let player: Int = self.sumOfCards()
        var game: String = ""
        if (player > 21) { game = "Lose" }
        else if (cpu == player) { game = "Push" }
        else if (cpu > player) { game = "Lose" }
        else {game = "Win" }
        return game
    }
    
}










