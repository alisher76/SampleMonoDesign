//
//  SelectFriendCell.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class SelectFriendCell: UITableViewCell {

    @IBOutlet weak var profileIMage: UIImageView!
    @IBOutlet weak var sMediaLogo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
