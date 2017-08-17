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
    
    @IBOutlet weak var composeBtn: UIButton!
    @IBOutlet weak var friendsCollectionView: UICollectionView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var segmentCollectionView: UICollectionView!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsCollectionView.delegate = self
        friendsCollectionView.dataSource = self
        segmentCollectionView.delegate = self
        segmentCollectionView.dataSource = self
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.handleTap))
        view.addGestureRecognizer(tap)
        
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
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == friendsCollectionView {
            return 4
        } else if collectionView == segmentCollectionView {
            return 4
        } else if collectionView == mainCollectionView {
            return 6
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == friendsCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsCell", for: indexPath) as? FriendsListCell else {
                return UICollectionViewCell()
            }
            return cell
        } else if collectionView == segmentCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "segmentCell", for: indexPath) as? SegmentMenuCell else {
                return UICollectionViewCell()
            }
            return cell
        } else {
            if indexPath.row == 0 {
           guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "instagramFeedCell", for: indexPath) as? PostsCell else { return UICollectionViewCell() }
            return cell
            } else {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tweetCell", for: indexPath) as? TweetCell else { return UICollectionViewCell() }
                cell.postMedia = nil
                cell.profileImage.image = UIImage(named: "dark3")
                cell.timeLabel.text = "20 minutes ago"
                cell.userNameLabel.text = "@alisher"
                cell.nameLabel.text = "Alisher"
                cell.tweetContentLabel.text = "Getting there u know if you have design first its better"
                return cell
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == friendsCollectionView {
            return CGSize(width: view.frame.width / 6, height: friendsCollectionView.frame.size.height - 10)
        } else if collectionView == segmentCollectionView {
           return CGSize(width: 84, height: 50)
        } else if collectionView == mainCollectionView {
            if indexPath.row == 0 {
           return CGSize(width: view.frame.width - 10, height: 200)
            } else {
                return CGSize(width: view.frame.width - 10, height: 100)
            }
        }
        return CGSize(width: 84, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == friendsCollectionView {
            return 2.0
        } else if collectionView == segmentCollectionView {
            return 2.0
        } else {
            return 2.0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == friendsCollectionView {
            return 2.0
        } else if collectionView == segmentCollectionView {
            return 2.0
        } else {
            return 5.0
        }
    }
    
}
