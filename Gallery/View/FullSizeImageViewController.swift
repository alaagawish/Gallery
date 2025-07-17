//
//  FullSizeImageViewController.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import UIKit
import SDWebImage

class FullSizeImageViewController: UIViewController {
    var image: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let imageImageView = UIImageView(frame: view.bounds)
        imageImageView.contentMode = .scaleAspectFit
        imageImageView.isUserInteractionEnabled = true
        
        let url = URL(string: image ?? "")
        imageImageView.sd_setImage(with: url, placeholderImage: UIImage(named: "error"))
        view.addSubview(imageImageView)
        
        let tapToDismiss = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreen))
        imageImageView.addGestureRecognizer(tapToDismiss)
    }
    
    @objc func dismissFullscreen() {
        dismiss(animated: true, completion: nil)
    }
}
