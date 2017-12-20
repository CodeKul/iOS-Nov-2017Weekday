//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Varun on 20/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet var myWebView : WKWebView!
    @IBOutlet var progressBar : UIProgressView!
    @IBOutlet var urlTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
        
        myWebView.uiDelegate = self

    }

    @IBAction func goButtonCLicked (_ sender : UIButton) {
    
        var urlStr = urlTextField.text
        
        if !(urlStr?.isEmpty)! {
            
            if !(urlStr?.starts(with: "http"))! {
                urlStr = "http://" + urlStr!
            }
            urlTextField.text = urlStr!
            let url = URL(string: urlStr!)
            let urlReq = URLRequest(url: url!)
            myWebView.load(urlReq)
                
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            
            urlTextField.text = myWebView.url?.absoluteString
            progressBar.isHidden = false
            let estimatedProgress = myWebView.estimatedProgress
            progressBar.setProgress(Float(myWebView.estimatedProgress), animated: true)
            if estimatedProgress == 1.0 {
                progressBar.isHidden = true
            }
            print(estimatedProgress)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

