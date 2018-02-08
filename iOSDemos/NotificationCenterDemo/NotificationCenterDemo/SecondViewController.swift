//
//  SecondViewController.swift
//  NotificationCenterDemo
//
//  Created by Varun on 08/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var txtData : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func createEventOnFirstVC(_ sender : UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name("MyFirstNotification"), object: txtData.text)
    }
    
    @IBAction func backButtonPressed (_ sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
