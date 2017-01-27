//
//  ViewController.swift
//  KVO_Test
//
//  Created by Alexander Dejeu on 1/25/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    //MARK: - Properties
    var webView : WKWebView!
    
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView = WKWebView()
        self.view = self.webView
        
        self.webView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
        
        loadWebPage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.webView.removeObserver(self, forKeyPath: "estimatedProgress")
    }
    
    
    //MARK: - Helpers
    private func loadWebPage(){
        let url = NSURLRequest(url: NSURL(string: "https://www.makeschool.com") as! URL)
        self.webView.load(url as URLRequest)
    }
}


//MARK: - Key Value Oberserver
extension ViewController {
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress"{
            print("Loaded \(self.webView.estimatedProgress*100)%")
        }
    }
}

