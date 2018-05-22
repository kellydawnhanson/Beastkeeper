//
//  Event.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-21.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import Foundation

//INCOMPLETE IMPLEMENTATION FOR DEMO

struct Event: Hashable { //MARK: Hashable protocol
    
    //MARK: Public Properties
    var hashValue: Int {return eventID}
    
    var eventID: Int
    var eventType: String
    //var reminder:  Reminder?  = nil
    //set eventID based on eventType and associated enum
    
    //init {}//initwithSchedule
    
    
    //MARK: Implement Event Types - incomplete implementation for Demo
    let eventTypes = ["Innoculation", "Checkup"]
    //eventTypes can expand
    //let eventTypes = ["Innoculation","Checkup","Appointment","Incident","Training","Tasks"]//write corresponding enums
    
    //func remind
    
    //MARK:  Implement Equatable to conform to Hashable Protocol
    static func == (lhs: Event, rhs: Event) -> Bool {
        return lhs.eventID == rhs.eventID
    }
    
}
