//
//  Event.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-21.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import Foundation

class Event {
    
    var eventType: String
    
    /* incomplete implementation for Demo.  Implemented eventTypes would have many more eventTypes */
    enum eventTypes: String {//MARK:  Enumeration
        case innoculation = "Innoculation"
        case checkup = "Checkup"
    }
    
    required init(eventType: String) {
        
        self.eventType = eventType
        
        /* These assignments are the 'clunky workaround' for the known enum-related compiler error outlined here...
         https://stackoverflow.com/questions/47060366/custom-pattern-matching-fails-with-enum-case-is-not-a-member-of-type?rq=1
         Additionally, specific to raw data types like String (as opposed to NSError in the example)
         we are unwrapping the rawValue here */
        let innoculation = eventTypes.innoculation.rawValue
        let checkup = eventTypes.checkup.rawValue
        
        switch eventType {
        case innoculation: initInnoculationEvent ()
        case checkup: initCheckupEvent ()
        default: break
        }
    }
    
    func initInnoculationEvent () {
        
    }
    
    func initCheckupEvent () {
        
    }
    
    
    
}
