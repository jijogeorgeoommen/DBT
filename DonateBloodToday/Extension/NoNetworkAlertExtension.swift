//
//  NoNetworkAlertExtension.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 08/04/21.
//

import Foundation
import UIKit

extension UIViewController {
    
    func ShowNoInternet() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "NoNetworkVC") as! NoNetworkVC
       self.present(secondViewController, animated: true, completion: nil)
    }
}
