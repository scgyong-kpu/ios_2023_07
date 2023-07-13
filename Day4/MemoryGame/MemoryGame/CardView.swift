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
    let open: Bool
    var body: some View {
        Image(filename)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    var filename: String {
        if !open { return "\(prefix)_back" }
        return String(format: "\(prefix)_%02d_%02d", number, 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CardView(prefix: "f", number: 1, open: true)
            CardView(prefix: "f", number: 2, open: false)
            CardView(prefix: "f", number: 3, open: true)
            CardView(prefix: "f", number: 4, open: false)
       }
    }
}
