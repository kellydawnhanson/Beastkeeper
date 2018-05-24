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
    
    //create the "Magnificent Chicken" concept placeholder
    let MagnificentChicken: Classification = Classification (classificationType: "Magnificent Chicken")
    
    //make a chicken to test the initializers
    //lazy var chickenGeorge: Beast = Beast (classification: MagnificentChicken, name: "George", profilePicture: )
    
    //UICollectionView - needs to implement these methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}

