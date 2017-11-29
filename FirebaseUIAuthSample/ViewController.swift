//
//  ViewController.swift
//  FirebaseUIAuthSample
//
//  Created by Masahiko Sato on 2017/11/29.
//  Copyright © 2017年 Masahiko Sato. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuthUI
import FirebaseGoogleAuthUI


class ViewController: UIViewController {
    lazy var authUI: FUIAuth = {
        let authUI = FUIAuth.defaultAuthUI()
        authUI?.delegate = self
        authUI?.providers = [
            FUIGoogleAuth()
        ]

        return authUI!
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func didTapSiginButton(_ sender: Any) {
        present(authUI.authViewController(), animated: true, completion: nil)
    }
}


extension ViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        print("succeed in signin")
    }
}

