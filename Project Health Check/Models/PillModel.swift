//
//  PillModel.swift
//  Project Health Check
//
//  Created by Darius Couti on 21.01.2024.
//

import UIKit

struct PillModel {
    
    let id: UUID // will be the identifier of the object, based on it we will fetch, search, etc. It will remained unchanged
    var name: String  // input given by the user
    var type: PillType // based on this variable we can display an image for the object and other cool features
    let startDate: Date // the start date
    let endDate: Date   // the end date
    let timesPerDay: Int // how many times a day the user takes the pill
    let timesDuringDay: [DateComponents] // an array that contains the moments of the day when the user takes the pill
    var pillPerDose: Int // the number of pills per dose
    var startingPills: Int // the number of pills
    var pillsRemaining: Int // after each day/dosage, we lower the pillsRemaining and when its getting closer to a specific number we can alert the user to prepare to refil the stock
    var presentNotifications: Bool // alert the user with notifications before the time when he needs to take the dose
    
}


enum PillType {
    case medicine
    case antibiotics
    case vitamins
    case steroids
    // etc..
}
