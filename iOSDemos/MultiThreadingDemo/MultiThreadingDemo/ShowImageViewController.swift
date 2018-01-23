//
//  ShowImageViewController.swift
//  MultiThreadingDemo
//
//  Created by Varun on 23/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController {

    @IBOutlet var myImageView : UIImageView!
    @IBOutlet var myLoader : UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Download started")
        myLoader.startAnimating()
        DispatchQueue.global().async {
            
            let imageData = try! Data(contentsOf: URL(string: "https://vignette.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20150208173247")!)
            
            print("Download finished")
            
            DispatchQueue.main.async {
                self.myLoader.stopAnimating()
                self.myImageView.image = UIImage(data: imageData)
                print("Set image")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
