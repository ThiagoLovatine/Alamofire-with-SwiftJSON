//
//  ViewController.swift
//  AlamoFireHttp
//
//  Created by Thiago Lovatine on 14/09/17.
//  Copyright © 2017 Thiago Lovatine. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://jsonplaceholder.typicode.com/users").responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                for (_,subJson):(String, JSON) in json {
                    //Do something you want
                    print(subJson["name"])
                }
            case .failure(let error):
                print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

