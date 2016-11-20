//
//  ViewController.swift
//  isPrime
//
//  Created by Rui Zou on 11/19/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var input: UITextField!
    @IBAction func pressButton(_ sender: AnyObject) {
        if var userInputString = input.text {
            var userInput = Int(userInputString)
            if var number = userInput {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var counter = 2
                while counter < number {
                    if number % counter == 0 {
                        isPrime = false
                    }
                    counter+=1
                }
                if isPrime {
                    resultLabel.text = "\(number) is a prime!"
                }
                else {
                    resultLabel.text = "\(number) is not a prime."
                
            }
        } else {
            resultLabel.text = "Please enter a valid whole number"
        }
        }
    }
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

