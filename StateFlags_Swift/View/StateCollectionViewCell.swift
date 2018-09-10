//
//  StateCollectionViewCell.swift
//  StateFlags_Swift
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    var state: State? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        flagImageView.image = UIImage(named: state?.abbreviation ?? "ID")
        stateNameLabel.text = state?.name 
    }
}
