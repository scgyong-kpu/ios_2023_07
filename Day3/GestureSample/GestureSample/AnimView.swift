//
//  AnimView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/07/12.
//

import SwiftUI

struct AnimView: View {
    @State var spinning = true
    @State var angle = Angle.zero
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.purple)
                .rotationEffect(angle)
                .animation(
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false),
                    value: angle
                )
            Toggle(isOn: $spinning) {
                Text("Spins")
                    .font(.title)
            }
            .frame(width: 200)
        }
        .onAppear {
            angle = .degrees(360)
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
