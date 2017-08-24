//
//  SegmentMenuCell.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/16/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

enum SegmentOptions {
    case monocle, twitter, instagram, more
}

class SegmentMenuCell: UICollectionViewCell {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var segmentMenuImages = ["iMonocle", "twitter", "instagram", "more"]
    var segmentMenuNames = ["iMono", "twitter", "instagram", "more"]
    var delegate: HomeViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension SegmentMenuCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "segmentCollectionViewCell", for: indexPath) as! SegmentMenuCollectionViewCell
        cell.segmentImage.image = UIImage(named: segmentMenuImages[indexPath.row])
        cell.tintColor = UIColor.lightGray
        cell.segmentLabel.text = segmentMenuNames[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            delegate?.selectedOption = .monocle
        case 1:
            delegate?.selectedOption = .twitter
        case 2:
            delegate?.selectedOption = .instagram
        case 3:
            delegate?.selectedOption = .more
        default:
            delegate?.selectedOption = .monocle
       }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.frame.size.width / 4) - 10, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 4.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15.0
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
    
        
}

class SegmentMenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var segmentImage: UIImageView!
    @IBOutlet weak var segmentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

