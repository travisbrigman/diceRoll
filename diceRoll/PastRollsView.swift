//
//  PastRollsView.swift
//  diceRoll
//
//  Created by Travis Brigman on 3/15/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI

struct PastRollsView: View {
    @ObservedObject var diceRolls: DiceRolls
    var body: some View {
        List {
            ForEach(diceRolls.multipleDiceRolls) { roll in
                Text("Foo \(roll.dice1)")
            }
        }
    }
}


struct PastRollsView_Previews: PreviewProvider {
    static var previews: some View {
        PastRollsView(diceRolls: DiceRolls())
    }
}


