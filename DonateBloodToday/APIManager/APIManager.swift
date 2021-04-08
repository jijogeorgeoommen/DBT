//
//  APIManager.swift
//  DonateBloodToday
//
//  Created by Jijo G Oommen on 08/04/21.
//
import UIKit
import Foundation
import Alamofire
import SwiftyJSON

class ApiManager: NSObject {
    static let shared = ApiManager()
    var sessionManager = Alamofire.Session.default
    var headers: HTTPHeaders = [
        "User-Agent": "IOS_APP",
        "Content-Type" : "application/x-www-form-urlencoded"
    ]

   //MARK:-Login API Call
    
    func userLogin(loginParams : [String: Any], completionHandler : @escaping(AnyObject)->() ) {
        
        var headers: HTTPHeaders = [
            "User-Agent": "IOS_APP",
            "Accept": "application/json",
            "Content-Type" : "application/x-www-form-urlencoded"
        ]
        
        let url=Constants.BASEURL+"login"
        print("url :-", url)
        print("login params = ", loginParams.keys)
        sessionManager.request(url,method: .post,parameters: loginParams,encoding:URLEncoding.httpBody ,headers: headers).responseJSON(completionHandler: { response in
            let result = response.data
            let json:AnyObject! = JSON(result as Any).object as AnyObject
            completionHandler(json)
        })
    }
    
    
    
}
