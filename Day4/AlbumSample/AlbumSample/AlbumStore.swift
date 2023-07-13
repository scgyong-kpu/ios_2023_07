//
//  AlbumStore.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/07/13.
//

import Foundation

struct Album: Decodable {
    let artistName: String
    let albumTitle: String
    let image: String
}

struct AlbumResponse: Decodable {
    let albums: [Album]
}

class AlbumStore: ObservableObject {
    private static let instance = AlbumStore()
    static func get() -> AlbumStore { instance }
    @Published var albums = [Album]()
    
    private init() {}
    
    func load() {
        
    }
}
