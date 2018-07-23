//
//  ViewController1.swift
//  Starsky
//
//  Created by Danny on 20/07/2018.
//  Copyright © 2018 Pixel Inspiration. All rights reserved.
//
import UIKit
import WebKit
class ViewController1: UIViewController {
    
    @IBOutlet var urlTextField: UITextField!
    
    override func viewDidAppear( _ animated:Bool) {
        super.viewDidAppear( animated )
        
        //If user is opening the app the second time, then we just redirect him directly to the webView with the saved URL
        let url = UserDefaults.standard.string(forKey: "userURL")
        if url != nil {
            let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            vc.userURL = URL(string: url!);//UserDefaults.standard.url(forKey: "userURL") as URL?
            self.present(vc, animated: true, completion: nil);
            print("Arrived on View and told to move on");
        }
    }
    
    @IBAction func goToNextScreen(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier:
            "ViewController2") as! ViewController2
        vc.userURL = URL(string: urlTextField.text!)
        //Save the URL for further usage
        UserDefaults.standard.set(urlTextField.text!, forKey: "userURL")
        //self.navigationController?.pushViewController(vc, animated: true)
        // if you don't have a navigationController embeded into your ViewController use this function instead
        self.present(vc, animated: true, completion: nil)
    }
}
