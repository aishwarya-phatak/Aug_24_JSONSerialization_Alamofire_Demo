//
//  HomeViewController.swift
//  Aug_24_JSONSerialization_Alamofire_Demo
//
//  Created by Vishal Jagtap on 06/11/24.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {

    var url : URL?
    override func viewDidLoad() {
        super.viewDidLoad()
        url = URL(string: Constants.Constants.urlStringForGetUsers)
        getUsers(url: url!)
    }
    
    func getUsers(url : URL){
        AF.request(url).response { res in
            res.result
            print(res.result)
            
            switch(res.result){
                
              case .success(let data):
                print(res.response)
                print(data)
                print(res.result)
              case .failure(let error):
                print(error)
            }
        }
    }
}
