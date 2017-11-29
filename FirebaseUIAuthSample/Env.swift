//
//  Env.swift
//  FirebaseUIAuthSample
//
//  Created by Masahiko Sato on 2017/11/29.
//  Copyright © 2017年 Masahiko Sato. All rights reserved.
//

import Foundation

struct Env {
    fileprivate static let plist = NSDictionary(contentsOfFile: Bundle.main.path(forResource: "env", ofType: "plist")!)!

    
    static var twitterAPIKey: String {
        return plist["TWITTER_API_KEY"] as! String
    }
    
    static var twitterAPISecret: String {
        return plist["TWITTER_API_SECRET"] as! String
    }
}
