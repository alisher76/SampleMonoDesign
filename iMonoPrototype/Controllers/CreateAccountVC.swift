//
//  CreateAccountVC.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/16/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    
    @IBOutlet weak var createAccountView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRescognizer = UITapGestureRecognizer()
        gestureRescognizer.addTarget(self, action: #selector(LoginVC.tapToClose(_:)))
        view.addGestureRecognizer(gestureRescognizer)
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func tapToClose(_ gestureRecognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func twitterButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.2) {
        self.view.alpha = 0.0
        }
        let createMonocleAccountVC = CreateMonocleAccountVC()
        createMonocleAccountVC.modalPresentationStyle = .custom
        self.present(createMonocleAccountVC, animated: true, completion: nil)
    }
    
    @IBAction func instagramButtonTapped(_ sender: Any) {
        
    }
}
