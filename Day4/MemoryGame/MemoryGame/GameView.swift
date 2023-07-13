//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var gameModel = GameModel()
    var body: some View {
        VStack {
            GridStack(cols: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: "f",
                         card: gameModel.card(row: row, col: col)
                )
                .onTapGesture {
                    gameModel.toggle(row: row, col: col)
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
