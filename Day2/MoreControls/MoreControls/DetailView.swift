//
//  DetailView.swift
//  MoreControls
//
//  Created by user on 2023/07/11.
//

import SwiftUI

struct DetailView: View {
    var item: String
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text("Hello, \(item)!")
                .font(.largeTitle)
        }
        .navigationTitle(item)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: "Test")
    }
}
