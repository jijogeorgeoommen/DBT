//
//  SignUpViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 09/04/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var img_ProfileImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "SIGN UP"
        navigationController?.navigationBar.isHidden = false
        viewSetup()
       
    }
    

    
    func viewSetup() {
        img_ProfileImage.layer.borderWidth = 1
        img_ProfileImage.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        img_ProfileImage.layer.cornerRadius = 40
        img_ProfileImage.layer.masksToBounds = true
    }
    
    
    
    
}
