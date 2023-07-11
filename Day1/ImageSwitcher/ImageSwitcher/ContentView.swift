//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2023/07/10.
//

import SwiftUI

struct ContentView: View {
    @State var page = 1
    var body: some View {
        VStack {
            HStack {
//                Button(action:{
//
//                }, label: {
//
//                })
                Button {
                    page -= 1
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                .background(Color.yellow)
                .padding()
                .background(Color.blue)
                .disabled(page == 1)

                Text("\(page) / 5")
                    .frame(maxWidth: .infinity)
                Button {
                    page += 1
//                    print("Right clicked")
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                }
                .background(Color.yellow)
                .padding()
                .background(Color.blue)
                .disabled(page == 1)
                .disabled(page == 5)
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
