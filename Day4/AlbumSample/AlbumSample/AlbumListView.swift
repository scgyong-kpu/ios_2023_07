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
                albumImage()
                List {
                    ForEach(albumStore.albums, id: \.albumTitle) { album in
                        AlbumItemView(album: album)
                    }
                }
            }
            .navigationTitle("Albums")
        }
        .onAppear {
            //albumStore.load()
        }
    }
    @State var image: Image?
    func albumImage() -> Image {
        if image != nil { return image! }
        let s = "http://scgyong.net/thumbs/slow.php/204_192502.jpg"
        ImageStore.load(urlString: s) { img in
            image = img
        }
        return Image(systemName: "music.note.list")
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
            Image(systemName: "music.note.list")
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
}
