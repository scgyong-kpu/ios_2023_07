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
        NavigationView {
            VStack {
                List {
                    ForEach(albumStore.albums, id: \.albumTitle) { album in
                        AlbumItemView(album: album)
                    }
                }
            }
            .overlay(
                ZStack {
                    Color.gray.opacity(0.75)
                        .frame(width: 150, height: 150)
                        .cornerRadius(30)
                    VStack {
                        ProgressView()
                            .controlSize(.large)
                            .padding()
                        Text("Loading...")
                            .foregroundColor(.white)
                    }
                }
                .opacity(albumStore.albums.isEmpty ? 1 : 0)
            )
            .navigationTitle("Albums")
        }
        .onAppear {
            albumStore.loadRemote()
        }
    }
}

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}

struct AlbumItemView: View {
    let album: Album
    var body: some View {
        HStack {
            albumImage()
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64)
            VStack(alignment: .leading) {
                Text(album.albumTitle)
                    .font(.headline)
                    .lineLimit(2)
                    .foregroundColor(Color("albumTitleColor"))
                Text(album.artistName)
                    .font(.footnote)
                    .foregroundColor(Color("artistNameColor"))
                    .padding(.top, 4)
            }
        }
    }
    @State var image: Image?
    func albumImage() -> Image {
        if image != nil { return image! }
        ImageStore.load(urlString: album.image) { img in
            image = img
        }
        return Image(systemName: "music.note.list")
    }
}
