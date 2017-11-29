//
//  AppDelegate.swift
//  FirebaseUIAuthSample
//
//  Created by Masahiko Sato on 2017/11/29.
//  Copyright © 2017年 Masahiko Sato. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuthUI
import TwitterKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FIRApp.configure()
        
        Twitter.sharedInstance().start(
            withConsumerKey: Env.twitterAPIKey,
            consumerSecret: Env.twitterAPISecret
        )
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let sourceApplication = options[UIApplicationOpenURLOptionsKey.sourceApplication] as! String?
        if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false {
            return true
        }
        return false
    }
}

