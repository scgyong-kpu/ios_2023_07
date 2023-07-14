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
        HStack {
            Image(systemName: "fork.knife.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64)
                .foregroundStyle(
                    .linearGradient(
                        Gradient(colors: [.yellow, .purple]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            VStack(alignment: .leading) {
                Text(item.RESTRT_NM)
                    .font(.title)
                    .foregroundColor(.blue)
                Text(item.REPRSNT_FOOD_NM)
                Text(item.REFINE_ROADNM_ADDR)
                    .font(.footnote)
                    .lineLimit(1)
                    .foregroundColor(.gray)
           }
        }
    }
}
