//
//  FourthViewController.swift
//  NavigationControllerDemo
//
//  Created by Varun on 28/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoSecondVC (_ sender : UIButton) {
        
        let vc = self.navigationController?.viewControllers[1]
        
        self.navigationController?.popToViewController(vc!, animated: true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
