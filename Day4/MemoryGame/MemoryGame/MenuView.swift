//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    GameView(prefix: "f")
                } label: {
                    Text("F Game")
                }
                NavigationLink {
                    GameView(prefix: "t")
                } label: {
                    Text("T Game")
                }
           }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
