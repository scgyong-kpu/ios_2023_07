//
//  ContentView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 2023/07/14.
//

import SwiftUI

struct PoiListView: View {
    @ObservedObject var poiData = PoiDataStore.get()
    var body: some View {
        NavigationView {
            List {
                ForEach(poiData.items, id: \.RESTRT_NM) { item in
                    PoiItemView(item: item)
                }
            }
        }
        .onAppear {
            poiData.startLoading()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PoiListView()
    }
}

struct PoiItemView: View {
    let item: PoiItem
    var body: some View {
        Text(item.RESTRT_NM)
    }
}
