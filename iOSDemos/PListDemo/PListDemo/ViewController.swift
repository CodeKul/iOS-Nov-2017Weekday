//
//  ViewController.swift
//  PListDemo
//
//  Created by Varun on 09/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let filePath = paths[0] + "/Myfile.plist"
        
        print(filePath)
        
//        let myDict : NSDictionary?
//        myDict = ["name" : "Akshay", "rollNo" : "1", "marks" : "100"]
//
//        myDict?.write(toFile: filePath, atomically: true)
//
//        let newDict = NSDictionary(contentsOfFile: filePath)
//        print(newDict!)
        
        let arr : NSArray?
        arr = ["Akshay", "Jayesh", "Sarang", "Rishabh", "Abhay"]
        
        arr?.write(toFile: filePath, atomically: true)
        
        let arrNew = NSArray(contentsOfFile: filePath)
        
        print(arrNew!)
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

