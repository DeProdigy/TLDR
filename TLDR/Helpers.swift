//
//  Helpers.swift
//  TLDR
//
//  Created by Alex Hint on 6/3/17.
//  Copyright © 2017 Alex Hint. All rights reserved.
//

import Foundation

func numberOfDays(age: Int, gender: String, setUpDate: Date) -> String {
    let timeSinceSetup = setUpDate.timeIntervalSinceNow
    let minutesSinceSetup = abs(timeSinceSetup) / 60
    let hoursSinceSetup = minutesSinceSetup / 60
    let daysSinceSetup = hoursSinceSetup / 24
    
    let yearsLeft = 76 - age
    let daysLeft = (yearsLeft * 365) - Int(daysSinceSetup)
    
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = NumberFormatter.Style.decimal
    let formattedNumber = numberFormatter.string(from: NSNumber(value: daysLeft))
    
    return formattedNumber!
}
