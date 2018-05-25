//
//  ViewController.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-12.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import UIKit

//view UI elements in editor

//MARK:  Scope Variables
//use beastIndex to hold the index of the
var beastProfileSelectedIndex: Int = 0

class ProfileCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //MARK:  CollectionView and CollectionViewCell Elements
    @IBOutlet var ProfileCollectionView: UICollectionView!
    @IBAction func profileButton(_ sender: UIButton) {
        //set an int to hold the index of the
    }
    
    
    //MARK:
    
    //create the "Magnificent Chicken" Classification instance to serve as placeholder for the Classification concept
    //because we've determined that Classification is inherent to the model and the UI
    //but the concept is non-trivial to implement and for the purposes of demonstrating the UI
    //should be represented as simply as possible
    
    let MagnificentChicken: Classification = Classification (classificationType: "Magnificent Chicken")
    
    //Normally, we would start by loading up some data to populate the collection view but for the demo we've planned
    //to circumvent persistence, so we're just going to retrieve an array of Beasts which we will create
    //to live inside the scope of this view controller
    
    lazy var InterfaceSpecificData = loadInterfaceSpecificData ()//returns an array of Magnificient Chickens
    
    
    //MARK:  UICollectionView methods
    
    //required method
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return InterfaceSpecificData.count
    }
    
    //required method
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! ProfileCollectionViewCell  //MARK: as! ??
        
        let index = indexPath.row
        let beast = InterfaceSpecificData [index]
        
        //set cell element display
        if let name = beast.name { //MARK: Optional Binding
            cell.profileNameLabel.text = name
            cell.profileImageView.image = UIImage (named: name)//MARK:  fix this nonsense
            
            //set the tag on the button so that we have an value we can reference to show which button in the collection was pressed
            cell.profileButton.tag = index
        }
        return cell
    }

    
    //MARK:  Data methods
    
    func loadInterfaceSpecificData () -> [Beast] {
        
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
        
        //create a dataset of chickens
        var Data = [Beast]()
        for chickenName in chickenNames {
            Data.append(Beast (classification: MagnificentChicken, name: chickenName, profilePicture: nil))
            //print (chickenName)
        }
        
        return Data
    }
    
    //prepare(for:sender)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let data = Data()
        
        //sender is the button, nothing else is hooked up to the segue
        if let button = sender as? UIButton {  //MARK:  unwrap and examine, downcast Any?
            if segue.identifier == "showProfileDetails" {
                if let destinationViewController = segue.destination as? ProfileDetailViewController {
                    //reference the button's tag value set in cellForIndexPath
                    destinationViewController.beast = InterfaceSpecificData [button.tag]
                    
                    //destinationViewController.data = data
                }
            }
        }
    }
    
    
    
}//end

