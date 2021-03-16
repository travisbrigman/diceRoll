//
//  ContentView.swift
//  diceRoll
//
//  Created by Travis Brigman on 3/15/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var dieOne = 0
    @State private var dieTwo = 0
    @ObservedObject var diceRolls: DiceRolls

    
    var body: some View {
        VStack {
            Button(action: rollDice, label: { Text("Roll Dice")})
                .padding()
            
            Text("Dice One: \(dieOne)")
                .padding()
            Text("Dice Two: \(dieTwo)")
        }
    }
    
    func rollDice() {
        let dice1 = Int.random(in: 1...6)
        let dice2 = Int.random(in: 1...6)

        dieOne = dice1
        dieTwo = dice2
        diceRolls.multipleDiceRolls.append(SingleDiceRoll(dice1: dice1, dice2: dice2))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(diceRolls: DiceRolls())
    }
}
