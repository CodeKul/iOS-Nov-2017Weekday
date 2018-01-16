//
//  ViewController.swift
//  GesturesDemo
//
//  Created by Varun on 16/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView1 : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func viewTapped(_ sender: UITapGestureRecognizer) {
        
        myView1.backgroundColor = UIColor.red
    }
    
    @IBAction func viewSwipped(_ sender: UISwipeGestureRecognizer) {
    
        if sender.direction == .left {
            myView1.backgroundColor = UIColor.blue
        }
        else if sender.direction == .right {
            myView1.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func viewPinched(_ sender: UIPinchGestureRecognizer) {
        myView1.backgroundColor = UIColor.green
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print("touchesBegan")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print("touchesMoved")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print("touchesCancelled")
    }
    
}

