//
//  ShapeView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 2023/07/12.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack {
            Color.red
                .frame(width: 200, height: 50)
            Rectangle()
                .stroke(lineWidth: 20)
                .fill(
                    LinearGradient(
                        colors: [.red, .blue],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 50)
                .cornerRadius(5)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 10)
                .frame(height: 50)
                .padding()
            Capsule()
                .stroke(lineWidth: 10)
                .foregroundColor(.blue)
                .frame(height: 100)
                .padding(.horizontal)
            Circle()
                .frame(width: 100, height: 50)
            Ellipse()
                .frame(width: 100, height: 50)
            Path { g in
                g.move(to: .zero)
                g.addLine(to: CGPoint(x: 100, y: 200))
                g.addLine(to: CGPoint(x: 200, y: 100))
                g.addLine(to: CGPoint(x: 150, y: 50))
                g.closeSubpath()
            }
            .stroke(lineWidth: 5)
            .fill(.blue)
        }
        .navigationTitle("Shapes")
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShapeView()
        }
    }
}
