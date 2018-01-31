//
//  ViewController.swift
//  SQLiteDemo
//
//  Created by Varun on 31/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtRno : UITextField!
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtMarks : UITextField!

    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveButtonPressed (_ sender : UIButton) {
        
        let res = appDelegate.executeQuery("INSERT INTO Student VALUES ('\(txtRno.text!)', '\(txtName.text!)', '\(txtMarks.text!)')")
        if res {
            self.navigationController?.popViewController(animated: true)
        }
        else {
            print("Failed")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

