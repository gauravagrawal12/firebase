//
//  ViewController.swift
//  fireBaseSampleProject
//
//  Created by Felix 09 on 23/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    var ref: DatabaseReference!
    var courseDic = NSMutableDictionary()
    @IBOutlet var NameText: UITextField!
    
    @IBOutlet var durationText: UITextField!
    @IBOutlet var FeesText: UITextField!
    @IBAction func saveToFirebase(_ sender: UIButton) {
        ref = Database.database().reference()
        courseDic.setValue(NameText.text!, forKey: "Name")
        courseDic.setValue(durationText.text!, forKey: "Duration")
        courseDic.setValue(FeesText.text!, forKey: "Fees")
        ref.child("Courses").childByAutoId().setValue(courseDic) { (error, reference) in
            
            if((error) != nil)
            {
                print("Failed to Insert:\(error?.localizedDescription)")
            }
            else
            {
                print("Insert:Success")
                
            }
        }
        }
        
    override func viewDidLoad() {
        FirebaseApp.configure()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

