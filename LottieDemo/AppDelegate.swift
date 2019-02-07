//
//  AppDelegate.swift
//  LottieDemo
//
//  Created by Ljubisa Katana on 2/7/19.
//  Copyright © 2019 Ljubisa Katana. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureRootController()
        
        return true
    }
}

private extension AppDelegate {
    func configureRootController() {
        let vc = UINavigationController(rootViewController: FirstController())
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}

