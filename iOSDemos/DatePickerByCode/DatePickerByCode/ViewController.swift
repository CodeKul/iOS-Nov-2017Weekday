//
//  ViewController.swift
//  DatePickerByCode
//
//  Created by Varun on 22/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myDatePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myDatePicker = UIDatePicker(frame: CGRect(x: 0, y: 174, width: 320, height: 200))
        myDatePicker?.datePickerMode = .dateAndTime
        
        let df = DateFormatter()
        df.dateFormat = "dd-MM-yyyy"
        
        myDatePicker?.maximumDate = df.date(from: "31-12-2017")
        myDatePicker?.minimumDate = df.date(from: "01-01-2017")

        myDatePicker?.addTarget(self, action: #selector(datePicked), for: .valueChanged)
        
        self.view.addSubview(myDatePicker!)
    }

    @objc func datePicked(_ sender : UIDatePicker) {
        
        print("\(sender.date)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

