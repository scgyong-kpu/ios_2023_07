//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct CardView: View {
    let prefix: String
    let card: Card
    var body: some View {
        Image(filename)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    var filename: String {
        if card.state == .closed { return "\(prefix)_back" }
        return String(format: "\(prefix)_%02d_%02d", card.number, 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForEach(1...10, id: \.self) { n in
                HStack {
                    CardView(prefix: "f", card: Card(number: n, state: .open))
                    CardView(prefix: "f", card: Card(number: n, state: .closed))
                    CardView(prefix: "f", card: Card(number: n, state: .removed))
               }
            }
       }
    }
}
