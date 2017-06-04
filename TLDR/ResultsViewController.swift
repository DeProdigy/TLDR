//
//  ResultsViewController.swift
//  TLDR
//
//  Created by Alex Hint on 5/28/17.
//  Copyright © 2017 Alex Hint. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let age = UserDefaults.standard.value(forKey: "age")
        let gender = UserDefaults.standard.value(forKey: "gender")
        let setUpDate = UserDefaults.standard.value(forKey: "date")
        
        resultsLabel.text = numberOfDays(age: age as! Int, gender: gender as! String, setUpDate: setUpDate as! Date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
