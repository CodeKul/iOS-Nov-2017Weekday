//
//  ViewController.swift
//  JsonParsingDemo
//
//  Created by Varun on 22/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var arrPostalCodes : [[String:Any]]?
    
    @IBOutlet var myTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.arrPostalCodes = [[String:Any]]()
        
        let url = URL(string: "http://api.geonames.org/postalCodeSearchJSON?postalcode=9011&maxRows=10&username=varun05")
        let req = URLRequest(url: url!)
        let dataTask = URLSession.shared.dataTask(with: req) { (data, response, error) in
            
            
            if error == nil {
                let dataDict = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
                self.arrPostalCodes = dataDict["postalCodes"] as? [[String : Any]]
                print(self.arrPostalCodes!)
                
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
                
            }
            else {
                let alert = UIAlertController(title: "Codekul", message: "Something went wrong!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (ok) in
                    
                    print("ok pressed")
                }))
            }
        }
        
        dataTask.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPostalCodes!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let dict = arrPostalCodes![indexPath.row]
        

        cell?.textLabel?.text = dict["placeName"] as? String
        cell?.detailTextLabel?.text = dict["postalCode"] as? String
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

