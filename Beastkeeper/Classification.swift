//
//  Classification.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-21.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import Foundation

//INCOMPLETE IMPLEMENTATION FOR DEMO
//would need to incorporate classification according to real world animal classification standards

/* avoid limiting to livestock only, may include work animals, pets and other animals or groups of animals,
 animals introduced for pet control etc. */

//could include links to external resources ie. care and feeding of documents, wikipedia etc.

struct Classification {
    
    var classificationType = ""
    let innoculationSchedule : Schedule! = nil
    
    init (classificationType: String){
        self.classificationType = classificationType
    }
    
}
