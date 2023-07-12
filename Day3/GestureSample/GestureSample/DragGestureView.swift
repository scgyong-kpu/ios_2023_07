//
//  DragGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/07/12.
//

import SwiftUI

struct DragGestureView: View {
    @State var globePosition = CGSize.zero
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .offset(globePosition)
                .foregroundColor(.blue)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            globePosition = value.translation
                            //print("Dragging")
                        }
                )
        }
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
