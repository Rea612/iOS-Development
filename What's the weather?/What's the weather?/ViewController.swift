//
//  ViewController.swift
//  What's the weather?
//
//  Created by Rui Zou on 11/30/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func getResult(_ sender: Any) {
    }
    @IBOutlet var inputCity: UITextField!
    @IBOutlet var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.weather-forecast.com/locations/London/forecasts/latest")!
        let request = NSMutableURLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            if error != nil {
                print(error!)
            }
            else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    print(dataString!)
                }
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

