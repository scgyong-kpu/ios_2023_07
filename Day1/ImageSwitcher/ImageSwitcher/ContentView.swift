//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2023/07/10.
//

import SwiftUI

struct TopButton: View {
    var isLeft: Bool
    var body: some View {
        Button {
        } label: {
            let name = isLeft ? "arrow.left.circle.fill" : "arrow.right.circle.fill"
            Image(systemName: name)
        }
        .background(Color.yellow)
        .padding()
        .background(Color.blue)
    }
}

struct TopBotton_Previews: PreviewProvider {
    static var previews: some View {
        TopButton(isLeft: true)
    }
}

struct ContentView: View {
    @State var page = 1
    var body: some View {
        VStack {
            HStack {
                TopButton(isLeft: true)
                Text("\(page) / 5")
                    .frame(maxWidth: .infinity)
                TopButton(isLeft: false)
            }
            .font(.largeTitle)
            Image("cat\(page)")
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
