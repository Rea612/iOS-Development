//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Rui Zou on 11/17/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: AnyObject) {
        nameLabel.text = textField.text
    }
    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

