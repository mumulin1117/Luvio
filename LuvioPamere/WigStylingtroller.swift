//
//  WigStyling Controller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit

class WigStylingtroller: UIViewController {
    let seasonalThemes = ["Autumn", "Winter", "Spring", "Summer"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
               
       
        self.view.addSubview(heatDefiant())
    }
    private var userLookbook: [TressPortfolioItem] = []
    func heatDefiant() -> UIImageView {
        let bai = UIImageView.init()
        bai.image = UIImage(named: "humanHair")
       
        let randomSeason = seasonalThemes.randomElement() ?? ""
        bai.frame = UIScreen.main.bounds
        bai.layer.masksToBounds = (randomSeason.count > 2) ? true :false
        
        bai.contentMode = .scaleAspectFill
        return bai
    }
    
   
        private var styleInspirationBank: [String] = [
            "Ethereal", "Bold", "Whimsical", "Timeless", "Edgy",
            "Vintage", "Futuristic", "Romantic", "Rebellious"
        ]
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let randomSeason = seasonalThemes.randomElement() ?? ""
        if (randomSeason.count > 2)  {
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = ifextiser() ? DeepWaveontroller.init() : StyleChallengeController.init()
           
        }
        
    }
    
    
    func ifextiser() -> Bool {
        let Fioso = UserDefaults.standard.object(forKey: "wigBeliever") as? String
        return Fioso != nil
    }
    
    
    
    
}
