//
//  SecondViewController.swift
//  To Do List
//
//  Created by Rui Zou on 11/27/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var inputText: UITextField!
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let temp = itemsObject as? [String]{
            items = temp
            items.append(inputText.text!)
        }
        else {
            items = [inputText.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        inputText.text = ""
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

