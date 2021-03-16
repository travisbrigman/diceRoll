//
//  DiceRolls.swift
//  DiceRoll
//
//  Created by Travis Brigman on 3/15/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI

struct SingleDiceRoll: Identifiable, Codable, Hashable {
    let id = UUID()
    let dice1: Int
    let dice2: Int
}

class DiceRolls: ObservableObject {
    @Published var multipleDiceRolls: [SingleDiceRoll]
    
    init() {
        multipleDiceRolls = []
    }
}

