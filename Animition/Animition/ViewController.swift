//
//  ViewController.swift
//  Animition
//
//  Created by Rui Zou on 12/1/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var timer = Timer()
    var isAnimating = false
    func animate() {
        image.image = UIImage(named: "frame_\(counter)_delay-0.1s.gif")
        counter += 1
        if counter == 6 {
            counter = 0
        }
        
    }
    @IBOutlet var buttonName: UIButton!
    @IBAction func getNext(_ sender: Any) {
        if (isAnimating) {
            timer.invalidate()
            buttonName.setTitle("Start", for:[])
            isAnimating = false
        } else {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
            buttonName.setTitle("Stop", for: [])
            isAnimating = true
        }
    }
    @IBAction func fadeIn(_ sender: Any) {
        self.image.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
    }

    @IBAction func slideIn(_ sender: Any) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 2) {
            self.image.center = CGPoint (x: self.image.center.x + 500, y: self.image.center.y)
        }
    }
    
    @IBAction func grow(_ sender: Any) {
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        UIView.animate(withDuration: 1) {
                self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        }
    }
    
    
    @IBOutlet var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

