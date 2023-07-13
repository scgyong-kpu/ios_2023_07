//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            GridStack(cols: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: "f", number: row+col+1, open: true)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
