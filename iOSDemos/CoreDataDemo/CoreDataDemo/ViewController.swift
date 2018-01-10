//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 10/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrStuData : [Student]?
    
    @IBOutlet var myTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.getDatafromDBAndReloadTable()
    }
    
    func getDatafromDBAndReloadTable() {
        
        let req = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            let results = try context.fetch(req)
            arrStuData = results as? [Student]

            myTableView.reloadData()
        }
        catch {
            
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arrStuData?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let stu = arrStuData![indexPath.row]
        
        cell?.textLabel?.text = stu.name!
        cell?.detailTextLabel?.text = "\(stu.rollno!) - \(stu.marks!)"
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

