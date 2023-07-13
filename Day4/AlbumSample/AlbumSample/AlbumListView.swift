//
//  ContentView.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/07/13.
//

import SwiftUI

struct AlbumListView: View {
    @ObservedObject var albumStore = AlbumStore.get()
    var body: some View {
        VStack {
            List {
                ForEach(albumStore.albums, id: \.albumTitle) { album in
                    Text(album.albumTitle)
                }
            }
        }
        .onAppear {
            albumStore.load()
        }
    }
}

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
