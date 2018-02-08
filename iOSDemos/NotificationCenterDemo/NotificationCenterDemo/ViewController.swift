//
//  ViewController.swift
//  NotificationCenterDemo
//
//  Created by Varun on 08/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLbl : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(gotDataFromSecondVC), name: NSNotification.Name("MyFirstNotification"), object: nil)
    }

    @objc func gotDataFromSecondVC(_ notif : Notification) {
        
        print("gotDataFromSecondVC")
        myLbl.text = notif.object as? String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

