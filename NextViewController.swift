//
//  NextViewController.swift
//  fireBaseSampleProject
//
//  Created by Felix 09 on 23/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit
import Firebase
class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var reference:DatabaseReference
        reference = Database.database().reference()
        //var reference:DatabaseReference
        //reference = Database.database().reference()
        
        reference.observeSingleEvent(of: .value, with: { (snapshot) in
            let dic = snapshot
            print(dic)
        })
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
