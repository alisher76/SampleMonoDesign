//
//  InstaPostCell.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class InstaPostCell: UICollectionViewCell {
    
    
    @IBOutlet weak var postDescription: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var postMedia: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func addShadow() {
        self.layer.cornerRadius = 10
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
    }
}
