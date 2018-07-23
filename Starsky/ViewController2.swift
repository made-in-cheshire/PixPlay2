//
//  ViewController2.swift
//  Starsky
//
//  Created by Danny on 20/07/2018.
//  Copyright © 2018 Pixel Inspiration. All rights reserved.
//

import UIKit
import WebKit
class ViewController2: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    var userURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlRequest = URLRequest(url: userURL)
        webView.load(urlRequest)
        UserDefaults.standard.set(true, forKey: "secondLoad")
        UIApplication.shared.isStatusBarHidden = true
}
}
