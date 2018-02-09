//
//  ViewController.swift
//  JsonParsingDemo2
//
//  Created by Varun on 09/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrInd : [State]?
    var arrUsa : [State]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrInd = Array<State>()
        arrUsa = Array<State>()
    }

    func getStatesOf(country : String) {
        
        
    }

    @IBAction func indButtonClicked (_ sender : UIButton) {
        
        let req = URLRequest(url: URL(string: "http://services.groupkt.com/state/get/IND/all")!)
        
        let dataTask = URLSession.shared.dataTask(with: req) { (data, response, error) in
            
            if error == nil {
                
                let responseData = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
                let restResponse = responseData["RestResponse"] as! [String : Any]
                let results = restResponse["result"] as! [[String : Any]]
                
                for state in results {
                    
                    let s = State(country: state["country"] as! String, name: state["name"] as! String, abbr: state["abbr"] as! String, area: state["area"] as! String, largest_city: state["largest_city"] as! String, capital: state["capital"] as! String)
                    
                    self.arrInd?.append(s)
                }
                
                DispatchQueue.main.async {
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
                    
                    vc.arrData = self.arrInd
                    self.present(vc, animated: true, completion: nil)
                }
            }
        }
        dataTask.resume()
    }

    @IBAction func usaButtonClicked (_ sender : UIButton) {
        
        let req = URLRequest(url: URL(string: "http://services.groupkt.com/state/get/USA/all")!)
        
        let dataTask = URLSession.shared.dataTask(with: req) { (data, response, error) in
            
            if error == nil {
                
                let responseData = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
                let restResponse = responseData["RestResponse"] as! [String : Any]
                let results = restResponse["result"] as! [[String : Any]]
                
                for state in results {
                    
                    let s = State(country: state["country"] as! String, name: state["name"] as! String, abbr: state["abbr"] as! String, area: state["area"] as! String, largest_city: state["largest_city"] as! String, capital: state["capital"] as! String)
                    
                    self.arrUsa?.append(s)
                }
                
                DispatchQueue.main.async {
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
                    
                    vc.arrData = self.arrUsa
                    self.present(vc, animated: true, completion: nil)
                }
            }
        }
        dataTask.resume()
    }

}

