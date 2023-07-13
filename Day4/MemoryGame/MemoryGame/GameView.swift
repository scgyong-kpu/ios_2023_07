//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct GameView: View {
    let prefix: String
    @ObservedObject var gameModel = GameModel()
    @State var showsRetryAlert = false
    @Environment(\.presentationMode) var present

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Memory Game")
                    .font(.largeTitle)
                Spacer()
                Text("Flips: \(gameModel.flips)")
            }
            .padding(.horizontal)
            Spacer()
            GridStack(cols: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: prefix,
                         card: gameModel.card(row: row, col: col)
                )
                .onTapGesture {
                    gameModel.toggle(row: row, col: col)
                    if gameModel.over {
                        showsRetryAlert = true
                    }
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button {
                    present.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .font(.title)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(lineWidth: 5)
                        )
                        .shadow(color: .gray, radius: 4, x: 3, y: 3)
                }
                Spacer()
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
                Spacer()
            }
            Spacer()
        }
        .background(
            LinearGradient(
                colors: [ .white, .blue.opacity(0.5) ],
                startPoint: .topLeading,
                endPoint: .bottomLeading
            )
        )
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
        .navigationBarHidden(true)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GameView(prefix: "t")
        }
    }
}
