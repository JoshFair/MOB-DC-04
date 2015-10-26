//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    @IBOutlet weak var playerCards: UILabel!
    @IBOutlet weak var cpuCards: UILabel!
    @IBOutlet weak var playerBackgroundCard: UIImageView!
    @IBOutlet weak var cpuBackgroundCard: UIImageView!
    
    //Creates instance of blackjack
    var game = CardGame()
    
    func updateScreen() {
        self.cpuScoreLabel.text = String(game.CPUScore)
        self.playerScoreLabel.text = String(game.sumOfCards())
        self.playerCards.text = game.textOfCards()
    }
    
    
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    @IBOutlet weak var redBox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //lets the game start
        game.firstHand()
        self.updateScreen()
        
    }
    @IBAction func test(sender: AnyObject) {

    }

    @IBAction func DoubetapDeal(sender: AnyObject) {
        game.deal()
        self.updateScreen()
        if game.determineIfPlayerBusted() == true {
        //Display Modal that the player lost
        }
    }
    @IBAction func FinishGameSwipe(sender: AnyObject) {
        let status: String = game.determineWinner()
        if status == "Win" {}
        if status == "Lose" {}
        if status == "Push" {}
        
    }

}

