//
//  ContentView.swift
//  Flags
//
//  Created by user on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section(Region.all[0].title) {
                Text(Region.all[0].countries[0].name)
                Text(Region.all[0].countries[1].name)
            }
            Section(Region.all[1].title) {
                Text(Region.all[1].countries[0].name)
                Text(Region.all[1].countries[1].name)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
