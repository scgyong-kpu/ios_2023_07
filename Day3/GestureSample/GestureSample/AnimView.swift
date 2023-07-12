//
//  AnimView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/07/12.
//

import SwiftUI

struct AnimView: View {
    @State var spinning = false
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.purple)
                .rotationEffect(.degrees(spinning ? 360 : 0))
                .animation(
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false),
                    value: spinning ? 360 : 0
                )
            Toggle(isOn: $spinning) {
                Text("Spins")
                    .font(.title)
            }
            .frame(width: 200)
        }
        .navigationTitle("Animation")
    }
}

struct AnimView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnimView()
        }
    }
}
