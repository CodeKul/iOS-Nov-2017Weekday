//
//  ViewController.swift
//  PassingDataFromVCToVC
//
//  Created by Varun on 02/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTXt : UITextField!
    
    @IBOutlet var surnameTXt : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailVC.data = nameTXt.text
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == nameTXt {
            surnameTXt.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

