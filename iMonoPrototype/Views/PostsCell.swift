//
//  PostsCell.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/16/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class PostsCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

extension PostsCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 {            
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "instaPostCell", for: indexPath) as! InstaPostCell
            return cell
        } else {
        return UICollectionViewCell()
        }
    }
    
}
