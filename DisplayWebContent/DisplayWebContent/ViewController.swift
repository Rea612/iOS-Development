//
//  ViewController.swift
//  DisplayWebContent
//
//  Created by Rui Zou on 11/27/16.
//  Copyright © 2016 RuiZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let url = URL(string: "https://www.stackoverflow.com")!
//        //below func is to show the website
//        webView.loadRequest(URLRequest(url:url))
//        
//        //disply html
//        webView.loadHTMLString("<h1>Hello there! </h1>", baseURL: nil)
        
        if let url = URL(string: "https://www.stackoverflow.com"){
        let request = NSMutableURLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            if error != nil {
                print(error)
            }
            else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    print(dataString)
                    DispatchQueue.main.sync (
                        execute: {
                    })
                }
            }
         
        }
            task.resume()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

