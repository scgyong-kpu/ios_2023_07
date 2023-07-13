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
            List {
                ForEach(prefixes, id: \.self) { prefix in
                    NavigationLink {
                        GameView(prefix: prefix)
                    } label: {
                        Text("Game")
                    }
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
