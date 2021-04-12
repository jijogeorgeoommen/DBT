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

        self.navigationItem.title = "SIGN UP"
        navigationController?.navigationBar.isHidden = false
        viewSetup()
       
    }
    

    
    func viewSetup() {
        img_ProfileImage.layer.borderWidth = 1
        img_ProfileImage.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        img_ProfileImage.layer.cornerRadius = 40
        img_ProfileImage.layer.masksToBounds = true
        
        view_Firstname.layer.borderWidth = 1
        view_Firstname.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_Lastname.layer.borderWidth = 1
        view_Lastname.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_BloodGroup.layer.borderWidth = 1
        view_BloodGroup.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_PhoneNumber.layer.borderWidth = 1
        view_PhoneNumber.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_Email.layer.borderWidth = 1
        view_Email.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_Password.layer.borderWidth = 1
        view_Password.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_selectCountry.layer.borderWidth = 1
        view_selectCountry.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_SelectState.layer.borderWidth = 1
        view_SelectState.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_SelectCity.layer.borderWidth = 1
        view_SelectCity.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_DOB.layer.borderWidth = 1
        view_DOB.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_LastDonated.layer.borderWidth = 1
        view_LastDonated.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        view_verificationCode.layer.borderWidth = 1
        view_verificationCode.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
    }
    
    
    
    
}
