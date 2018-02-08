//
//  SecondViewController.swift
//  CustomDelegates
//
//  Created by Varun on 08/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var txtData : UITextField!
    
    var myDelegate : MyProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func callDelegate (sender : UIButton) {
        
        myDelegate?.changeLabelText(text: txtData.text!)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
