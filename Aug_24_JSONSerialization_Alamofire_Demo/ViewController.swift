//
//  ViewController.swift
//  Aug_24_JSONSerialization_Alamofire_Demo
//
//  Created by Vishal Jagtap on 06/11/24.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var url : URL?
    var parameters : [String:Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        url = URL(string: Constants.Constants.urlStringForUsers)
        parameters = [ "name": "morpheus",
                       "job": "leader" ]
        postUserData(url: url!, parameters: parameters!)
    }
    
    func postUserData(url : URL, parameters : Dictionary<String,Any>){
        AF.request(url,
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default).response { res in
            res.result
                print(res.result)
            switch(res.result){
                case .success(let data):
                    print(data)
                    print(res.response)
                case .failure(let error):
                    print(error)
            }
        }
    }
}
