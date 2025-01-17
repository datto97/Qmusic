//
//  KingFisher+Extensions.swift
//  facepay_v3
//
//  Created by Nguyen Thanh Duc on 10/11/2020.
//

import Foundation
import Kingfisher
import UIKit

extension UIImageView {
    func setImage(from url: URL) {
        self.kf.setImage(
            with: url,
            placeholder: nil,
            options: [
                .transition(.fade(0.25)),
            ],
            progressBlock: { receivedSize, totalSize in
                // Progress updated
            },
            completionHandler: { result in
                // Done
            })
    }
}

extension String {
    func getImage(completionHandler: @escaping(_ result: UIImage) -> Void){
//        guard let url = URL.init(string: self) else {
//            return
//        }
//        let resource = ImageResource(downloadURL: url)
//        KingfisherManager.shared.retrieveImage(with: resource, options: nil, progressBlock: nil, completionHandler: { image, error, cacheType, imageURL in
//            if let img = image{
//                completionHandler(img)
//            }
//        })
    }
}

extension UIButton {
    func setImage(from url: URL) {
        let source = KF.ImageResource(downloadURL: url)
        kf.setImage(with: source, for: .normal)
    }
}
