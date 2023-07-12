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
            GeometryReader { gr in
                Path { g in
                    let rect = CGRect(origin: .zero, size: gr.size)
                    g.move(to: CGPoint(x: rect.size.width/2, y: 0))
                    g.addQuadCurve(
                        to: CGPoint(x: rect.width/2, y: rect.height),
                        control: CGPoint(x: rect.width, y: rect.height)
                    )
                    g.addQuadCurve(
                        to: CGPoint(x: rect.size.width/2, y: 0),
                        control: CGPoint(x: 0, y: rect.height)
                    )
                }
                .fill(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [Color.white, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                )
            }
            .frame(width: 200)
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
