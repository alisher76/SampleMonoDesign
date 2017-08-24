//
//  HomeViewController.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/16/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    // Outlets:
    @IBOutlet weak var navBarViewHeightConstant: NSLayoutConstraint!
    @IBOutlet weak var postCellHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var composeBtn: UIButton!
    @IBOutlet weak var friendsCollectionView: UICollectionView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var menuBtn: UIButton!
    
    var cellHeight: CGFloat?
    var isOpen: Bool = false
    
    var selectedOption = SegmentOptions.monocle {
        didSet {
            segmentMenuDidChange(to: selectedOption)
            mainCollectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsCollectionView.delegate = self
        friendsCollectionView.dataSource = self
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func composeButtonTapped(_ sender: Any) {
        guard let selectFriendsVC = storyboard?.instantiateViewController(withIdentifier: "selectFriendsVC") as? SelectFriendsVC else { return }
        presentDetail(selectFriendsVC)
    }
    
    @IBAction func hamburgerTapped(_ sender: Any) {
        
    }
    
    @objc func handleTap() {
        
    }
    
    fileprivate func segmentMenuDidChange(to option: SegmentOptions) {
        switch option {
        case .monocle:
            print("Monocle")
        case .twitter:
            print("twitter")
        case .instagram:
            print("instagram")
        case .more:
            print("more")
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == friendsCollectionView {
            return 10
        } else if collectionView == mainCollectionView {
            if selectedOption == .monocle {
                return 6
            } else {
                return 2
            }
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == friendsCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsCell", for: indexPath) as? FriendsListCell else {
                return UICollectionViewCell()
            }
            return cell
        } else {
            
            if indexPath.row == 0 {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "segmentCell", for: indexPath) as? SegmentMenuCell else {
                    return UICollectionViewCell()
                }
                cell.delegate = self
                return cell
                
            } else if indexPath.row == 1 && selectedOption == .monocle || selectedOption == .instagram {
                
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "instagramFeedCell", for: indexPath) as? PostsCell else { return UICollectionViewCell() }
                cell.delegate = self
                return cell
            } else if selectedOption == .monocle || selectedOption == .twitter {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tweetCell", for: indexPath) as? TweetCell else { return UICollectionViewCell() }
                    cell.addShadow()
                    cell.postMedia = nil
                    cell.profileImage.image = UIImage(named: "profile-icon")
                    cell.timeLabel.text = "20 minutes ago"
                    cell.userNameLabel.text = "@alisher"
                    cell.nameLabel.text = "Alisher"
                    cell.tweetContentLabel.text = "Getting there u know if you have design first its better"
                return cell
            }
            return UICollectionViewCell()
       }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == friendsCollectionView {
            
            return CGSize(width: view.frame.width / 6, height: friendsCollectionView.frame.size.height - 10)
            
        } else if collectionView == mainCollectionView {
            
            if indexPath.row == 0 {
                return CGSize(width: view.frame.width - 10, height: 50)
                
            } else if indexPath.row == 1 && selectedOption == .monocle || selectedOption == .instagram {
                
                if isOpen {
                    return CGSize(width: view.frame.width, height: self.view.frame.size.height / 1.5)
                } else {
                    return CGSize(width: view.frame.width, height: self.view.frame.size.height / 3)
            }
        } else if selectedOption == .monocle || selectedOption == .twitter {
            return CGSize(width: view.frame.size.width - 15, height: 100)
        }
    }
    return CGSize(width: 200, height: 200)
}

    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == friendsCollectionView {
            return 2.0
        } else {
            return 5.0
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == friendsCollectionView {
            print(indexPath.item)
        }
        if collectionView == mainCollectionView {
            
        }
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if (velocity.y > 0 ) {
            
        } else {
            
        }
    }
    
}
