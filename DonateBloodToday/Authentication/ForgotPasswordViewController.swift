//
//  ForgotPasswordViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 09/04/21.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet var view_Email: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view_Email.layer.borderWidth = 1
        view_Email.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.setTitle("Forgot Password", andImage: UIImage(named: "logoRight")!)
        view_Email.layer.borderWidth = 1
        view_Email.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    

}
