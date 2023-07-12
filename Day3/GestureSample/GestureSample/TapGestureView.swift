//
//  TapGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/07/12.
//

import SwiftUI

struct TapGestureView: View {
    @State var count = 0
    var title: String {
        if count == 0 { return "" }
        return "\(count)"
    }
    var body: some View {
        VStack {
            Text("Tap Me ! \(title)")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .onTapGesture {
                    count += 1
                }
            Text("LongPress Me!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .onLongPressGesture {
                    count += 10
                }
        }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
