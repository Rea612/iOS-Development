//
//  ViewController.swift
//  DataStorage
//
//  Created by Rui Zou on 11/26/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//
//Using UserDefaults.standard.set can help to save data permanantly. 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UserDefaults.standard.set("Summer", forKey:"name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String {
            print(name)
        }
        //let arr = [1, 2, 3, 4]
        //UserDefaults.standard.set(arr, forKey: "array")
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        if let array = arrayObject as? NSArray {
            print(array)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

