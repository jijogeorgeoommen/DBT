//
//  Extensions.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 12/04/21.
//

import Foundation
import UIKit

extension UIViewController {
    func setTitle(_ title: String, andImage image: UIImage) {
        let titleLbl = UILabel()
        titleLbl.text = title
        titleLbl.textColor = UIColor.black
        titleLbl.font = UIFont.systemFont(ofSize: 18.0, weight: .bold)
        let imageView = UIImageView(image: image)
        let titleView = UIStackView(arrangedSubviews: [imageView, titleLbl])
        titleView.axis = .horizontal
        titleView.spacing = 10.0
        navigationItem.titleView = titleView
    }
    
    
    
}

extension UIViewController {
    
    func popalert(message : String, title : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
}
