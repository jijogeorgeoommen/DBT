//
//  SeekHelpViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 12/04/21.
//

import UIKit

class SeekHelpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = false
        self.setTitle("Seek Help", andImage: UIImage(named: "logoRight")!)
    }

}
