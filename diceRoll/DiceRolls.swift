//
//  DiceRolls.swift
//  DiceRoll
//
//  Created by Travis Brigman on 3/15/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI

struct singleDiceRoll: Identifiable, Codable, Hashable {
    let id = UUID()
    let dice1: Int
    let dice2: Int
}


// what needs to change about this??
class DiceRolls: ObservableObject {
    @Published var multipleDiceRolls: [singleDiceRoll]
    
    init() {
        multipleDiceRolls = []
    }
}

