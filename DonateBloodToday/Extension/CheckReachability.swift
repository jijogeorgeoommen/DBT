//
//  CheckReachability.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 08/04/21.
//

import Foundation
import Reachability
import Alamofire

class CheckReachability {
    class func isConnected() ->Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}
