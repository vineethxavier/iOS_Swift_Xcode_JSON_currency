//
//  ViewController.swift
//  jsonCurrency
//
//  Created by Vineeth Xavier on 10/11/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let url = url(String: "http://api.fixer.io/latest")
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil{
                print("Error!!!")
            }
            if let content = data{
                do{//array
                    let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableLeaves) as AnyObject
                }
                catch{
                    
                }
            }
        }
        
        
    }
tasks.resume()
}

