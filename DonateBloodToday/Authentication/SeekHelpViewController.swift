//
//  SeekHelpViewController.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 12/04/21.
//

import UIKit

class SeekHelpViewController: UIViewController {
    
    
    @IBOutlet weak var img_Unchecked: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = false
        self.setTitle("Seek Help", andImage: UIImage(named: "logoRight")!)
    }

    @IBAction func btn_ShareWithContactTapped(_ sender: UIButton) {
        
        print("Tapped")
        img_Unchecked.image = UIImage(named: "checked")
        
    }
}
