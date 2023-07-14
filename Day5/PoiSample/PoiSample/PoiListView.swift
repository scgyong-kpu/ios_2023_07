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
                    Text(item.RESTRT_NM)
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
