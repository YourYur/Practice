//
//  AppDelegate.swift
//  RocketMan
//
//  Created by 허유라 on 21/07/2020.
//  Copyright © 2020 Yura. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.rootViewController = FriendListViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

