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

        if let url = URL(string: "http://www.weather-forecast.com/locations/" + inputCity.text!.replacingOccurrences(of: " ", with: "-") + "/forecasts/latest") {
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                var message = ""
                
                if error != nil {
                    
                    print(error!)
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        
                        var stringSeparator = "Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">"
                        
                        if let contentArray = dataString?.components(separatedBy: stringSeparator) {
                            
                            if contentArray.count > 1 {
                                
                                stringSeparator = "</span>"
                                
                                let newContentArray = contentArray[1].components(separatedBy: stringSeparator)
                                
                                if newContentArray.count > 1 {
                                    
                                    message = newContentArray[0].replacingOccurrences(of: "&deg;", with: "°")
                                    
                                    print(message)
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                    
                }
                
                if message == "" {
                    
                    message = "The weather there couldn't be found. Please try again."
                    
                }
                
                DispatchQueue.main.sync(execute: {
                    
                    self.result.text = message
                    
                })
                
            }
            
            task.resume()
            
        } else {
            
            result.text = "The weather there couldn't be found. Please try again."
            
        }
    }
    @IBOutlet var inputCity: UITextField!
    @IBOutlet var result: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

