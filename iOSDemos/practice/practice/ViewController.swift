//
//  ViewController.swift
//  practice
//
//  Created by Varun on 27/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var scroll:UIScrollView!
    @IBOutlet var mycontent:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroll.contentSize = mycontent.frame.size
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

