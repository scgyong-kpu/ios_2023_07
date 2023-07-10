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
            HStack {
                Image(systemName: "arrow.left.circle.fill")
                Text("1 / 5")
                    .frame(maxWidth: .infinity)
                Image(systemName: "arrow.right.circle.fill")
            }
            .font(.largeTitle)
            Image("cat1")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
