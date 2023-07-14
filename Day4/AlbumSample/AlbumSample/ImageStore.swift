//
//  ImageStore.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/07/14.
//

import SwiftUI

class ImageStore {
    static func load(urlString: String, callback: @escaping (Image)->Void) {
        OperationQueue().addOperation {
            guard let url = URL(string: urlString) else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            guard let uiImg = UIImage(data: data) else { return }
            let img = Image(uiImage: uiImg)
            OperationQueue.main.addOperation {
                callback(img)
            }
        }
    }
}
