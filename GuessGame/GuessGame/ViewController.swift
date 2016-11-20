//
//  ViewController.swift
//  GuessGame
//
//  Created by Rui Zou on 11/18/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputNumber: UITextField!
    @IBAction func submitGuess(_ sender: AnyObject) {
        let result = String(arc4random_uniform(10));
        if inputNumber.text == result {
        displayResult.text = "Congratulations! You are right!"
        }
        else {displayResult.text = "Sorry, you are wrong, my number is \(result)"
        }
        
        
        
    }
    @IBOutlet var displayResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

