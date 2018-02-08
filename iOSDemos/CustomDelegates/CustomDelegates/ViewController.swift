//
//  ViewController.swift
//  CustomDelegates
//
//  Created by Varun on 08/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyProtocol {

    @IBOutlet var myLbl : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func changeBackgroundColor() {
        
    }

    func changeLabelText(text: String) {
        
        myLbl.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! SecondViewController
        vc.myDelegate = self
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

