//
//  RotationGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/07/12.
//

import SwiftUI

struct RotationGestureView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "arrow.right.circle")
                    .font(.largeTitle)
                    .scaleEffect(4.0)
                    .padding()
                Text("Rotation!")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundColor(.purple)
            .background(Color.orange.opacity(0.3))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.2))
        .navigationTitle("Rotation")
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RotationGestureView()
        }
    }
}
