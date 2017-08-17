//
//  settingsCell.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class settingsCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.text = "Test number 1"
    }
    
}
