//
//  MainTabView.swift
//  diceRoll
//
//  Created by Travis Brigman on 3/15/21.
//  Copyright © 2021 Travis Brigman. All rights reserved.
//

import SwiftUI
enum Tab {
    case rollView, pastRollView
}

struct MainTabView: View {
    @State private var selectedTab = Tab.rollView
    @ObservedObject var diceRolls: DiceRolls
    var body: some View {
        TabView {
            ContentView(diceRolls: DiceRolls())
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Roll Dice")
            }
            .tag(Tab.rollView)
            
            PastRollsView(diceRolls: diceRolls)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("past rolls")
            }
            .tag(Tab.pastRollView)
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(diceRolls: DiceRolls())
    }
}
