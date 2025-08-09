//
//  WigStyling Controller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit
//launch
class WigStylingtroller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bai = UIImageView.init()
        bai.image = UIImage(named: "humanHair")
        bai.frame = UIScreen.main.bounds
        bai.layer.masksToBounds = true
        bai.contentMode = .scaleAspectFill
        self.view.addSubview(bai)
    }
    
    func heatDefiant() -> UIImageView {
        let bai = UIImageView.init()
        bai.image = UIImage(named: "humanHair")
        bai.frame = UIScreen.main.bounds
        bai.layer.masksToBounds = true
        bai.contentMode = .scaleAspectFill
        return bai
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = ifextiser() ? DeepWaveontroller.init() : FrontalWigcscntroller.init()
        
    }
    
    
    func ifextiser() -> Bool {
        let Fioso = UserDefaults.standard.object(forKey: "wigBeliever") as? String
        return Fioso != nil
    }
    
    
    
    
}
