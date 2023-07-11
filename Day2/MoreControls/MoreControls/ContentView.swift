//
//  ContentView.swift
//  MoreControls
//
//  Created by user on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    var names = [
        "hello", "world", "worl431","w3443orld1","4343world1","world43341",
        "worlfs3wd1","wogsewrld1","world1","worlfdsd1","worfsdld1","wo34435rld1",
        "wor234453ld1","worgsdgld1","worlgsdgd1","worlgsgsd1","worfsfs433ld1","w443orld1",
    ]

    var body: some View {
            List {
                ForEach(names, id: \.self) { row in
                    HStack {
                        Image(systemName: "pencil.tip.crop.circle.badge.arrow.forward")
                        Text(row)
                    }
                }
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [
                .white, .cyan, .red
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
