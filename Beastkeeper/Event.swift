//
//  Event.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-21.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import Foundation

class Event {
    
    //MARK:  Public Properties
    
    var eventType: String
    
    //MARK:  Private Properties
    
    /* incomplete implementation for Demo.  Implemented eventTypes would have many more eventTypes */
    let eventTypes = ["Innoculation", "Checkup"]  //write corresponding enums
    
    required init(eventType: String) {
        
        self.eventType = eventType
        
        switch eventType {
        case "Innoculation":
            initInnoculationEvent ()
        case "Checkup":
            initCheckupEvent ()
        default:
            break
        }
    }
    
    func initInnoculationEvent () {
        
    }
    
    func initCheckupEvent () {
        
    }
    
}
