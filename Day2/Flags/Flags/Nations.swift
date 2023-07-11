//
//  Nations.swift
//  Flags
//
//  Created by user on 2023/07/11.
//

import Foundation

struct Country {
    let name: String
    let file: String
}

struct Region {
    let title: String
    let countries: [Country]
    
    static let all: [Region] = [
        Region(title: "Asia", countries: [
            Country(name: "Korea", file: "korea.png"),
            Country(name: "Japan", file: "japan.png"),
        ]),
        Region(title: "Europe", countries: [
            Country(name: "England", file: "korea.png"),
            Country(name: "France", file: "japan.png"),
        ])
    ]
}
