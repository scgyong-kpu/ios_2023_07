//
//  ContentView.swift
//  MoreControls
//
//  Created by user on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    @State var rotDegrees = 0.0
    @State var large = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! \(rotDegrees)")
            Image(systemName: "arrow.right.circle")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                //.frame(width: large ? 200 : 100, height: 200)
                .scaleEffect(large ? 1.0 : 0.5)
                .foregroundColor(.yellow)
                .rotationEffect(.degrees(rotDegrees * 360))
                .shadow(color: .red, radius: 10, x: 10, y: 10)
            Slider(value: $rotDegrees)
                .frame(width: 200)
            Toggle(isOn: $large) {
                Text("Shows Large Circle")
            }
            .padding()
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
