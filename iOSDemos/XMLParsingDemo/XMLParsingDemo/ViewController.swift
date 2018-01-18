//
//  ViewController.swift
//  XMLParsingDemo
//
//  Created by Varun on 18/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate,UITableViewDelegate,UITableViewDataSource {
    

    var parser : XMLParser?
    var arrData : [[String : String]]?
    var dictData : [String : String]?
    var strData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parser = XMLParser(contentsOf: URL(string: "https://www.chilkatsoft.com/xml-samples/plants.xml")!)
        parser?.delegate = self
        parser?.parse()
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        print("parserDidStartDocument")
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "CATALOG" {
            arrData = [[String : String]]()
        }
        else if elementName == "PLANT" {
            dictData = [String : String]()
        }
        else {
            strData = String()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        strData?.append(string)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "CATALOG" {
            print(arrData!)
        }
        else if elementName == "PLANT" {
            arrData?.append(dictData!)
            dictData = nil
        }
        else {
            dictData![elementName] = strData
            strData = nil
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("parserDidEndDocument")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (arrData?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let dict = arrData![indexPath.row]
        cell?.textLabel?.text = dict["COMMON"]
        cell?.detailTextLabel?.text = dict["PRICE"]
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

