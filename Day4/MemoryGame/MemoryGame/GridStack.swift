//
//  GridStack.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct GridStack: View {
    let cols: Int
    let rows: Int
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< cols, id: \.self) { col in
                        Image(systemName: "globe")
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct GridStack_Previews: PreviewProvider {
    static var previews: some View {
        GridStack(cols: 3, rows: 4)
    }
}
