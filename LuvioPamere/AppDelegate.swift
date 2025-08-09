//
//  AppDelegate.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        fusionBond()
        self.window?.makeKeyAndVisible()
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in
            
        }
        return true
    }

    func fusionBond()  {
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController =  WigStylingtroller.init()
    }
}


