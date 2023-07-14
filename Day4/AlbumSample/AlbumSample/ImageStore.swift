//
//  ImageStore.swift
//  AlbumSample
//
//  Created by Kiyong Kim on 2023/07/14.
//

import SwiftUI

class ImageStore {
    private static var cache = [String: Image]()
    
    static func load(urlString: String, callback: @escaping (Image)->Void) {
        if let img = cache[urlString] {
            callback(img)
            return
        }
        guard let url = URL(string: urlString) else { return }
        print("Download starts: \(urlString)")
        let task = URLSession.shared.dataTask(with: url) { data, resp, err in
            guard let data = data else { return }
            guard let uiImg = UIImage(data: data) else { return }
            let img = Image(uiImage: uiImg)
            OperationQueue.main.addOperation {
                print("Download done : \(urlString)")
                cache[urlString] = img
                callback(img)
            }
        }
        task.resume()
    }
}
