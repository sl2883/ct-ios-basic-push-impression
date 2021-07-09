//
//  ViewController.swift
//  PushImprssions
//
//  Created by Sunny Ladkani on 7/8/21.
//

import UIKit
import CleverTapSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pv(sender: UIButton) {
            print("product viewed");
            
            let props: Dictionary<String, Any> = [
                "Product name": "Casio Chronograph Watch",
                "Category": "Mens Accessories",
                "Price": 59.99,
                "Date": NSDate()
            ]

            CleverTap.sharedInstance()?.recordEvent("Product viewed", withProps: props)
        }


}

