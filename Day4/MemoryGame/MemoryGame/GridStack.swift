//
//  GridStack.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let cols: Int
    let rows: Int
    let content: (_ row: Int, _ col: Int) -> Content
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< cols, id: \.self) { col in
                        self.content(row, col)
                    }
                }
            }
        }
    }
}

struct GridStack_Previews: PreviewProvider {
    static var previews: some View {
        GridStack(cols: 4, rows: 6) { row, col in
            Text("\(row).\(col)")
                .font(.largeTitle)
                .padding()
                .border(Color.red)
        }
    }
}
