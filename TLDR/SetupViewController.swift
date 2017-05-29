//
//  ViewController.swift
//  TLDR
//
//  Created by Alex Hint on 5/28/17.
//  Copyright © 2017 Alex Hint. All rights reserved.
//

import UIKit

class SetupViewController: UIViewController {
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var genderSelector: UISegmentedControl!
    
    @IBAction func ageStepperUpdated(_ sender: UIStepper) {
        ageLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func informationSubmitted(_ sender: UIButton) {
        let age = ageStepper.value
        let gender = genderSelector.titleForSegment(at: genderSelector.selectedSegmentIndex)!
        let today = Date()
        
        UserDefaults.standard.set(age, forKey: "age")
        UserDefaults.standard.set(gender, forKey: "gender")
        UserDefaults.standard.set(today, forKey: "date")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(UserDefaults.standard.value(forKey: "age")!)
//        print(UserDefaults.standard.value(forKey: "gender")!)
//        print(UserDefaults.standard.value(forKey: "date")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

