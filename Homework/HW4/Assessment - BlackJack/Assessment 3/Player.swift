//
//  Player.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    var chips: Int = 100
    
    // This function will keep track of all of the current Chips after each round
    func playersBet(didWin: Bool, bet: Int) -> Int {
        var currentChips: Int = self.chips
        if didWin == true { currentChips = currentChips + bet }
        if didWin == false  { currentChips = currentChips - bet}
        //if didWin == Push???
        return currentChips
    }

//Tests to see if player is out of money - Function to run after every round
func determineIfPlayerIsOutOfMoney(currentChips: Int) -> Bool {
    var gameOver: Bool = false
    if currentChips <= 0 { gameOver = true }
    else {gameOver = false }
    return gameOver
    }

    //Function to determine if bet is too high - Runs before each round
func isBetMoreThanCurrentFunds(bet: Int, chips: Int) -> Bool {
    var goodBet = true
    if bet > chips { goodBet = false }
    else { goodBet = true  }
    return goodBet
    }
    
    
}