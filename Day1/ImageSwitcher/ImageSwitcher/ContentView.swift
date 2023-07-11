//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2023/07/10.
//

import SwiftUI

struct TopButton: View {
    var isLeft: Bool
    var enabled: Bool
    var action: ()->Void
    var body: some View {
        Button {
            action()
        } label: {
            let name = isLeft ? "arrow.left.circle.fill" : "arrow.right.circle.fill"
            Image(systemName: name)
        }
        .background(Color.yellow)
        .padding()
        .background(Color.blue)
        .disabled(!enabled)
    }
}

struct TopBotton_Previews: PreviewProvider {
    static var previews: some View {
        TopButton(isLeft: true, enabled: false) {}
    }
}

struct ContentView: View {
    @State var page = 1
    var body: some View {
        VStack {
            HStack {
                TopButton(isLeft: true, enabled: page > 1) {
                    page -= 1
                }
                Spacer()
                Text("\(page) / 5")
                Spacer()
                TopButton(isLeft: false, enabled: page < 5) {
                    page += 1
                }
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
