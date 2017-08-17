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
        tapTocloseView.backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let createAccountVC = CreateAccountVC()
        createAccountVC.modalPresentationStyle = .custom
        self.present(createAccountVC, animated: true, completion: nil)
    }
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.2) {
            self.view.alpha = 0.0
        }
        let createAccountVC = CreateAccountVC()
        createAccountVC.modalPresentationStyle = .custom
        self.present(createAccountVC, animated: true, completion: nil)
    }
    
    @objc func tapToClose(_ gestureRecognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

}
