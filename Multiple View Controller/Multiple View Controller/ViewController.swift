//
//  ViewController.swift
//  Multiple View Controller
//
//  Created by Rui Zou on 11/26/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //function for tap else where other than keyboard to disappear keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //function for press return then disappear keyboard
    func textFieldShouldReturn (_ textField: UITextField) ->Bool {
        textField.resignFirstResponder()
        return true
    }

}

