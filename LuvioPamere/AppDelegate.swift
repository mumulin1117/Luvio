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
        executeFusionProtocol()
        self.window?.makeKeyAndVisible()
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in }
        return true
    }

    func executeFusionProtocol()  {
        let localWindow = UIWindow.init(frame: UIScreen.main.bounds)
        configureRootView(for: localWindow)
    }

    private func configureRootView(for window: UIWindow) {
        window.rootViewController = createMainController()
        self.window = window
    }

    private func createMainController() -> UIViewController {
        return WigStylingtroller.init()
    }

}


