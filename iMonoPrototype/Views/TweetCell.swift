//
//  TweetCell.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class TweetCell: UICollectionViewCell {
    
    @IBOutlet weak var tweetContentLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var postMedia: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
