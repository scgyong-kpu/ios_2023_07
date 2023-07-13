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
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var frameIndex = 1
    var body: some View {
        Image(filename)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onReceive(timer) { _ in
                if card.state != .open {
                    timer.upstream.connect().cancel()
                    return
                }
                frameIndex += 1
                let img = UIImage(named: filename)
                if img == nil {
                    frameIndex = 1
                }
            }
            .opacity(card.state == .removed ? 0 : 1)
    }
    var filename: String {
        if card.state == .closed { return "\(prefix)_back" }
        return String(format: "\(prefix)_%02d_%02d", card.number, frameIndex)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForEach(1...10, id: \.self) { n in
                HStack {
                    CardView(prefix: "z", card: Card(number: n, state: .open))
                    CardView(prefix: "z", card: Card(number: n, state: .closed))
                    CardView(prefix: "z", card: Card(number: n, state: .removed))
               }
            }
       }
    }
}
