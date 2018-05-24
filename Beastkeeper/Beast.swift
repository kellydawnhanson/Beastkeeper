//
//  Beast.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-16.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import UIKit //MARK: import UIKit to accomodate images

class Beast {
    
    var classification: Classification
    var name : String?
    var profilePicture : UIImage?
    
    init(classification : Classification, name: String?, profilePicture : UIImage) {
        
        self.classification = classification
        self.name = name
        self.profilePicture = profilePicture
    }
    
}
