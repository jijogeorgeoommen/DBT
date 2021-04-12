//
//  LoginViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 08/04/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    var netWorkAvailable = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "LOGIN"
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
        userLoginApiCall(username: "roykow11@mailinator.com", password: "123456")
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
