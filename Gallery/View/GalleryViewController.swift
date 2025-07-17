//
//  GalleryViewController.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet private weak var searchView: UISearchBar!
    @IBOutlet private weak var imagesCollectionView: UICollectionView!
    var images: [Images] = []
    var allImages: [Images] = []
    var galleryViewModel: GalleryViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryViewModel = GalleryViewModel(remoteSource: Network())
        registerCell()
        galleryViewModel.getAllImages()
        galleryViewModel.bindPhotos = { [weak self] in
            self?.images = self?.galleryViewModel.allImages ?? []
            self?.allImages = self?.galleryViewModel.allImages ?? []
            print(self?.images.count)
            self?.imagesCollectionView.reloadData()
        }
        
    }
    
    private func registerCell() {
        imagesCollectionView.register(UINib(nibName: ImageCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ImageCollectionViewCell.identifier)
    }
}

extension GalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: indexPath) as! ImageCollectionViewCell
        
        cell.add(image: images[indexPath.item])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let fullScreenVC = FullSizeImageViewController()
        fullScreenVC.modalPresentationStyle = .fullScreen
        fullScreenVC.image = images[indexPath.item].urls?.full
        present(fullScreenVC, animated: true, completion: nil)
    }
    
}
extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width - 20) / 2, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
}
extension GalleryViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            images = allImages
        } else {
            images = allImages.filter {
                $0.slug?.lowercased().contains(searchText.lowercased()) ?? false
            }
        }
        imagesCollectionView.reloadData()
    }
}
