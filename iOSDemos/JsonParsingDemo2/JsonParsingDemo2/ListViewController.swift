//
//  ListViewController.swift
//  JsonParsingDemo2
//
//  Created by Varun on 09/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [State]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arrData![indexPath.row].name
        cell?.detailTextLabel?.text = arrData![indexPath.row].capital
        
        return cell!
    }
    
}
