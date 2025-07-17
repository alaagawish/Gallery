//
//  ImageCollectionViewCell.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import UIKit
import SDWebImage

class ImageCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "ImageCollectionViewCell"
    @IBOutlet private weak var imageImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func add(image: Images) {
        let url = URL(string: image.urls?.full ?? "")
        imageImageView.sd_setImage(with: url, placeholderImage: UIImage(named: "error"))
    }
}
