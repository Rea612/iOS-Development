//
//  ViewController.swift
//  What Is My Phone Number
//
//  Created by Rui Zou on 11/26/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numInput: UITextField!
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(numInput.text, forKey: "number")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let numObj = UserDefaults.standard.object(forKey: "number")
        if let number = numObj as? String {
            numInput.text = number
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

