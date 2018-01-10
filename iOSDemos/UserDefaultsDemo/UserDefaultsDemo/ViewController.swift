//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Varun on 09/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbl : UILabel!
    @IBOutlet var txt : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    @IBAction func saveButtonClicked (_ sender : UIButton) {
        
        UserDefaults.standard.set(txt.text, forKey: "data")
        UserDefaults.standard.synchronize()
    }
    
    @IBAction func showButtonCLicked (_ sender : UIButton) {
        lbl.text = (UserDefaults.standard.value(forKey: "data") as! String)
        
//        UserDefaults.standard.removeObject(forKey: "data")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

