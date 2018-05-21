//
//  Beast.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-16.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import Foundation

struct Beast {
    
    let BeastID : String!
    let classification : Classification
    let name : String!
    let birthDate : Date!
    let arrivalDate : Date!
    var reminders : [Reminder] = []
    var appointments : Schedule!
    
    //var profilePhoto
    
}
