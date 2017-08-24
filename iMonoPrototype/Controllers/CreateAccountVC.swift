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
        
        createAccountView.layer.shadowOpacity = 1.0
        createAccountView.layer.shadowColor = UIColor.black.cgColor
        createAccountView.layer.shadowRadius = CGFloat(4.0)
        createAccountView.clipsToBounds = true
        createAccountView.backgroundColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
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
        
        let createMonocleAccountVC = CreateMonocleAccountVC()
        createMonocleAccountVC.modalPresentationStyle = .custom
        self.present(createMonocleAccountVC, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let loginVC = LoginVC()
        loginVC.view.alpha = 1.0
    }
    
    @IBAction func instagramButtonTapped(_ sender: Any) {
        
    }
}
