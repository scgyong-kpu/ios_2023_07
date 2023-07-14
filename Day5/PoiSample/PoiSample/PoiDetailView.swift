//
//  PoiDetailView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 2023/07/14.
//

import SwiftUI

struct PoiDetailView: View {
    let item: PoiItem
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.RESTRT_NM)
            Text(item.REPRSNT_FOOD_NM)
            Text(item.SIGUN_NM)
            Text(item.TASTFDPLC_TELNO)
            Text(item.REFINE_ROADNM_ADDR)
        }
        .navigationTitle(item.RESTRT_NM)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PoiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PoiDetailView(item: load())
        }
    }
    static func load() -> PoiItem {
        return try! JSONDecoder().decode(
            PoiItem.self,
            from: json.data(using: .utf8)!
        )
    }
    static let json = """
    {
              "SIGUN_NM": "안산시",
              "SIGUN_CD": "41270",
              "RESTRT_NM": "해미청",
              "REPRSNT_FOOD_NM": "해물찜",
              "TASTFDPLC_TELNO": "031-438-7789",
              "RM_MATR": null,
              "REFINE_LOTNO_ADDR": "경기도 안산시 상록구 본오동 778-1번지",
              "REFINE_ROADNM_ADDR": "경기도 안산시 상록구 각골로 47",
              "REFINE_ZIP_CD": "15549",
              "REFINE_WGS84_LOGT": "126.8722885",
              "REFINE_WGS84_LAT": "37.29377283"
            }
    """
}
