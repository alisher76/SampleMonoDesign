//
//  CreateMonocleAccountVC.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/16/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class CreateMonocleAccountVC: UIViewController {

    @IBOutlet weak var createMonocleUserView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRescognizer = UITapGestureRecognizer()
        gestureRescognizer.addTarget(self, action: #selector(LoginVC.tapToClose(_:)))
        view.addGestureRecognizer(gestureRescognizer)
        
        createMonocleUserView.layer.shadowOpacity = 1.0
        createMonocleUserView.layer.shadowColor = UIColor.black.cgColor
        createMonocleUserView.layer.shadowRadius = CGFloat(4.0)
        createMonocleUserView.clipsToBounds = true
        createMonocleUserView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func tapToClose(_ gestureRecognizer: UITapGestureRecognizer) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    

}
