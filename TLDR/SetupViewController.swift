//
//  ViewController.swift
//  TLDR
//
//  Created by Alex Hint on 5/28/17.
//  Copyright © 2017 Alex Hint. All rights reserved.
//

import UIKit
import UserNotifications

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
        
//        self.setupNotifications()
    }
    
//    func setupNotifications() {
//
//        let days = numberOfDays(
//            age: UserDefaults.standard.value(forKey: "age") as! Int,
//            gender: UserDefaults.standard.value(forKey: "gender") as! String,
//            setUpDate: UserDefaults.standard.value(forKey: "date") as! Date
//        )
//        
//        let content = UNMutableNotificationContent()
//        content.title = "TLDR Reminder"
//        content.body = "You have \(days) days to live. What will you do with this one?"
//        content.sound = UNNotificationSound.default()
//        
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
//        
////        let now = Date()
////        let startDate = Calendar.current.date(bySettingHour: 11, minute: 00, second: 0, of: now)!
////        let triggerDaily = Calendar.current.dateComponents([.hour,.minute,.second,], from: startDate)
////        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDaily, repeats: true)
//        
//        let request = UNNotificationRequest(identifier: "TLDRDailyNotification", content: content, trigger: trigger)
//        
//        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
//        UNUserNotificationCenter.current().add(request) {(error) in
//            if let error = error {
//                print("Uh oh! We had an error: \(error)")
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

