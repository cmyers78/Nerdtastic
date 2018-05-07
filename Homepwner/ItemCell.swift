//
//  ItemCell.swift
//  Homepwner
//
//  Created by Christopher Myers on 5/6/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import UIKit

class ItemCell : UITableViewCell {
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var serialNumberLabel : UILabel!
    @IBOutlet var valueLabel : UILabel!
    
    func updateLabels() {
        let bodyFont = UIFont.preferredFont(forTextStyle: .body)
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        
        let captionFont = UIFont.preferredFont(forTextStyle: .caption1)
        serialNumberLabel.font = captionFont
    }
}
