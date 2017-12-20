//
//  ViewController.swift
//  MoreBasicControls
//
//  Created by Varun on 19/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arrData1 : Array<String>?
    var arrData2 : Array<String>?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrData1 = ["Sarang", "Akshay", "Abhay", "Jayesh", "Rishabh"]
        arrData2 = ["Blue", "Red", "Yellow", "Orange", "Green"]

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return (arrData1?.count)!
        }
        return (arrData2?.count)!
    }
    
    /*
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return arrData1?[row]
        }
        return arrData2?[row]
    }
*/
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 30))
        
        if component == 0 {
            lbl.textColor = UIColor.red
            lbl.text = (arrData1![row])
        }
        else {
            lbl.textColor = UIColor.blue
            lbl.text = (arrData2![row])
        }
        
        lbl.font = UIFont(name: "Cochin", size: 20)
        
        return lbl
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print("\((arrData1?[row])!)")
        }
        else {
            print("\((arrData2?[row])!)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func datePickerValueChanged(_ sender : UIDatePicker) {
        
        let date = sender.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss a"
        
        print("Selcted Date: \(dateFormatter.string(from: date))")
    }

}

