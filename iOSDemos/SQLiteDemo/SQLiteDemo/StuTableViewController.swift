//
//  StuTableViewController.swift
//  SQLiteDemo
//
//  Created by Varun on 31/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class StuTableViewController: UITableViewController {

    private var arrData : Array<Dictionary<String,String>>?
    private var appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        arrData = appdelegate.selectQuery("SELECT roll_no, name, marks FROM Student")
        
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return arrData!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StuCell", for: indexPath)

        let dict = arrData![indexPath.row]
        
        cell.textLabel?.text = "\(dict["roll_no"]!) - \(dict["name"]!)"
        cell.detailTextLabel?.text = dict["marks"]
        
        return cell
    }
}
