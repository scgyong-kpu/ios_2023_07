//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct MenuView: View {
    let prefixes = [ "f", "t" ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ForEach(prefixes, id: \.self) { prefix in
                    MenuItemView(prefix: prefix)
                }
            }
            .navigationTitle("Memory Game")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuItemView: View {
    let prefix: String
    var body: some View {
        HStack {
            Image("\(prefix)_back")
            Spacer()
            NavigationLink {
                GameView(prefix: prefix)
            } label: {
                Text("Start Game")
            }
        }
        .frame(height: 300)
        .background(
            ZStack {
                Color.blue
                    .cornerRadius(30)
                    .padding(20)
                Image("\(prefix)_bg")
                    .resizable()
                    .padding(40)
            }
        )
    }
}
