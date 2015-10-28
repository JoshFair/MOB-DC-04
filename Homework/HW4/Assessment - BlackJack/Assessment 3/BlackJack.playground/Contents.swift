//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol BlackJack {
    // Require a deal method
    // Require a first hand method
    func deal()
    func firstHand()
}

class CardGame: BlackJack {
    var cardNumber: [Int]
    var cardName: [String]
    var cardScore: [Int]
    var cardSuit: [String]
    var CPUScore: [Int]
    var CPUName: [String]
    
    init(cardNumber: [Int] = [], cardName: [String] = [], cardScore: [Int] = [],CPUScore: [Int] = [], cardSuit: [String] = [], CPUName: [String] = [] ){
        self.cardNumber = cardNumber; self.cardName = cardName; self.cardScore = cardScore; self.CPUScore = CPUScore; self.cardSuit = cardSuit; self.CPUName = CPUName
    }
    
    //Deals a random number that represents a card - then sets that into the arrays
    func deal(){
        let newCard : Int = Int(arc4random_uniform(13)) + 2
        self.cardNumber.append(newCard)
        self.cardName.append(CardNumberIntoCardName(newCard))
        self.cardScore.append(CardNumberIntoCardValue(newCard))
    }
    //This function takes the random number that was dealt and turn it into card name
    
    
    //sets the card name
    func CardNumberIntoCardName(number: Int)-> String {
        var nameOfCard: String = ""
        //if statements that turn the number into a name
        if (number <= 10) { nameOfCard = String(number) }
        else if (number == 11) { nameOfCard = "J" }
        else if (number == 12) { nameOfCard = "Q" }
        else if (number == 13) { nameOfCard = "K" }
        else { nameOfCard = "A" }
        
        return nameOfCard
    }
    
    //Sets Card Suit
    func AddCardSuit() {
        //Not needed at the moment
    }
    
    //Sets the card score
    func CardNumberIntoCardValue(number: Int)-> Int{
        var valueOfCard: Int = 0
        //Series of ints
        if (number <= 10) { valueOfCard = number}
        else if (number < 14) { valueOfCard = 10 }
        else { valueOfCard = 11 }
        return valueOfCard
    }
    
    // deals the first two card for both the CPU and the player
    func firstHand() {
        
        //First Card
        self.deal()
        
        //Second Card
        self.deal()
        
        //Sets CPU score for MVP
        let CPUNumber = Int(arc4random_uniform(13)) + 2
        self.CPUScore.append(CardNumberIntoCardValue(CPUNumber))
        self.CPUName.append(CardNumberIntoCardName(CPUNumber))
    }
    
    //Calculates the total for the hand
    func sumOfCards() -> Int {
        var sum: Int = 0
        var i: Int = 0
        var aceFlipper: Bool = true
        for i in 0..<self.cardScore.count {
            sum = sum + self.cardScore[i]
        }
        if sum > 21 {
            i = 0
            //Do some Ace cleaning
            while aceFlipper {
                if (self.cardScore[i] == 11) {
                    self.cardScore[i] = 1
                    aceFlipper = false
                }
                i = i + 1
                if i == self.cardScore.count { aceFlipper = false }
            }
            sum = 0
            for i in 0..<self.cardScore.count {
                sum = sum + self.cardScore[i]
            }
        }
        
        return sum
    }
    
    //Calculates the total for the CPU hand
    func sumOfCPUCards() -> Int {
        var sum: Int = 0
        var i: Int = 0
        var aceFlipper: Bool = true
        for i in 0..<self.CPUScore.count {
            sum = sum + self.CPUScore[i]
        }
        if sum > 21 {
            i = 0
            //Do some Ace cleaning
            while aceFlipper {
                if (self.CPUScore[i] == 11) {
                    self.CPUScore[i] = 1
                    aceFlipper = false
                }
                
                i = i + 1
                if i == self.CPUScore.count { aceFlipper = false }
            }
            sum = 0
            for i in 0..<self.CPUScore.count {
                sum = sum + self.CPUScore[i]
            }
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
    
    //Finished out the CPUs Hand
    func CPUPlay() {
        let secondCard = Int(arc4random_uniform(13)) + 2
        var nextCard: Int
        self.CPUScore.append(CardNumberIntoCardValue(secondCard))
        self.CPUName.append(CardNumberIntoCardName(secondCard))
        
        //do until dealer is out
        
        while sumOfCPUCards() <= 14 {
            nextCard = Int(arc4random_uniform(13)) + 2
            self.CPUScore.append(CardNumberIntoCardValue(nextCard))
            self.CPUName.append(CardNumberIntoCardName(nextCard))
        }
    }
    
    
    //Function to determine Winner when the user finishes the game
    func determineWinner() -> String {
        let cpu: Int = self.sumOfCPUCards()
        let player: Int = self.sumOfCards()
        var game: String = ""
        if (cpu > 21) { game = "Win" }
        else if (player > 21) { game = "Lose" }
        else if (cpu == player) { game = "Push" }
        else if (cpu > player) { game = "Lose" }
        else {game = "Win" }
        return game
    }
    
}

var Game = CardGame()
Game.firstHand()
Game.cardNumber
Game.cardName
Game.cardScore
Game.CPUScore
Game.sumOfCards()
Game.textOfCards()


Game.cardScore.count
var sum: Int = 0

for i in 0..<Game.cardScore.count {

sum = sum + Game.cardScore[i]
}
sum

Game.sumOfCards()
Game.sumOfCPUCards()
Game.determineWinner()

Game.deal()
Game.cardNumber
Game.cardName
Game.cardScore
Game.CPUScore

Game.sumOfCards()
Game.textOfCards()

Game.sumOfCards()
Game.sumOfCPUCards()
Game.determineWinner()

Game.CPUPlay()
Game.textOfCards()
Game.CPUName
Game.sumOfCards()
Game.sumOfCPUCards()
Game.determineWinner()










































































































