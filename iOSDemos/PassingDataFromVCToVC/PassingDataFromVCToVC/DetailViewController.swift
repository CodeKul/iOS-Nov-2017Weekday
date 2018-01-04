//
//  DetailViewController.swift
//  PassingDataFromVCToVC
//
//  Created by Varun on 02/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var data : String?
    
    @IBOutlet var lbl1 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl1.text = data
    }

    @IBAction func buttonPressed (_ sender : UIButton) {
        
        let alert = UIAlertController(title: "Codekul", message: "Do you want to save?", preferredStyle: .actionSheet)
        
        
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: { (OK) in
            
            print("OK pressed")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (cancel) in
            
            print("Cancel pressed")

        }))

        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
