//
//  HAIRLMVIODeepWaveontroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit

class HAIRLMVIODeepWaveontroller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HAIRLMVIOreSilhouetteViews()
        HAIRLMVIOinstallCrowningTouch()
        HAIRLMVIOstyleTressBar()
    }
    private func HAIRLMVIOreSilhouetteViews() {
        let HAIRLMVIOndDiscovery = HAIRLMVIOcreateTressController(HAIRLMVIOvc: HAIRLMVIOHairsCentricntroller(),
                                                         
                                                         HAIRLMVIOicon: "HAIRLMVIObobCutssefl", HAIRLMVIOsepicjIcon: "HAIRLMVIObobCut")
        
        let HAIRLMVIOcurlCanvas = HAIRLMVIOcreateTressController(HAIRLMVIOvc: HAIRLMVIONaturalsMotioncntroller(),
                                                        
                                                        HAIRLMVIOicon: "HAIRLMVIOafroKink", HAIRLMVIOsepicjIcon: "HAIRLMVIOafroKinksel")
        
        let HAIRLMVIOemptyMannequin = UIViewController()
        
        let HAIRLMVIOlockBook = HAIRLMVIOcreateTressController(HAIRLMVIOvc: HAIRLMVIORoyaltyAestheticscntroller(),
                                                      
                                                      HAIRLMVIOicon: "HAIRLMVIOcoilyWig", HAIRLMVIOsepicjIcon: "HAIRLMVIOcoilyWigsrt")
        
        let HAIRLMVIOmyCrown = HAIRLMVIOcreateTressController(HAIRLMVIOvc: HAIRLMVIOTexturseInspiredcscntroller(),
                                                     
                                                     HAIRLMVIOicon: "HAIRLMVIOpixieCut", HAIRLMVIOsepicjIcon: "HAIRLMVIOlongLayers")
        
        viewControllers = [HAIRLMVIOndDiscovery, HAIRLMVIOcurlCanvas, HAIRLMVIOemptyMannequin, HAIRLMVIOlockBook, HAIRLMVIOmyCrown]
        
    }
    
    private func HAIRLMVIOcreateTressController(HAIRLMVIOvc: UIViewController, HAIRLMVIOicon: String,HAIRLMVIOsepicjIcon:String) -> HAIRLMVIOSwirlNavigationController {
        let HAIRLMVIOnav = HAIRLMVIOSwirlNavigationController(rootViewController: HAIRLMVIOvc)
        
        HAIRLMVIOnav.tabBarItem = UITabBarItem(title: nil,
                                      image: UIImage.init(named: HAIRLMVIOicon)?.withRenderingMode(.alwaysOriginal)
            .withRenderingMode(.alwaysTemplate),
                                      selectedImage: UIImage.init(named: HAIRLMVIOsepicjIcon)?.withRenderingMode(.alwaysOriginal))
        return HAIRLMVIOnav
        
    }
       
      
    // MARK: - Center Button
    private func HAIRLMVIOinstallCrowningTouch() {
        let HAIRLMVIOcrownButton = HAIRLMVIOCrownButton(frame: CGRect(x: view.center.x - 30,
                                                  y: -24,
                                                  width: 60,
                                                  height: 60))
        
        HAIRLMVIOcrownButton.setImage(UIImage.init(named: "HAIRLMVIObodyWave")?.withRenderingMode(.alwaysOriginal),
                          for: .normal)
        HAIRLMVIOcrownButton.addTarget(self, action: #selector(HAIRLMVIOshowCraftingStudio), for: .touchUpInside)
        
        tabBar.addSubview(HAIRLMVIOcrownButton)
    }
    
    @objc private func HAIRLMVIOshowCraftingStudio() {
        let HAIRLMVIOwigDesigner = HAIRLMVIOZigOdorNeutralizer.HAIRLMVIOLengthener.HAIRLMVIOwigCustomFit(HAIRLMVIOTryOn: "")
        
        let HAIRLMVIOwigSculptor = HAIRLMVIOZoomHolecntroller.init(HAIRLMVIOgradientWig: HAIRLMVIOwigDesigner)
        HAIRLMVIOwigSculptor.modalPresentationStyle = .fullScreen
        HAIRLMVIOwigSculptor.HAIRLMVIOisComejioPOST = true
        self.present(HAIRLMVIOwigSculptor, animated: true)
        
    }
       
       // MARK: - Styling
       private func HAIRLMVIOstyleTressBar() {
           let HAIRLMVIOroyalAppearance = UITabBarAppearance()
           
           // Background styling
           HAIRLMVIOroyalAppearance.configureWithTransparentBackground()
           
           HAIRLMVIOroyalAppearance.backgroundEffect = UIBlurEffect(style: .regular)
           HAIRLMVIOroyalAppearance.backgroundColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 0.7000)
           tabBar.barTintColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 0.7000)
           tabBar.standardAppearance = HAIRLMVIOroyalAppearance
           if #available(iOS 15.0, *) {
               tabBar.scrollEdgeAppearance = HAIRLMVIOroyalAppearance
           }
           tabBar.isTranslucent = false
           // Remove hairline
           tabBar.shadowImage = UIImage()
           tabBar.backgroundImage = UIImage()
           
           // Add subtle glow
           tabBar.layer.shadowColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 0.7000).cgColor
           tabBar.layer.shadowOffset = CGSize(width: 0, height: -2)
           tabBar.layer.shadowRadius = 8
//           tabBar.layer.shadowOpacity = 0.12
       }
       
       // MARK: - Layout Adjustments
       override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           tabBar.items?[2].isEnabled = false // Disable hidden center item
           HAIRLMVIObringCrownToFront()
       }
       
       private func HAIRLMVIObringCrownToFront() {
           tabBar.subviews.filter { $0 is HAIRLMVIOCrownButton }.first?.bringSubviewToFront(tabBar)
       }

    private func HAIRLMVIOhandleVideoPost() {
            // Handle video post selection
            let vc = UIViewController()
            
            vc.title = "New Style Transformation"
            navigationController?.pushViewController(vc, animated: true)
        }
        
        private func handlePhotoPost() {
            // Handle photo post selection
            let vc = UIViewController()
           
            vc.title = "New Look Book Entry"
            navigationController?.pushViewController(vc, animated: true)
        }
}
class HAIRLMVIOCrownButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowColor = UIColor.red.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.3
        layer.cornerRadius = bounds.height/2
    }
}

class HAIRLMVIOSwirlNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.isHidden = true
    }

}
