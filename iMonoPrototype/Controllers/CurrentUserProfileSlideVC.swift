//
//  CurrentUserProfileSlideVC.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class CurrentUserProfileSlideVC: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.revealViewController().rearViewRevealWidth = self.view.frame.width - 30
    }
    
    
}

extension CurrentUserProfileSlideVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as? settingsCell else {
            return UITableViewCell()
        }
        cell.backgroundColor = UIColor.clear
        return cell
    }
}
