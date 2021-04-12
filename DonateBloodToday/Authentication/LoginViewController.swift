//
//  LoginViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 08/04/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    var netWorkAvailable = false
    
    
    @IBOutlet weak var view_userEmail: UIView!
    @IBOutlet weak var view_userPassword: UIView!
    
    @IBOutlet weak var txtField_userEmail: UITextField!
    
    @IBOutlet weak var txtField_userPassword: UITextField!
    
    @IBOutlet weak var img_userEmail: UIImageView!
    
    @IBOutlet weak var img_userPassword: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTitle("Log In", andImage: UIImage(named: "logoRight")!)
        navigationController?.navigationBar.isHidden = false
    }
    
    func checkNetworkAvailability() {
        netWorkAvailable =  (CheckReachability.isConnected()) ? true : false
        print("netWorkAvailable :", netWorkAvailable)
    }
    
    
    @IBAction func btn_ForgotPasswordTapped(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
    
    @IBAction func btn_LoginTapped(_ sender: Any) {
        checkNetworkAvailability()
        
        if txtField_userEmail.hasText {
            
            if txtField_userPassword.hasText {
                
                userLoginApiCall(username: txtField_userEmail.text ?? "", password: txtField_userPassword.text ?? "")
            }else {
                // no text in password
            }
            
        }else {
            // no text in email
        }
        
        
       
    }
    
    func userLoginApiCall(username:String,password:String) {
        
        if netWorkAvailable {
            let params = ["email" : username, "password" : password, "ind_org" : 1, "current_location_lat" : "", "current_location_long" : ""] as [String : Any]
            ApiManager.shared.userLogin(loginParams: params) { (responseData) in
                print("respData :",responseData)
            }
        } else {
            self.ShowNoInternet()
        }
    }
    
}
