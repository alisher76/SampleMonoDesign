//
//  LoginVC.swift
//  iMonoPrototype
//
//  Created by Alisher Abdukarimov on 8/16/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var tapTocloseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRescognizer = UITapGestureRecognizer()
        gestureRescognizer.addTarget(self, action: #selector(LoginVC.tapToClose(_:)))
        view.addGestureRecognizer(gestureRescognizer)
        tapTocloseView.layer.shadowOpacity = 1.0
        tapTocloseView.layer.shadowColor = UIColor.black.cgColor
        tapTocloseView.layer.shadowRadius = CGFloat(4.0)
        tapTocloseView.clipsToBounds = true
        tapTocloseView.backgroundColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let createAccountVC = CreateAccountVC()
        createAccountVC.modalPresentationStyle = .custom
        self.present(createAccountVC, animated: true, completion: nil)
    }
    // To Do: Manage the dismiss action! UIView
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        
        let createAccountVC = CreateAccountVC()
        createAccountVC.modalPresentationStyle = .custom
        self.present(createAccountVC, animated: true, completion: nil)
    }
    
    @objc func tapToClose(_ gestureRecognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

}
