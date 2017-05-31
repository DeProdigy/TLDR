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
    
    func numberOfDays(age: Int, gender: String, setUpDate: Date) -> String {
        let timeSinceSetup = setUpDate.timeIntervalSinceNow
        let minutesSinceSetup = abs(timeSinceSetup)
        let hoursSinceSetup = minutesSinceSetup / 60
        let daysSinceSetup = hoursSinceSetup / 60
        
        let yearsLeft = 76 - age
        let daysLeft = (yearsLeft * 365) - Int(daysSinceSetup)
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        let formattedNumber = numberFormatter.string(from: NSNumber(value: daysLeft))
        
        return formattedNumber!
    }
}
