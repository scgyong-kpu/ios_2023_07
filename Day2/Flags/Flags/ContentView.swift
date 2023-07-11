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
            Section("Group1") {
                Text("Korea")
                Text("Japan")
                Text("Korea")
                Text("Japan")
                Text("Korea")
                Text("Japan")
                Text("Korea")
                Text("Japan")
                Text("Korea")
                Text("Japan")
            }
            Section("Group2") {
                Text("China")
                Text("USA")
                Text("China")
                Text("USA")
                Text("China")
                Text("USA")
                Text("China")
                Text("USA")
                Text("China")
                Text("USA")
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
