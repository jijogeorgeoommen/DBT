//
//  LoginSelectionViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 08/04/21.
//

import UIKit

class LoginSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       // navigationController?.navigationBar.isHidden = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = true
    }
    
    
    

    @IBAction func btn_LoginTapped(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func btn_SignUpTapped(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
   
    @IBAction func btn_callForHelpTapped(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SeekHelpViewController") as! SeekHelpViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
