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
            Text("Rotation!")
        }
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
