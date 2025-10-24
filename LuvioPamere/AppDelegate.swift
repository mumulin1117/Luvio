//
//  AppDelegate.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit
import FBSDKCoreKit
import AppTrackingTransparency
import AdjustSdk
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var edgeComputingD:String = ""
//    产品名称：Luvio
//    应用识别码：avs6tg9gnda8
//    事件名称及识别码：
//    Install: xxyaor
//    purchase: ks11m4
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


extension AppDelegate{
    
   
    
    
  
    func rayTracingCores() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
extension AppDelegate{
    
   
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "avs6tg9gnda8",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "xxyaor")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
}
