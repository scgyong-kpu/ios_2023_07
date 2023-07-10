//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2023/07/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "arrow.up.bin")
                .resizable()
                .frame(maxWidth:.infinity)
                .foregroundColor(.accentColor)
                .background(
                    Capsule()
                        .foregroundColor(Color.yellow)
                )
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .stroke()
            Capsule()
            Color.red
            Text("Hello, world!")
                .font(.largeTitle)
                .padding()
                .foregroundColor(Color.blue)
                .background(Color.yellow)
                .padding()
                .border(Color.black)
            HStack {
                Image(systemName: "pencil.circle.fill")
                Text("Pencil")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
