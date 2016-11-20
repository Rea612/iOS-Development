//
//  ViewController.swift
//  Menu Bar Demo
//
//  Created by Rui Zou on 11/19/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBAction func cameraPressed(_ sender: Any) {
        timer.invalidate()
    }
    func processTimer() {
        print("A second has passed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

