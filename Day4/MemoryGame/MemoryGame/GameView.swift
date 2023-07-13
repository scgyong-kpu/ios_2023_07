//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var gameModel = GameModel()
    @State var showsRetryAlert = false
    var body: some View {
        VStack {
            Spacer()
            GridStack(cols: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: "f",
                         card: gameModel.card(row: row, col: col)
                )
                .onTapGesture {
                    gameModel.toggle(row: row, col: col)
                }
            }
            Spacer()
            HStack {
                Button {
                    showsRetryAlert = true
                } label: {
                    Text("Restart")
                        .font(.title)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(lineWidth: 5)
                        )
                        .shadow(color: .gray, radius: 4, x: 3, y: 3)
                }
            }
            Spacer()
        }
        .alert(isPresented: $showsRetryAlert) {
            Alert(
                title: Text("Restart"),
                message: Text("Do you really want to restart the game?"),
                primaryButton: .destructive(Text("Restart")) {
                    gameModel.start()
                },
                secondaryButton: .cancel()
            )
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
