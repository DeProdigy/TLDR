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
        
        print(age, gender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

