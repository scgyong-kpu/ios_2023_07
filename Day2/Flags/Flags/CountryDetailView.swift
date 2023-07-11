//
//  CountryDetailView.swift
//  Flags
//
//  Created by user on 2023/07/11.
//

import SwiftUI

struct CountryDetailView: View {
    let country: Country
    var body: some View {
        List {
            Image(country.file)
                .resizable()
                .frame(width: 200, height: 200)
            Text(country.name)
            Text("\(country.name.count) million people")
            Text("Blah blah")
            Text("Something")
        }
        .navigationTitle(country.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CountryDetailView(country: Country(name: "대한민국🇰🇷", file: "south_korea"))
        }
    }
}
