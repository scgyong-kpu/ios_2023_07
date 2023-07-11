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
            ForEach(Region.all, id: \.title) { region in
                Section(region.title) {
                    ForEach(region.countries, id: \.name) { country in
                        HStack {
                            Image(country.file)
                            VStack {
                                Text(country.name)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("\(country.name.count) million people")
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                }
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
