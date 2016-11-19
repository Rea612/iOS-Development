//
//  ViewController.swift
//  ImageApp
//
//  Created by Rui Zou on 11/18/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ageField: UITextField!
    @IBOutlet var ageLabel: UILabel!
    @IBAction func submitPress(_ sender: AnyObject) {
        var age = Int(ageField.text!)! * 4
        ageLabel.text = String(age)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

