//
//  ViewController.swift
//  Beastkeeper
//
//  Created by Kelly Hanson on 2018-05-12.
//  Copyright © 2018 Kelly Hanson. All rights reserved.
//

import UIKit

@IBDesignable //view UI elements in editor

class ProfileCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var profileButtonStackView: UIStackView!

    //create the "Magnificent Chicken" concept placeholder
    let MagnificentChicken: Classification = Classification (classificationType: "Magnificent Chicken")
    
    //make a chicken to test the initializers
    lazy var chickenGeorge: Beast = Beast (classification: MagnificentChicken, name: "George", profilePicture: <#T##UIImage#>)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

