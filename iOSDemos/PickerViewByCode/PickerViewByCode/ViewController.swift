//
//  ViewController.swift
//  PickerViewByCode
//
//  Created by Varun on 22/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var myPickerView : UIPickerView?
    var arrData : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrData = ["Blue", "Orange", "Yellow", "Red", "Green", "Black", "White"]
        
        myPickerView = UIPickerView(frame: CGRect(x: 5, y: 149, width: 310, height: 250))
//        myPickerView?.delegate = self
//        myPickerView?.dataSource = self
        
        self.view.addSubview(myPickerView!)
    }

    //  Datasource methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return arrData!.count
    }
    
    // Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return arrData![row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("Row: \(row)\nComponent: \(component)")
        print("\(arrData![row])")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

