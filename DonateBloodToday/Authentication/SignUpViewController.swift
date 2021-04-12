//
//  SignUpViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 09/04/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var img_ProfileImage: UIImageView!
    
    
    @IBOutlet weak var view_Firstname: UIView!
    @IBOutlet weak var view_Lastname: UIView!
    @IBOutlet weak var view_BloodGroup: UIView!
    @IBOutlet weak var view_PhoneNumber: UIView!
    @IBOutlet weak var view_Email: UIView!
    @IBOutlet weak var view_Password: UIView!
    @IBOutlet weak var view_selectCountry: UIView!
    @IBOutlet weak var view_SelectState: UIView!
    @IBOutlet weak var view_SelectCity: UIView!
    @IBOutlet weak var view_DOB: UIView!
    @IBOutlet weak var view_LastDonated: UIView!
    @IBOutlet weak var view_verificationCode: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTitle("Sign Up", andImage: UIImage(named: "logoRight")!)
       
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
