//
//  GalleryViewModel.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import Foundation

class GalleryViewModel {
    var remoteSource: RemoteSourceProtocol!
    init(remoteSource: RemoteSourceProtocol!) {
        self.remoteSource = remoteSource
    }
    var bindPhotos: (()->()) = {}
    var allImages: [Images] = [] {
        didSet {
            bindPhotos()
        }
    }
    
    func getAllImages() {
        remoteSource.getImages { [weak self] result in
            self?.allImages = result ?? []
            print("kkkk \(self?.allImages.count)")
        }
    }
}
