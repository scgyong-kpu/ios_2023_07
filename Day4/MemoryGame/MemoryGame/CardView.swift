//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct CardView: View {
    let prefix: String
    let number: Int
    var body: some View {
        Image("\(prefix)_\(String(format: "%02d", number))_01")
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CardView(prefix: "f", number: 1)
            CardView(prefix: "f", number: 2)
            CardView(prefix: "f", number: 3)
            CardView(prefix: "f", number: 4)
       }
    }
}
