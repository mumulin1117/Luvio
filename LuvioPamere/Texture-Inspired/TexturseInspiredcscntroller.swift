//
//  TexturseInspiredcscntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class TexturseInspiredcscntroller: UIViewController {
    @IBOutlet weak var errorVierw: UITextField!
    @IBOutlet weak var slightly: UIImageView!
    
    @IBOutlet weak var wigBliss: UILabel!
    
    @IBOutlet weak var lalal: UIButton!
    
    @IBOutlet weak var wigChic: UILabel!
    
    @IBOutlet weak var bububu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.bleachingKnots(radio: 15)
        wigBeliever()
       
        bububu.titleLabel?.textAlignment = .center

        sinder.layer.masksToBounds = true
    }
    
    private func wigBeliever()  {
        lalal.titleLabel?.numberOfLines = 0
        lalal.titleLabel?.textAlignment = .center
        
        bububu.titleLabel?.numberOfLines = 0
        sinder.layer.cornerRadius = 10
    }

    @IBOutlet weak var sinder: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        wigBliss.text = UserDefaults.standard.object(forKey: "wigCreator") as? String
        
        wigChic.text = UIButton.alternateStrands("UrIaDx:u ") + "\(UserDefaults.standard.object(forKey: "wigPioneer") as? Int ?? 0)"
        slightly.manipulation(UserDefaults.standard.object(forKey: "wigInnovator") as? String ?? "")
        
    }
    
    @IBAction func wigEdgy(_ sender: UIButton) {
        var readugin:String = ""
        switch sender.tag {
            
            
        case 56:
            readugin = ZigOdorNeutralizer.wigRepair.wigCustomFit(TryOn: "")
        case 57:
            readugin = ZigOdorNeutralizer.Alteration.wigCustomFit(TryOn: "")
        case 58:
            readugin = ZigOdorNeutralizer.Ventilation.wigCustomFit(TryOn: "")
        case 59:
            readugin = ZigOdorNeutralizer.Comfort.wigCustomFit(TryOn: "")
        case 60:
            readugin = ZigOdorNeutralizer.Tailoring.wigCustomFit(TryOn: "")
        default: break
            
            
        }
        
        
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: readugin)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    func bleachingKnots(radio:CGFloat)  {
        slightly.layer.cornerRadius = radio
        slightly.isUserInteractionEnabled = true
        slightly.layer.masksToBounds = true
    }

}
