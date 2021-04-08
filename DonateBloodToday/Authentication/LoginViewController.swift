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
    }
    
    func checkNetworkAvailability() {
        netWorkAvailable =  (CheckReachability.isConnected()) ? true : false
        print("netWorkAvailable :", netWorkAvailable)
    }
    
    @IBAction func btn_LoginTapped(_ sender: Any) {
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
