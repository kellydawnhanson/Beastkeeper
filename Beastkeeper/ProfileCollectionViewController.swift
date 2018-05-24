//
//  ViewController.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-12.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import UIKit

@IBDesignable //view UI elements in editor

class ProfileCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var ProfileCollectionView: UICollectionView!
    
    //create the "Magnificent Chicken" Classification instance to serve as placeholder for the Classification concept
    //because we've determined that Classification is inherent to the model and the UI
    //but the concept as a whole is non-trivial to implement and for the purposes of demonstrating the UI
    //should be represented as simply as possible
    let MagnificentChicken: Classification = Classification (classificationType: "Magnificent Chicken")
    
    //Normally, we would start by loading up some data to populate the collection view but for the demo we've planned
    //to circumvent persistence, so we're just going to retrieve an array of Beasts which we will create
    //to live inside the scope of this view controller
    lazy var UISpecificData = loadUISpecificData ()//returns an array of Magnificient Chickens
    

    //set up profile
    
    
    
    //MARK:  UICollectionView methods
    
    //required method
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UISpecificData.count
    }
    
    //required method
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    //MARK:  data methods
    func loadUISpecificData () -> [Beast] {
        
        var Data:  Array <Beast>
        
        //a list names of the chickens we want access to
        let chickenNames = ["Charlie",
                            "Dotty",
                            "Evangeline",
                            "Farrah",
                            "Fatso",
                            "George",
                            "Helena",
                            "Margaret",
                            "Peacock",
                            "Princess",
                            "Pumpkin",
                            "Raptor"]
        
        //create an instance of Beast for each chicken
        for chickenName in chickenNames {
            Data.append(Beast (classification: MagnificentChicken, name: chickenName, profilePicture: nil))
        }
        
//        let chickenGeorge = Beast (classification: MagnificentChicken, name: "George", profilePicture: nil)
//        let chickenEvangelina = Beast (classification: MagnificentChicken, name: "Evangelina", profilePicture: nil)
        
        return Data
    }
    
}

