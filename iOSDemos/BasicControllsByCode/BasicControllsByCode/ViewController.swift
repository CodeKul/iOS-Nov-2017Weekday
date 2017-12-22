//
//  ViewController.swift
//  BasicControllsByCode
//
//  Created by Varun on 21/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lbl1 : UILabel?
    var txt1 : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl1 = UILabel(frame: CGRect(x: 10, y: 30, width: 300, height: 40))
        lbl1?.text = "Codekul"
        lbl1?.textAlignment = .center
        lbl1?.textColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        lbl1?.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        
        self.view.addSubview(lbl1!)
        
        txt1 = UITextField(frame: CGRect(x: 10, y: 80, width: 300, height: 40))
        txt1?.placeholder = "Name"
        txt1?.backgroundColor = #colorLiteral(red: 0.737231889, green: 1, blue: 0.9940933141, alpha: 1)
        self.view.addSubview(txt1!)
        
        let btn = UIButton(frame: CGRect(x: 110, y: 140, width: 100, height: 40))
        btn.setTitle("Click me!", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), for: .highlighted)
        btn.backgroundColor = #colorLiteral(red: 1, green: 0.6469341501, blue: 0.6532403219, alpha: 1)

        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        
        self.view.addSubview(btn)
    }

    @objc func btnClicked(_ sender : UIButton) {
        
        if !(txt1?.text?.isEmpty)! {
            lbl1?.text = txt1?.text
            txt1?.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

