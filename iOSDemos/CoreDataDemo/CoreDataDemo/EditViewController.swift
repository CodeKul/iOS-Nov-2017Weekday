//
//  EditViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 10/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class EditViewController: UIViewController {

    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtRollNo : UITextField!
    @IBOutlet var txtMarks : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonClicked(_ sender : UIButton) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let entity = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context)
        
        entity.setValue(txtName.text, forKey: "name")
        entity.setValue(txtRollNo.text, forKey: "rollno")
        entity.setValue(txtMarks.text, forKey: "marks")
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonClicked(_ sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }

}
