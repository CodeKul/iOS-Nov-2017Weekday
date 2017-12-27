//
//  ViewController.swift
//  CustomCellDemo
//
//  Created by Varun on 26/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrPlayers : [[String : Any]]?
    override func viewDidLoad() {
        super.viewDidLoad()

        arrPlayers = [["name" : "Sachin", "DOB" : "24 Apr", "Score" : "10000", "image" : #imageLiteral(resourceName: "Sachin")], ["name" : "Dhoni", "DOB" : "7 July", "Score" : "8000", "image" : #imageLiteral(resourceName: "Dhoni")], ["name" : "Virat", "DOB" : "5 Nov", "Score" : "7000", "image" : #imageLiteral(resourceName: "Virat")], ["name" : "Yuvraj", "DOB" : "12 Dec", "Score" : "6000", "image" : #imageLiteral(resourceName: "Yuvraj")]]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arrPlayers?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell") as! CustomTableViewCell
        
        let dict = arrPlayers![indexPath.row]
        cell.lblName.text = dict["name"] as? String
        cell.lblDOB.text = dict["DOB"] as? String
        cell.lblScore.text = dict["Score"] as? String
        cell.prifileImageView.image = dict["image"] as? UIImage
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

