//
//  AppDelegate.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController =  WigStylingtroller.init()
        self.window?.makeKeyAndVisible()
        return true
    }

}


