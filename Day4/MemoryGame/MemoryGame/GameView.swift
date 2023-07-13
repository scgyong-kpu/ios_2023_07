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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
