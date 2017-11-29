//
//  AppDelegate.swift
//  FirebaseUIAuthSample
//
//  Created by Masahiko Sato on 2017/11/29.
//  Copyright © 2017年 Masahiko Sato. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FIRApp.configure()
        
        return true
    }
}

